; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_add_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ndis_softc* }
%struct.ndis_softc = type { i32 }
%struct.ieee80211_key = type { i32, i32, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@IEEE80211_KEY_SWMIC = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i32 0, align 4
@IEEE80211_KEY_XMIT = common dso_local global i32 0, align 4
@IEEE80211_KEY_GROUP = common dso_local global i32 0, align 4
@ieee80211broadcastaddr = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@OID_802_11_ADD_KEY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*)* @ndis_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_add_key(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ndis_softc*, %struct.ndis_softc** %13, align 8
  store %struct.ndis_softc* %14, %struct.ndis_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %149 [
    i32 129, label %20
    i32 128, label %147
    i32 130, label %148
  ]

20:                                               ; preds = %2
  store i32 24, i32* %8, align 4
  %21 = bitcast %struct.TYPE_9__* %7 to i8*
  %22 = call i32 @bzero(i8* %21, i32 24)
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_KEY_SWMIC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 16
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %35, %20
  %40 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_KEYIX_NONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  br label %52

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_KEY_XMIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, -2147483648
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_KEY_GROUP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @ieee80211broadcastaddr, align 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %75 = call i32 @bcopy(i32 %71, i32 %73, i32 %74)
  br label %89

76:                                               ; preds = %63
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %85 = call i32 @bcopy(i32 %81, i32 %83, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 1073741824
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %76, %70
  %90 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 536870912
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %89
  %104 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IEEE80211_KEY_SWMIC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %103
  %111 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bcopy(i32 %113, i32 %115, i32 16)
  %117 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 24
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 16
  %124 = call i32 @bcopy(i32 %120, i32 %123, i32 8)
  %125 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %126 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 16
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 24
  %132 = call i32 @bcopy(i32 %128, i32 %131, i32 8)
  br label %143

133:                                              ; preds = %103
  %134 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @bcopy(i32 %136, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %133, %110
  %144 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %145 = load i32, i32* @OID_802_11_ADD_KEY, align 4
  %146 = call i32 @ndis_set_info(%struct.ndis_softc* %144, i32 %145, %struct.TYPE_9__* %7, i32* %8)
  store i32 %146, i32* %9, align 4
  br label %151

147:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  br label %151

148:                                              ; preds = %2
  br label %149

149:                                              ; preds = %2, %148
  %150 = load i32, i32* @ENOTTY, align 4
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %149, %147, %143
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %156

155:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %154
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @ndis_set_info(%struct.ndis_softc*, i32, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
