; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@SBT_1S = common dso_local global i32 0, align 4
@lim_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lim_fork(%struct.proc* %0, %struct.proc* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.proc* %1, %struct.proc** %4, align 8
  %5 = load %struct.proc*, %struct.proc** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %5, i32 %6)
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.proc*, %struct.proc** %3, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @lim_hold(i32 %13)
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = call i32 @callout_init_mtx(i32* %18, i32* %20, i32 0)
  %22 = load %struct.proc*, %struct.proc** %3, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RLIM_INFINITY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load i32, i32* @SBT_1S, align 4
  %31 = load i32, i32* @lim_cb, align 4
  %32 = load %struct.proc*, %struct.proc** %4, align 8
  %33 = call i32 @C_PREL(i32 1)
  %34 = call i32 @callout_reset_sbt(i32* %29, i32 %30, i32 0, i32 %31, %struct.proc* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @lim_hold(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.proc*, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
