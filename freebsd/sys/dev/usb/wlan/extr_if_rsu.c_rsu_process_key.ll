; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_process_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_key*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rsu_softc* }
%struct.rsu_softc = type { i32, i32, i32, %struct.ieee80211_key** }
%struct.ieee80211_key = type { i32, i64 }

@IEEE80211_KEY_SWCRYPT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"keyix %u > %zu\0A\00", align 1
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*, i32)* @rsu_process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_process_key(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsu_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rsu_softc*, %struct.rsu_softc** %13, align 8
  store %struct.rsu_softc* %14, %struct.rsu_softc** %8, align 8
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_KEY_SWCRYPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %135

22:                                               ; preds = %3
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %24, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %25, i64 0
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %28 = icmp ule %struct.ieee80211_key* %26, %27
  br i1 %28, label %29, label %99

29:                                               ; preds = %22
  %30 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %32, align 8
  %34 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %33, i64 %34
  %36 = icmp ult %struct.ieee80211_key* %30, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %42 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %41, i32 0, i32 3
  %43 = load %struct.ieee80211_key**, %struct.ieee80211_key*** %42, align 8
  %44 = call i64 @nitems(%struct.ieee80211_key** %43)
  %45 = icmp ult i64 %40, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %51 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %50, i32 0, i32 3
  %52 = load %struct.ieee80211_key**, %struct.ieee80211_key*** %51, align 8
  %53 = call i64 @nitems(%struct.ieee80211_key** %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %46, i8* %54)
  %56 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %57 = call i32 @RSU_LOCK(%struct.rsu_softc* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  br label %63

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi %struct.ieee80211_key* [ %61, %60 ], [ null, %62 ]
  %65 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %66 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %65, i32 0, i32 3
  %67 = load %struct.ieee80211_key**, %struct.ieee80211_key*** %66, align 8
  %68 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key*, %struct.ieee80211_key** %67, i64 %70
  store %struct.ieee80211_key* %64, %struct.ieee80211_key** %71, align 8
  %72 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %73 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %63
  %77 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %78 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %77)
  store i32 1, i32* %4, align 4
  br label %135

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %84 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %85 = call i32 @rsu_set_key_group(%struct.rsu_softc* %83, %struct.ieee80211_key* %84)
  store i32 %85, i32* %9, align 4
  br label %92

86:                                               ; preds = %79
  %87 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %88 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @rsu_delete_key(%struct.rsu_softc* %87, i64 %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %86, %82
  %93 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %94 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %135

99:                                               ; preds = %29, %22
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, i32* @taskqueue_thread, align 4
  %104 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %105 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %104, i32 0, i32 0
  %106 = call i32 @taskqueue_drain(i32 %103, i32* %105)
  %107 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %108 = call i32 @RSU_LOCK(%struct.rsu_softc* %107)
  %109 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %110 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %111 = call i32 @rsu_set_key_pair(%struct.rsu_softc* %109, %struct.ieee80211_key* %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %113 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %112)
  br label %130

114:                                              ; preds = %99
  %115 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %116 = call i32 @RSU_DELKEY_BMAP_LOCK(%struct.rsu_softc* %115)
  %117 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %118 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @setbit(i32 %119, i64 %122)
  %124 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %125 = call i32 @RSU_DELKEY_BMAP_UNLOCK(%struct.rsu_softc* %124)
  %126 = load i32, i32* @taskqueue_thread, align 4
  %127 = load %struct.rsu_softc*, %struct.rsu_softc** %8, align 8
  %128 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %127, i32 0, i32 0
  %129 = call i32 @taskqueue_enqueue(i32 %126, i32* %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %114, %102
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %92, %76, %21
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @nitems(%struct.ieee80211_key**) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @rsu_set_key_group(%struct.rsu_softc*, %struct.ieee80211_key*) #1

declare dso_local i32 @rsu_delete_key(%struct.rsu_softc*, i64) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @rsu_set_key_pair(%struct.rsu_softc*, %struct.ieee80211_key*) #1

declare dso_local i32 @RSU_DELKEY_BMAP_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @setbit(i32, i64) #1

declare dso_local i32 @RSU_DELKEY_BMAP_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
