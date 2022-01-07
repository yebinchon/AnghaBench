; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32, %struct.an_ltv_genconfig, %struct.TYPE_4__ }
%struct.an_ltv_genconfig = type { i32, i32, i32*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.an_ltv_gen = type { i32 }

@AN_RID_GENCONFIG = common dso_local global i8* null, align 8
@IFM_IEEE80211_ADHOC = common dso_local global i32 0, align 4
@AN_OPMODE_INFRASTRUCTURE_STATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @an_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.an_softc*, align 8
  %4 = alloca %struct.an_ltv_genconfig*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.an_softc*, %struct.an_softc** %8, align 8
  store %struct.an_softc* %9, %struct.an_softc** %3, align 8
  %10 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %11 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %15 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %18 = call i32 @AN_LOCK(%struct.an_softc* %17)
  %19 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %20 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IFM_SUBTYPE(i32 %24)
  %26 = call i32 @ieee80211_media2rate(i32 %25)
  %27 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %28 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %30 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %35 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %39 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load i8*, i8** @AN_RID_GENCONFIG, align 8
  %44 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %45 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %45, i32 0, i32 3
  store i8* %43, i8** %46, align 8
  %47 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %48 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %48, i32 0, i32 1
  store i32 24, i32* %49, align 4
  %50 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %51 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %52 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %51, i32 0, i32 1
  %53 = bitcast %struct.an_ltv_genconfig* %52 to %struct.an_ltv_gen*
  %54 = call i32 @an_read_record(%struct.an_softc* %50, %struct.an_ltv_gen* %53)
  %55 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %56 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %55, i32 0, i32 1
  store %struct.an_ltv_genconfig* %56, %struct.an_ltv_genconfig** %4, align 8
  %57 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %4, align 8
  %58 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @bzero(i32* %59, i32 8)
  %61 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %62 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %4, align 8
  %65 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load i8*, i8** @AN_RID_GENCONFIG, align 8
  %69 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %70 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %73 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %73, i32 0, i32 1
  store i32 24, i32* %74, align 4
  br label %75

75:                                               ; preds = %42, %36
  %76 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %77 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load i32, i32* @AN_OPMODE_INFRASTRUCTURE_STATION, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %89 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 8
  br label %100

93:                                               ; preds = %75
  %94 = load i32, i32* @AN_OPMODE_INFRASTRUCTURE_STATION, align 4
  %95 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %96 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %85
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %103 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %110 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %100
  %114 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %115 = call i32 @an_init_locked(%struct.an_softc* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.an_softc*, %struct.an_softc** %3, align 8
  %118 = call i32 @AN_UNLOCK(%struct.an_softc* %117)
  ret i32 0
}

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @ieee80211_media2rate(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @an_read_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @an_init_locked(%struct.an_softc*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
