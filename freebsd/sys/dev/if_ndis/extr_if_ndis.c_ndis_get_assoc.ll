; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_get_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_get_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@OID_802_11_BSSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get bssid\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_softc*, %struct.TYPE_7__**)* @ndis_get_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_get_assoc(%struct.ndis_softc* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ndis_softc*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  %15 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %15, i32 0, i32 2
  store %struct.ieee80211com* %16, %struct.ieee80211com** %6, align 8
  %17 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %3, align 4
  br label %122

23:                                               ; preds = %2
  store i32 4, i32* %13, align 4
  %24 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %25 = load i32, i32* @OID_802_11_BSSID, align 4
  %26 = call i32 @ndis_get_info(%struct.ndis_softc* %24, i32 %25, i32* %11, i32* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %3, align 4
  br label %122

35:                                               ; preds = %23
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 1
  %38 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %37)
  store %struct.ieee80211vap* %38, %struct.ieee80211vap** %7, align 8
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 0
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %40, align 8
  store %struct.ieee80211_node* %41, %struct.ieee80211_node** %8, align 8
  %42 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %43 = call i32 @ndis_get_bssid_list(%struct.ndis_softc* %42, %struct.TYPE_8__** %9)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %3, align 4
  br label %122

48:                                               ; preds = %35
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = bitcast i32* %52 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %114, %48
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @bcmp(i32 %63, i32 %64, i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @M_TEMP, align 4
  %72 = load i32, i32* @M_NOWAIT, align 4
  %73 = call %struct.TYPE_7__* @malloc(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %74, align 8
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = icmp eq %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = load i32, i32* @M_TEMP, align 4
  %81 = call i32 @free(%struct.TYPE_8__* %79, i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %3, align 4
  br label %122

83:                                               ; preds = %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = bitcast %struct.TYPE_7__* %84 to i8*
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = bitcast %struct.TYPE_7__* %87 to i8*
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bcopy(i8* %85, i8* %88, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %94 = load i32, i32* @M_TEMP, align 4
  %95 = call i32 @free(%struct.TYPE_8__* %93, i32 %94)
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IEEE80211_M_STA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %102, i32 0, i32 0
  store i32 49153, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %83
  store i32 0, i32* %3, align 4
  br label %122

105:                                              ; preds = %60
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = bitcast %struct.TYPE_7__* %106 to i8*
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = bitcast i8* %112 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %10, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %54

117:                                              ; preds = %54
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = load i32, i32* @M_TEMP, align 4
  %120 = call i32 @free(%struct.TYPE_8__* %118, i32 %119)
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %104, %78, %46, %29, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ndis_get_info(%struct.ndis_softc*, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ndis_get_bssid_list(%struct.ndis_softc*, %struct.TYPE_8__**) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
