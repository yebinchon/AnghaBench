; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_stopprofclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_stopprofclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_PROFIL = common dso_local global i32 0, align 4
@P_STOPPROF = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stopprof\00", align 1
@time_lock = common dso_local global i32 0, align 4
@profprocs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stopprofclock(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %3 = load %struct.proc*, %struct.proc** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %3, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @P_PROFIL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.proc*, %struct.proc** %2, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* @P_STOPPROF, align 4
  %25 = load %struct.proc*, %struct.proc** %2, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.proc*, %struct.proc** %2, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 1
  %31 = load %struct.proc*, %struct.proc** %2, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 2
  %33 = load i32, i32* @PPAUSE, align 4
  %34 = call i32 @msleep(i64* %30, i32* %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %18

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %12
  %37 = load %struct.proc*, %struct.proc** %2, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @P_PROFIL, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %59

44:                                               ; preds = %36
  %45 = load i32, i32* @P_PROFIL, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.proc*, %struct.proc** %2, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = call i32 @mtx_lock(i32* @time_lock)
  %52 = load i64, i64* @profprocs, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* @profprocs, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @cpu_stopprofclock()
  br label %57

57:                                               ; preds = %55, %44
  %58 = call i32 @mtx_unlock(i32* @time_lock)
  br label %59

59:                                               ; preds = %43, %57, %1
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cpu_stopprofclock(...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
