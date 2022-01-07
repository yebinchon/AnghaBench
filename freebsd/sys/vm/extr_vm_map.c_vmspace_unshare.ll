; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_unshare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.proc* }
%struct.proc = type { %struct.vmspace*, i32 }
%struct.vmspace = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmspace_unshare(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  store %struct.vmspace* %9, %struct.vmspace** %4, align 8
  %10 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %11 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %16 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %17 = call %struct.vmspace* @vmspace_fork(%struct.vmspace* %16, i64* %6)
  store %struct.vmspace* %17, %struct.vmspace** %5, align 8
  %18 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %19 = icmp eq %struct.vmspace* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.proc*, %struct.proc** %3, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @swap_reserve_by_cred(i64 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %31 = call i32 @vmspace_free(%struct.vmspace* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load %struct.proc*, %struct.proc** %3, align 8
  %35 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %34)
  %36 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %37 = load %struct.proc*, %struct.proc** %3, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  store %struct.vmspace* %36, %struct.vmspace** %38, align 8
  %39 = load %struct.proc*, %struct.proc** %3, align 8
  %40 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %39)
  %41 = load %struct.proc*, %struct.proc** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.proc*, %struct.proc** %43, align 8
  %45 = icmp eq %struct.proc* %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %48 = call i32 @pmap_activate(%struct.TYPE_3__* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %51 = call i32 @vmspace_free(%struct.vmspace* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %29, %20, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.vmspace* @vmspace_fork(%struct.vmspace*, i64*) #1

declare dso_local i32 @swap_reserve_by_cred(i64, i32) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

declare dso_local i32 @PROC_VMSPACE_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_VMSPACE_UNLOCK(%struct.proc*) #1

declare dso_local i32 @pmap_activate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
