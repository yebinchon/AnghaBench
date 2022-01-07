; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_mediachange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_mediachange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32 }

@CGEM_NET_CFG = common dso_local global i32 0, align 4
@CGEM_NET_CFG_SPEED100 = common dso_local global i32 0, align 4
@CGEM_NET_CFG_GIGE_EN = common dso_local global i32 0, align 4
@CGEM_NET_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cgem_mediachange: could not set ref clk%d to %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*, %struct.mii_data*)* @cgem_mediachange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_mediachange(%struct.cgem_softc* %0, %struct.mii_data* %1) #0 {
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %3, align 8
  store %struct.mii_data* %1, %struct.mii_data** %4, align 8
  %7 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %8 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %7)
  %9 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %10 = load i32, i32* @CGEM_NET_CFG, align 4
  %11 = call i32 @RD4(%struct.cgem_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CGEM_NET_CFG_SPEED100, align 4
  %13 = load i32, i32* @CGEM_NET_CFG_GIGE_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CGEM_NET_CFG_FULL_DUPLEX, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_SUBTYPE(i32 %22)
  switch i32 %23, label %34 [
    i32 129, label %24
    i32 128, label %30
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @CGEM_NET_CFG_SPEED100, align 4
  %26 = load i32, i32* @CGEM_NET_CFG_GIGE_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  store i32 125000000, i32* %6, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @CGEM_NET_CFG_SPEED100, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  store i32 25000000, i32* %6, align 4
  br label %35

34:                                               ; preds = %2
  store i32 2500000, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %30, %24
  %36 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %37 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFM_FDX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @CGEM_NET_CFG_FULL_DUPLEX, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %48 = load i32, i32* @CGEM_NET_CFG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @WR4(%struct.cgem_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %52 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @cgem_set_ref_clk(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %59 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %62 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %46
  %67 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %68 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %71 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i64 @cgem_set_ref_clk(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
