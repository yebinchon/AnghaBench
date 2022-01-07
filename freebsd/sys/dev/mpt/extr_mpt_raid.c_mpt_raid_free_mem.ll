; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_free_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_raid_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, %struct.mpt_raid_volume*, %struct.mpt_raid_volume*, %struct.mpt_raid_volume*, %struct.mpt_raid_volume* }
%struct.mpt_raid_volume = type { %struct.mpt_raid_volume* }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt_raid_free_mem(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  %3 = alloca %struct.mpt_raid_volume*, align 8
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %5, i32 0, i32 5
  %7 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %6, align 8
  %8 = icmp ne %struct.mpt_raid_volume* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %17, i32 0, i32 5
  %19 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %19, i64 %21
  store %struct.mpt_raid_volume* %22, %struct.mpt_raid_volume** %3, align 8
  %23 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %23, i32 0, i32 0
  %25 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %24, align 8
  %26 = icmp ne %struct.mpt_raid_volume* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %3, align 8
  %29 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %28, i32 0, i32 0
  %30 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %29, align 8
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(%struct.mpt_raid_volume* %30, i32 %31)
  %33 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %3, align 8
  %34 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %33, i32 0, i32 0
  store %struct.mpt_raid_volume* null, %struct.mpt_raid_volume** %34, align 8
  br label %35

35:                                               ; preds = %27, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %40, i32 0, i32 5
  %42 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %41, align 8
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = call i32 @free(%struct.mpt_raid_volume* %42, i32 %43)
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 5
  store %struct.mpt_raid_volume* null, %struct.mpt_raid_volume** %46, align 8
  br label %47

47:                                               ; preds = %39, %1
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %48, i32 0, i32 4
  %50 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %49, align 8
  %51 = icmp ne %struct.mpt_raid_volume* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %53, i32 0, i32 4
  %55 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %54, align 8
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = call i32 @free(%struct.mpt_raid_volume* %55, i32 %56)
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %58, i32 0, i32 4
  store %struct.mpt_raid_volume* null, %struct.mpt_raid_volume** %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %61, i32 0, i32 3
  %63 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %62, align 8
  %64 = icmp ne %struct.mpt_raid_volume* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %66, i32 0, i32 3
  %68 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %67, align 8
  %69 = load i32, i32* @M_DEVBUF, align 4
  %70 = call i32 @free(%struct.mpt_raid_volume* %68, i32 %69)
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %72 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %71, i32 0, i32 3
  store %struct.mpt_raid_volume* null, %struct.mpt_raid_volume** %72, align 8
  br label %73

73:                                               ; preds = %65, %60
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %74, i32 0, i32 2
  %76 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %75, align 8
  %77 = icmp ne %struct.mpt_raid_volume* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %80 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %79, i32 0, i32 2
  %81 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %80, align 8
  %82 = load i32, i32* @M_DEVBUF, align 4
  %83 = call i32 @free(%struct.mpt_raid_volume* %81, i32 %82)
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %84, i32 0, i32 2
  store %struct.mpt_raid_volume* null, %struct.mpt_raid_volume** %85, align 8
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %90 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  ret void
}

declare dso_local i32 @free(%struct.mpt_raid_volume*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
