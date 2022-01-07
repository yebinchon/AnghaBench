; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetDfsThresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212GetDfsThresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_RELPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_RELSTEP = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_MAXLEN = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_USEFIR128 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_BLOCKOFDMWEAK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENMAXRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENRELPWRCHK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENRELSTEPCHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212GetDfsThresh(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
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
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  store i32 0, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 8
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 9
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @AH_FALSE, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = call i64 @IS_5413(%struct.ath_hal* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %146

70:                                               ; preds = %2
  %71 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %72 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %73 = call i32 @OS_REG_READ(%struct.ath_hal* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @AR_PHY_RADAR_2_RELPWR, align 4
  %76 = call i8* @MS(i32 %74, i32 %75)
  %77 = icmp ne i8* %76, null
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @AR_PHY_RADAR_2_RELSTEP, align 4
  %85 = call i8* @MS(i32 %83, i32 %84)
  %86 = icmp ne i8* %85, null
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @AR_PHY_RADAR_2_MAXLEN, align 4
  %94 = call i8* @MS(i32 %92, i32 %93)
  %95 = icmp ne i8* %94, null
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @AR_PHY_RADAR_2_USEFIR128, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @AR_PHY_RADAR_2_BLOCKOFDMWEAK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @AR_PHY_RADAR_2_ENMAXRSSI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @AR_PHY_RADAR_2_ENRELPWRCHK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @AR_PHY_RADAR_2_ENRELSTEPCHK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 9
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %70, %2
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
