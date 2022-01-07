; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_swapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_swapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i32 }

@allproc_lock = common dso_local global i32 0, align 4
@proc0 = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"swapin\00", align 1
@SWAPIN_INTERVAL = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PRS_NORMAL = common dso_local global i64 0, align 8
@P_INMEM = common dso_local global i32 0, align 4
@P_SWAPPINGOUT = common dso_local global i32 0, align 4
@P_SWAPPINGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swapper() #0 {
  %1 = alloca %struct.proc*, align 8
  br label %2

2:                                                ; preds = %39, %0
  %3 = call i32 @sx_slock(i32* @allproc_lock)
  %4 = call i32 (...) @swapper_wkilled_only()
  %5 = call %struct.proc* @swapper_selector(i32 %4)
  store %struct.proc* %5, %struct.proc** %1, align 8
  %6 = call i32 @sx_sunlock(i32* @allproc_lock)
  %7 = load %struct.proc*, %struct.proc** %1, align 8
  %8 = icmp eq %struct.proc* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @PVM, align 4
  %11 = load i32, i32* @SWAPIN_INTERVAL, align 4
  %12 = call i32 @tsleep(i32* @proc0, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.proc*, %struct.proc** %1, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %14, i32 %15)
  %17 = load %struct.proc*, %struct.proc** %1, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PRS_NORMAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.proc*, %struct.proc** %1, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @P_INMEM, align 4
  %27 = load i32, i32* @P_SWAPPINGOUT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @P_SWAPPINGIN, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.proc*, %struct.proc** %1, align 8
  %35 = call i32 @faultin(%struct.proc* %34)
  br label %36

36:                                               ; preds = %33, %22, %13
  %37 = load %struct.proc*, %struct.proc** %1, align 8
  %38 = call i32 @PROC_UNLOCK(%struct.proc* %37)
  br label %39

39:                                               ; preds = %36, %9
  br label %2
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.proc* @swapper_selector(i32) #1

declare dso_local i32 @swapper_wkilled_only(...) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @faultin(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
