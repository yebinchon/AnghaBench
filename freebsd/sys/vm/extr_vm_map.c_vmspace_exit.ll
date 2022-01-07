; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32 }
%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.vmspace* }

@vmspace0 = common dso_local global %struct.vmspace zeroinitializer, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmspace_exit(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  %11 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  store %struct.vmspace* %11, %struct.vmspace** %4, align 8
  %12 = call i32 @atomic_add_int(i32* getelementptr inbounds (%struct.vmspace, %struct.vmspace* @vmspace0, i32 0, i32 0), i32 1)
  %13 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %14 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load %struct.vmspace*, %struct.vmspace** %21, align 8
  %23 = icmp ne %struct.vmspace* %22, @vmspace0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.proc*, %struct.proc** %5, align 8
  %26 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %25)
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  store %struct.vmspace* @vmspace0, %struct.vmspace** %28, align 8
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %29)
  %31 = load %struct.thread*, %struct.thread** %2, align 8
  %32 = call i32 @pmap_activate(%struct.thread* %31)
  br label %33

33:                                               ; preds = %24, %19, %16
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %36 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %35, i32 0, i32 0
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @atomic_fcmpset_int(i32* %36, i32* %3, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %16, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 0
  %48 = load %struct.vmspace*, %struct.vmspace** %47, align 8
  %49 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %50 = icmp ne %struct.vmspace* %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.proc*, %struct.proc** %5, align 8
  %53 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %52)
  %54 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %55 = load %struct.proc*, %struct.proc** %5, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 0
  store %struct.vmspace* %54, %struct.vmspace** %56, align 8
  %57 = load %struct.proc*, %struct.proc** %5, align 8
  %58 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %57)
  %59 = load %struct.thread*, %struct.thread** %2, align 8
  %60 = call i32 @pmap_activate(%struct.thread* %59)
  br label %61

61:                                               ; preds = %51, %45
  %62 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %63 = call i32 @vmspace_pmap(%struct.vmspace* %62)
  %64 = call i32 @pmap_remove_pages(i32 %63)
  %65 = load %struct.proc*, %struct.proc** %5, align 8
  %66 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %65)
  %67 = load %struct.proc*, %struct.proc** %5, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  store %struct.vmspace* @vmspace0, %struct.vmspace** %68, align 8
  %69 = load %struct.proc*, %struct.proc** %5, align 8
  %70 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %69)
  %71 = load %struct.thread*, %struct.thread** %2, align 8
  %72 = call i32 @pmap_activate(%struct.thread* %71)
  %73 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %74 = call i32 @vmspace_dofree(%struct.vmspace* %73)
  br label %75

75:                                               ; preds = %61, %42
  ret void
}

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @PROC_VMSPACE_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_VMSPACE_UNLOCK(%struct.proc*) #1

declare dso_local i32 @pmap_activate(%struct.thread*) #1

declare dso_local i32 @atomic_fcmpset_int(i32*, i32*, i32) #1

declare dso_local i32 @pmap_remove_pages(i32) #1

declare dso_local i32 @vmspace_pmap(%struct.vmspace*) #1

declare dso_local i32 @vmspace_dofree(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
