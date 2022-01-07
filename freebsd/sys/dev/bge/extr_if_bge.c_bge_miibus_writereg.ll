; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32, i32, i32 }

@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BRGPHY_MII_1000CTL = common dso_local global i32 0, align 4
@BRGPHY_MII_AUXCTL = common dso_local global i32 0, align 4
@BGE_MIMODE_AUTOPOLL = common dso_local global i32 0, align 4
@BGE_MI_MODE = common dso_local global i32 0, align 4
@BGE_MI_COMM = common dso_local global i32 0, align 4
@BGE_MICMD_WRITE = common dso_local global i32 0, align 4
@BGE_MICOMM_BUSY = common dso_local global i32 0, align 4
@BGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"PHY write timed out (phy %d, reg %d, val 0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @bge_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bge_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.bge_softc* @device_get_softc(i32 %12)
  store %struct.bge_softc* %13, %struct.bge_softc** %10, align 8
  %14 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %15 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BRGPHY_MII_1000CTL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BRGPHY_MII_AUXCTL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 0, i32* %5, align 4
  br label %123

28:                                               ; preds = %23, %4
  %29 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %30 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @bge_ape_lock(%struct.bge_softc* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %123

36:                                               ; preds = %28
  %37 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %45 = load i32, i32* @BGE_MI_MODE, align 4
  %46 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %47 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @CSR_WRITE_4(%struct.bge_softc* %44, i32 %45, i32 %51)
  %53 = call i32 @DELAY(i32 80)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %56 = load i32, i32* @BGE_MI_COMM, align 4
  %57 = load i32, i32* @BGE_MICMD_WRITE, align 4
  %58 = load i32, i32* @BGE_MICOMM_BUSY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @BGE_MIPHY(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @BGE_MIREG(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @CSR_WRITE_4(%struct.bge_softc* %55, i32 %56, i32 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %87, %54
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @BGE_TIMEOUT, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = call i32 @DELAY(i32 10)
  %75 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %76 = load i32, i32* @BGE_MI_COMM, align 4
  %77 = call i32 @CSR_READ_4(%struct.bge_softc* %75, i32 %76)
  %78 = load i32, i32* @BGE_MICOMM_BUSY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = call i32 @DELAY(i32 5)
  %83 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %84 = load i32, i32* @BGE_MI_COMM, align 4
  %85 = call i32 @CSR_READ_4(%struct.bge_softc* %83, i32 %84)
  br label %90

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %69

90:                                               ; preds = %81, %69
  %91 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %92 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %99 = load i32, i32* @BGE_MI_MODE, align 4
  %100 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %101 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @CSR_WRITE_4(%struct.bge_softc* %98, i32 %99, i32 %102)
  %104 = call i32 @DELAY(i32 80)
  br label %105

105:                                              ; preds = %97, %90
  %106 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %107 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %108 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bge_ape_unlock(%struct.bge_softc* %106, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @BGE_TIMEOUT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load %struct.bge_softc*, %struct.bge_softc** %10, align 8
  %116 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %105
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %35, %27
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.bge_softc* @device_get_softc(i32) #1

declare dso_local i64 @bge_ape_lock(%struct.bge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BGE_MIPHY(i32) #1

declare dso_local i32 @BGE_MIREG(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_ape_unlock(%struct.bge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
