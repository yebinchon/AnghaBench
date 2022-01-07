; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_radar.c_ar5416GetDfsThresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_radar.c_ar5416GetDfsThresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAXLEN = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_USE_FIR128 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_BLOCK_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAX_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416GetDfsThresh(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %9 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %12 = call i8* @MS(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, -128
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %21 = call i8* @MS(i32 %19, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 14
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %26 = call i8* @MS(i32 %24, i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 13
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %31 = call i8* @MS(i32 %29, i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %36 = call i8* @MS(i32 %34, i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %41 = call i32 @OS_REG_READ(%struct.ath_hal* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %44 = call i8* @MS(i32 %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %49 = call i8* @MS(i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %54 = call i8* @MS(i32 %52, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %59 = call i32 @OS_REG_READ(%struct.ath_hal* %57, i32 %58)
  %60 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %70 = call i32 @OS_REG_READ(%struct.ath_hal* %68, i32 %69)
  %71 = load i32, i32* @AR_PHY_RADAR_1_USE_FIR128, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %80 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %81 = call i32 @OS_REG_READ(%struct.ath_hal* %79, i32 %80)
  %82 = load i32, i32* @AR_PHY_RADAR_1_BLOCK_CHECK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %92 = call i32 @OS_REG_READ(%struct.ath_hal* %90, i32 %91)
  %93 = load i32, i32* @AR_PHY_RADAR_1_MAX_RRSSI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %102 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %103 = call i32 @OS_REG_READ(%struct.ath_hal* %101, i32 %102)
  %104 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %113 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %114 = call i32 @OS_REG_READ(%struct.ath_hal* %112, i32 %113)
  %115 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_ENA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %125 = call i32 @OS_REG_READ(%struct.ath_hal* %123, i32 %124)
  %126 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_CHECK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
