; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.proc* }
%struct.proc = type { %struct.vmspace* }
%struct.vmspace = type { i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@TDP_EXECVMSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vmspace_exec recursed\00", align 1
@pmap_pinit = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmspace_exec(%struct.proc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmspace*, align 8
  %9 = alloca %struct.vmspace*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.proc*, %struct.proc** %5, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load %struct.vmspace*, %struct.vmspace** %11, align 8
  store %struct.vmspace* %12, %struct.vmspace** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TDP_EXECVMSPC, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @pmap_pinit, align 4
  %24 = call %struct.vmspace* @vmspace_alloc(i32 %21, i32 %22, i32 %23)
  store %struct.vmspace* %24, %struct.vmspace** %9, align 8
  %25 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %26 = icmp eq %struct.vmspace* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %3
  %30 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %31 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %34 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.proc*, %struct.proc** %5, align 8
  %36 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %35)
  %37 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %38 = load %struct.proc*, %struct.proc** %5, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 0
  store %struct.vmspace* %37, %struct.vmspace** %39, align 8
  %40 = load %struct.proc*, %struct.proc** %5, align 8
  %41 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %40)
  %42 = load %struct.proc*, %struct.proc** %5, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.proc*, %struct.proc** %44, align 8
  %46 = icmp eq %struct.proc* %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %49 = call i32 @pmap_activate(%struct.TYPE_3__* %48)
  br label %50

50:                                               ; preds = %47, %29
  %51 = load i32, i32* @TDP_EXECVMSPC, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %27
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmspace* @vmspace_alloc(i32, i32, i32) #1

declare dso_local i32 @PROC_VMSPACE_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_VMSPACE_UNLOCK(%struct.proc*) #1

declare dso_local i32 @pmap_activate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
