; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_vccq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_vccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_ivars = type { i32, i32 }

@vccq_120 = common dso_local global i32 0, align 4
@vccq_180 = common dso_local global i32 0, align 4
@vccq_330 = common dso_local global i32 0, align 4
@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_ivars*, i32)* @mmc_set_vccq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_set_vccq(%struct.mmc_softc* %0, %struct.mmc_ivars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_softc*, align 8
  %6 = alloca %struct.mmc_ivars*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %5, align 8
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %9 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %8, i32 0, i32 1
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @isset(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @vccq_120, align 4
  %18 = call i32 @mmcbr_set_vccq(i32 %16, i32 %17)
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %21 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @isset(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @vccq_180, align 4
  %30 = call i32 @mmcbr_set_vccq(i32 %28, i32 %29)
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @vccq_330, align 4
  %36 = call i32 @mmcbr_set_vccq(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mmcbr_switch_vccq(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @mmcbr_set_vccq(i32, i32) #1

declare dso_local i64 @mmcbr_switch_vccq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
