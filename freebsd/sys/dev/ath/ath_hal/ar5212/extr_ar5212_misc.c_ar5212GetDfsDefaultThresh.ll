; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetDfsDefaultThresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetDfsDefaultThresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@AR5413_DFS_FIRPWR = common dso_local global i32 0, align 4
@AR5413_DFS_RRSSI = common dso_local global i32 0, align 4
@AR5413_DFS_HEIGHT = common dso_local global i32 0, align 4
@AR5413_DFS_PRSSI = common dso_local global i32 0, align 4
@AR5413_DFS_INBAND = common dso_local global i32 0, align 4
@AR5413_DFS_RELPWR = common dso_local global i64 0, align 8
@AR5413_DFS_RELSTEP = common dso_local global i64 0, align 8
@AR5413_DFS_MAXLEN = common dso_local global i64 0, align 8
@AR5212_DFS_FIRPWR = common dso_local global i32 0, align 4
@AR5212_DFS_RRSSI = common dso_local global i32 0, align 4
@AR5212_DFS_HEIGHT = common dso_local global i32 0, align 4
@AR5212_DFS_PRSSI = common dso_local global i32 0, align 4
@AR5212_DFS_INBAND = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212GetDfsDefaultThresh(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = call i64 @IS_5413(%struct.ath_hal* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load i32, i32* @AR5413_DFS_FIRPWR, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @AR5413_DFS_RRSSI, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @AR5413_DFS_HEIGHT, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @AR5413_DFS_PRSSI, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AR5413_DFS_INBAND, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @AR5413_DFS_RELPWR, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @AR5413_DFS_RELSTEP, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @AR5413_DFS_MAXLEN, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  br label %75

43:                                               ; preds = %2
  %44 = load i32, i32* @AR5212_DFS_FIRPWR, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @AR5212_DFS_RRSSI, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @AR5212_DFS_HEIGHT, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @AR5212_DFS_PRSSI, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @AR5212_DFS_INBAND, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %43, %8
  %76 = load i32, i32* @AH_TRUE, align 4
  ret i32 %76
}

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
