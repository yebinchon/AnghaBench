; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_proc_wkilled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_proc_wkilled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_WKILLED = common dso_local global i32 0, align 4
@P_INMEM = common dso_local global i32 0, align 4
@P_SWAPPINGIN = common dso_local global i32 0, align 4
@proc0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_wkilled(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %3 = load %struct.proc*, %struct.proc** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %3, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @P_WKILLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @P_WKILLED, align 4
  %14 = load %struct.proc*, %struct.proc** %2, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @P_INMEM, align 4
  %22 = load i32, i32* @P_SWAPPINGIN, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = call i32 @wakeup(i32* @proc0)
  br label %28

28:                                               ; preds = %26, %12
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
