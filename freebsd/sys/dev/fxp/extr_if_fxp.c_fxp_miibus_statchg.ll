; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i32, i64, i8*, i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@FXP_FLAG_CU_RESUME_BUG = common dso_local global i32 0, align 4
@FXP_REV_82557 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fxp_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.fxp_softc*
  store %struct.fxp_softc* %8, %struct.fxp_softc** %3, align 8
  %9 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.mii_data*
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = icmp eq %struct.mii_data* %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @if_getdrvflags(i8* %23)
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFM_AVALID, align 4
  %33 = load i32, i32* @IFM_ACTIVE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @IFM_AVALID, align 4
  %37 = load i32, i32* @IFM_ACTIVE, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28, %22, %19, %1
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IFM_SUBTYPE(i32 %44)
  %46 = load i64, i64* @IFM_10_T, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %50 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FXP_FLAG_CU_RESUME_BUG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %57 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %61

58:                                               ; preds = %48, %41
  %59 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %60 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %63 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FXP_REV_82557, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %74

68:                                               ; preds = %61
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = call i32 @if_setdrvflagbits(i8* %69, i32 0, i32 %70)
  %72 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %73 = call i32 @fxp_init_body(%struct.fxp_softc* %72, i32 0)
  br label %74

74:                                               ; preds = %68, %67, %40
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @if_getdrvflags(i8*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @if_setdrvflagbits(i8*, i32, i32) #1

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
