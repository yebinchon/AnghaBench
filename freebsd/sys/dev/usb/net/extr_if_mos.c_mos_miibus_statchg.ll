; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32 }
%struct.mii_data = type { i32 }

@MOS_CTL = common dso_local global i32 0, align 4
@MOS_CTL_TX_ENB = common dso_local global i32 0, align 4
@MOS_CTL_RX_ENB = common dso_local global i32 0, align 4
@MOS_FRAME_DROP_CNT = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@MOS_CTL_FDX_ENB = common dso_local global i32 0, align 4
@MOS_CTL_SPEEDSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"media change failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mos_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.mos_softc* @device_get_softc(i32 %8)
  store %struct.mos_softc* %9, %struct.mos_softc** %3, align 8
  %10 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %11 = call %struct.mii_data* @GET_MII(%struct.mos_softc* %10)
  store %struct.mii_data* %11, %struct.mii_data** %4, align 8
  %12 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_owned(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %19 = call i32 @MOS_LOCK(%struct.mos_softc* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %22 = load i32, i32* @MOS_CTL, align 4
  %23 = call i32 @mos_reg_read_1(%struct.mos_softc* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @MOS_CTL_TX_ENB, align 4
  %25 = load i32, i32* @MOS_CTL_RX_ENB, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %31 = load i32, i32* @MOS_CTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mos_reg_write_1(%struct.mos_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %35 = load i32, i32* @MOS_FRAME_DROP_CNT, align 4
  %36 = call i32 @mos_reg_write_1(%struct.mos_softc* %34, i32 %35, i32 0)
  %37 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFM_GMASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @IFM_FDX, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i32, i32* @MOS_CTL_FDX_ENB, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %20
  %49 = load i32, i32* @MOS_CTL_FDX_ENB, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %55 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IFM_SUBTYPE(i32 %56)
  switch i32 %57, label %67 [
    i32 129, label %58
    i32 128, label %62
  ]

58:                                               ; preds = %53
  %59 = load i32, i32* @MOS_CTL_SPEEDSEL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load i32, i32* @MOS_CTL_SPEEDSEL, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %53, %62, %58
  %68 = load i32, i32* @MOS_CTL_TX_ENB, align 4
  %69 = load i32, i32* @MOS_CTL_RX_ENB, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %74 = load i32, i32* @MOS_CTL, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @mos_reg_write_1(%struct.mos_softc* %73, i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %67
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %86 = call i32 @MOS_UNLOCK(%struct.mos_softc* %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local %struct.mos_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.mos_softc*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @MOS_LOCK(%struct.mos_softc*) #1

declare dso_local i32 @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

declare dso_local i32 @MOS_UNLOCK(%struct.mos_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
