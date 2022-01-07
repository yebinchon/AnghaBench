; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz9031_load_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz9031_load_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MII_KSZ9031_CONTROL_PAD_SKEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"txen-skew-ps\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rxdv-skew-ps\00", align 1
@MII_KSZ9031_RX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"rxd0-skew-ps\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rxd1-skew-ps\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rxd2-skew-ps\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rxd3-skew-ps\00", align 1
@MII_KSZ9031_TX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"txd0-skew-ps\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"txd1-skew-ps\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"txd2-skew-ps\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"txd3-skew-ps\00", align 1
@MII_KSZ9031_CLOCK_PAD_SKEW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"rxc-skew-ps\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"txc-skew-ps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i32)* @ksz9031_load_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9031_load_values(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MII_KSZ9031_CONTROL_PAD_SKEW, align 4
  %8 = call i32 @ksz90x1_load_values(%struct.mii_softc* %5, i32 %6, i32 2, i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 15, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 15, i32 4, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0)
  %9 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MII_KSZ9031_RX_DATA_PAD_SKEW, align 4
  %12 = call i32 @ksz90x1_load_values(%struct.mii_softc* %9, i32 %10, i32 2, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 15, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 15, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 15, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 15, i32 12)
  %13 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MII_KSZ9031_TX_DATA_PAD_SKEW, align 4
  %16 = call i32 @ksz90x1_load_values(%struct.mii_softc* %13, i32 %14, i32 2, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 15, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 15, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 15, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 15, i32 12)
  %17 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MII_KSZ9031_CLOCK_PAD_SKEW, align 4
  %20 = call i32 @ksz90x1_load_values(%struct.mii_softc* %17, i32 %18, i32 2, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 31, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 31, i32 5, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0)
  ret void
}

declare dso_local i32 @ksz90x1_load_values(%struct.mii_softc*, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
