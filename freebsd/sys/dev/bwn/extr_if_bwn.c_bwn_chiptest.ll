; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_chiptest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_chiptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_TSF_CFP_START = common dso_local global i32 0, align 4
@BWN_TSF_CFP_START_LOW = common dso_local global i32 0, align 4
@BWN_TSF_CFP_START_HIGH = common dso_local global i32 0, align 4
@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_GMODE = common dso_local global i64 0, align 8
@BWN_MACCTL_IHR_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to validate the chipaccess\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TESTVAL0 = common dso_local global i64 0, align 8
@TESTVAL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_chiptest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_chiptest(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %4, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %11 = call i32 @BWN_LOCK(%struct.bwn_softc* %10)
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = load i32, i32* @BWN_SHARED, align 4
  %14 = call i64 @bwn_shm_read_4(%struct.bwn_mac* %12, i32 %13, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = load i32, i32* @BWN_SHARED, align 4
  %17 = call i32 @bwn_shm_write_4(%struct.bwn_mac* %15, i32 %16, i32 0, i64 1437248085)
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %19 = load i32, i32* @BWN_SHARED, align 4
  %20 = call i64 @bwn_shm_read_4(%struct.bwn_mac* %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 1437248085
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = load i32, i32* @BWN_SHARED, align 4
  %26 = call i32 @bwn_shm_write_4(%struct.bwn_mac* %24, i32 %25, i32 0, i64 2857719210)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = load i32, i32* @BWN_SHARED, align 4
  %29 = call i64 @bwn_shm_read_4(%struct.bwn_mac* %27, i32 %28, i32 0)
  %30 = icmp ne i64 %29, 2857719210
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %85

32:                                               ; preds = %23
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %34 = load i32, i32* @BWN_SHARED, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @bwn_shm_write_4(%struct.bwn_mac* %33, i32 %34, i32 0, i64 %35)
  %37 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bhnd_get_hwrev(i32 %39)
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %67

42:                                               ; preds = %32
  %43 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bhnd_get_hwrev(i32 %45)
  %47 = icmp sle i32 %46, 10
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = load i32, i32* @BWN_TSF_CFP_START, align 4
  %51 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %49, i32 %50, i32 43690)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %53 = load i32, i32* @BWN_TSF_CFP_START, align 4
  %54 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %52, i32 %53, i32 -858997829)
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %56 = load i32, i32* @BWN_TSF_CFP_START_LOW, align 4
  %57 = call i32 @BWN_READ_2(%struct.bwn_mac* %55, i32 %56)
  %58 = icmp ne i32 %57, 48059
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %85

60:                                               ; preds = %48
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %62 = load i32, i32* @BWN_TSF_CFP_START_HIGH, align 4
  %63 = call i32 @BWN_READ_2(%struct.bwn_mac* %61, i32 %62)
  %64 = icmp ne i32 %63, 52428
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %85

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %42, %32
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %69 = load i32, i32* @BWN_TSF_CFP_START, align 4
  %70 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %68, i32 %69, i32 0)
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %72 = load i32, i32* @BWN_MACCTL, align 4
  %73 = call i64 @BWN_READ_4(%struct.bwn_mac* %71, i32 %72)
  %74 = load i64, i64* @BWN_MACCTL_GMODE, align 8
  %75 = or i64 %73, %74
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @BWN_MACCTL_GMODE, align 8
  %78 = load i64, i64* @BWN_MACCTL_IHR_ON, align 8
  %79 = or i64 %77, %78
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %85

82:                                               ; preds = %67
  %83 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %84 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %83)
  store i32 0, i32* %2, align 4
  br label %93

85:                                               ; preds = %81, %65, %59, %31, %22
  %86 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %87 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %86)
  %88 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i64 @bwn_shm_read_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_shm_write_4(%struct.bwn_mac*, i32, i32, i64) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i64 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
