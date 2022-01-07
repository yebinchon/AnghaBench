; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_wep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i32 }
%struct.ieee80211vap = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wi_key = type { i32, i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@WI_RID_ENCRYPTION = common dso_local global i32 0, align 4
@WI_RID_TX_CRYPT_KEY = common dso_local global i32 0, align 4
@WI_RID_DEFLT_CRYPT_KEYS = common dso_local global i32 0, align 4
@HOST_ENCRYPT = common dso_local global i32 0, align 4
@HOST_DECRYPT = common dso_local global i32 0, align 4
@WI_RID_PROMISC = common dso_local global i32 0, align 4
@WI_RID_CNFAUTHMODE = common dso_local global i32 0, align 4
@PRIVACY_INVOKED = common dso_local global i32 0, align 4
@IEEE80211_AUTH_OPEN = common dso_local global i32 0, align 4
@WI_RID_P2_ENCRYPTION = common dso_local global i32 0, align 4
@WI_RID_P2_TX_CRYPT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, %struct.ieee80211vap*)* @wi_write_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_write_wep(%struct.wi_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.wi_softc* %0, %struct.wi_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca %struct.wi_key, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %161 [
    i32 128, label %18
    i32 129, label %101
  ]

18:                                               ; preds = %2
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %8, align 4
  %27 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %28 = load i32, i32* @WI_RID_ENCRYPTION, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @wi_write_val(%struct.wi_softc* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %161

34:                                               ; preds = %18
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %161

42:                                               ; preds = %34
  %43 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %44 = load i32, i32* @WI_RID_TX_CRYPT_KEY, align 4
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wi_write_val(%struct.wi_softc* %43, i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %161

52:                                               ; preds = %42
  %53 = mul nuw i64 8, %12
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(%struct.wi_key* %14, i32 0, i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %90, %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @htole16(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.wi_key, %struct.wi_key* %14, i64 %72
  %74 = getelementptr inbounds %struct.wi_key, %struct.wi_key* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.wi_key, %struct.wi_key* %14, i64 %76
  %78 = getelementptr inbounds %struct.wi_key, %struct.wi_key* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @memcpy(i32 %79, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %60
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %95 = load i32, i32* @WI_RID_DEFLT_CRYPT_KEYS, align 4
  %96 = mul nuw i64 8, %12
  %97 = trunc i64 %96 to i32
  %98 = call i32 @wi_write_rid(%struct.wi_softc* %94, i32 %95, %struct.wi_key* %14, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %100 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %161

101:                                              ; preds = %2
  %102 = load i32, i32* @HOST_ENCRYPT, align 4
  %103 = load i32, i32* @HOST_DECRYPT, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %8, align 4
  %105 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %101
  %112 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %113 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 802
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %118 = load i32, i32* @WI_RID_PROMISC, align 4
  %119 = call i32 @wi_write_val(%struct.wi_softc* %117, i32 %118, i32 1)
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %122 = load i32, i32* @WI_RID_CNFAUTHMODE, align 4
  %123 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @wi_write_val(%struct.wi_softc* %121, i32 %122, i32 %127)
  %129 = load i32, i32* @PRIVACY_INVOKED, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %137

132:                                              ; preds = %101
  %133 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %134 = load i32, i32* @WI_RID_CNFAUTHMODE, align 4
  %135 = load i32, i32* @IEEE80211_AUTH_OPEN, align 4
  %136 = call i32 @wi_write_val(%struct.wi_softc* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %120
  %138 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %139 = load i32, i32* @WI_RID_P2_ENCRYPTION, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @wi_write_val(%struct.wi_softc* %138, i32 %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %161

145:                                              ; preds = %137
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %148 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @PRIVACY_INVOKED, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %161

154:                                              ; preds = %145
  %155 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %156 = load i32, i32* @WI_RID_P2_TX_CRYPT_KEY, align 4
  %157 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @wi_write_val(%struct.wi_softc* %155, i32 %156, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %2, %154, %153, %144, %93, %51, %41, %33
  %162 = load i32, i32* %5, align 4
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #2

declare dso_local i32 @memset(%struct.wi_key*, i32, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @wi_write_rid(%struct.wi_softc*, i32, %struct.wi_key*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
