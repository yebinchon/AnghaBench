; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32 }

@BGE_MIMODE_AUTOPOLL = common dso_local global i32 0, align 4
@BGE_MI_MODE = common dso_local global i32 0, align 4
@BGE_MI_COMM = common dso_local global i32 0, align 4
@BGE_MICMD_READ = common dso_local global i32 0, align 4
@BGE_MICOMM_BUSY = common dso_local global i32 0, align 4
@BGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"PHY read timed out (phy %d, reg %d, val 0x%08x)\0A\00", align 1
@BGE_MICOMM_READFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @bge_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bge_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bge_softc* @device_get_softc(i32 %11)
  store %struct.bge_softc* %12, %struct.bge_softc** %8, align 8
  %13 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %14 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %15 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @bge_ape_lock(%struct.bge_softc* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

20:                                               ; preds = %3
  %21 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %22 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %29 = load i32, i32* @BGE_MI_MODE, align 4
  %30 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @CSR_WRITE_4(%struct.bge_softc* %28, i32 %29, i32 %35)
  %37 = call i32 @DELAY(i32 80)
  br label %38

38:                                               ; preds = %27, %20
  %39 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %40 = load i32, i32* @BGE_MI_COMM, align 4
  %41 = load i32, i32* @BGE_MICMD_READ, align 4
  %42 = load i32, i32* @BGE_MICOMM_BUSY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @BGE_MIPHY(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @BGE_MIREG(i32 %47)
  %49 = or i32 %46, %48
  %50 = call i32 @CSR_WRITE_4(%struct.bge_softc* %39, i32 %40, i32 %49)
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %70, %38
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @BGE_TIMEOUT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = call i32 @DELAY(i32 10)
  %57 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %58 = load i32, i32* @BGE_MI_COMM, align 4
  %59 = call i32 @CSR_READ_4(%struct.bge_softc* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BGE_MICOMM_BUSY, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = call i32 @DELAY(i32 5)
  %66 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %67 = load i32, i32* @BGE_MI_COMM, align 4
  %68 = call i32 @CSR_READ_4(%struct.bge_softc* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %73

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %51

73:                                               ; preds = %64, %51
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BGE_TIMEOUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %79 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %77, %73
  %86 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %87 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %94 = load i32, i32* @BGE_MI_MODE, align 4
  %95 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %96 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.bge_softc* %93, i32 %94, i32 %97)
  %99 = call i32 @DELAY(i32 80)
  br label %100

100:                                              ; preds = %92, %85
  %101 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %102 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %103 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bge_ape_unlock(%struct.bge_softc* %101, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @BGE_MICOMM_READFAIL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 65535
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %110, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.bge_softc* @device_get_softc(i32) #1

declare dso_local i64 @bge_ape_lock(%struct.bge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BGE_MIPHY(i32) #1

declare dso_local i32 @BGE_MIREG(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bge_ape_unlock(%struct.bge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
