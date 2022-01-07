; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported media %u\0A\00", align 1
@XAE_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xae_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xae_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.xae_softc* @device_get_softc(i32 %6)
  store %struct.xae_softc* %7, %struct.xae_softc** %3, align 8
  %8 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %9 = call i32 @XAE_ASSERT_LOCKED(%struct.xae_softc* %8)
  %10 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %10, i32 0, i32 1
  %12 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFM_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %27 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IFM_SUBTYPE(i32 %28)
  switch i32 %29, label %39 [
    i32 131, label %30
    i32 132, label %30
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

30:                                               ; preds = %25, %25
  %31 = load i32, i32* @SPEED_1000, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %25
  %33 = load i32, i32* @SPEED_100, align 4
  store i32 %33, i32* %5, align 4
  br label %48

34:                                               ; preds = %25
  %35 = load i32, i32* @SPEED_10, align 4
  store i32 %35, i32* %5, align 4
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %53

39:                                               ; preds = %25
  %40 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IFM_SUBTYPE(i32 %45)
  %47 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %53

48:                                               ; preds = %34, %32, %30
  %49 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %50 = load i32, i32* @XAE_SPEED, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @WRITE4(%struct.xae_softc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %39, %36
  ret void
}

declare dso_local %struct.xae_softc* @device_get_softc(i32) #1

declare dso_local i32 @XAE_ASSERT_LOCKED(%struct.xae_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
