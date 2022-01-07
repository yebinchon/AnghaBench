; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64, i32*, %struct.iwi_txpower*, i32 }
%struct.iwi_txpower = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211vap = type { %struct.iwi_txpower* }
%struct.iwi_configuration = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Setting MAC address to %6D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IWI_CMD_SET_MAC_ADDRESS = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Configuring adapter\0A\00", align 1
@IWI_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@IWI_MODE_11B = common dso_local global i32 0, align 4
@IWI_TXPOWER_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Setting .11b channels tx power\0A\00", align 1
@IWI_CMD_SET_TX_POWER = common dso_local global i32 0, align 4
@IWI_MODE_11G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Setting .11g channels tx power\0A\00", align 1
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IWI_RATESET_TYPE_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@IWI_MODE_11A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Setting initialization vector to %u\0A\00", align 1
@IWI_CMD_SET_IV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Enabling adapter\0A\00", align 1
@IWI_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*)* @iwi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_config(%struct.iwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.iwi_configuration, align 8
  %7 = alloca %struct.iwi_txpower, align 8
  %8 = alloca %struct.iwi_txpower*, align 8
  %9 = alloca %struct.iwi_txpower, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwi_txpower, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %13, i32 0, i32 2
  store %struct.ieee80211com* %14, %struct.ieee80211com** %4, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 3
  %17 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %16)
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %5, align 8
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %18)
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %21 = icmp ne %struct.ieee80211vap* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load %struct.iwi_txpower*, %struct.iwi_txpower** %24, align 8
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 2
  %29 = load %struct.iwi_txpower*, %struct.iwi_txpower** %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi %struct.iwi_txpower* [ %25, %22 ], [ %29, %26 ]
  store %struct.iwi_txpower* %31, %struct.iwi_txpower** %8, align 8
  %32 = load %struct.iwi_txpower*, %struct.iwi_txpower** %8, align 8
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %35 = load i32, i32* @IWI_CMD_SET_MAC_ADDRESS, align 4
  %36 = load %struct.iwi_txpower*, %struct.iwi_txpower** %8, align 8
  %37 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %38 = call i32 @iwi_cmd(%struct.iwi_softc* %34, i32 %35, %struct.iwi_txpower* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %186

43:                                               ; preds = %30
  %44 = bitcast %struct.iwi_configuration* %6 to %struct.iwi_txpower*
  %45 = call i32 @memset(%struct.iwi_txpower* %44, i32 0, i32 56)
  %46 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 12
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 0
  store i32 30, i32* %50, align 8
  %51 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 11
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %43
  %72 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 5
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 6
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.iwi_configuration, %struct.iwi_configuration* %6, i32 0, i32 7
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %43
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %78 = load i32, i32* @IWI_CMD_SET_CONFIG, align 4
  %79 = bitcast %struct.iwi_configuration* %6 to %struct.iwi_txpower*
  %80 = call i32 @iwi_cmd(%struct.iwi_softc* %77, i32 %78, %struct.iwi_txpower* %79, i32 56)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %186

85:                                               ; preds = %75
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %138

91:                                               ; preds = %85
  %92 = load i32, i32* @IWI_MODE_11B, align 4
  %93 = getelementptr inbounds %struct.iwi_txpower, %struct.iwi_txpower* %7, i32 0, i32 9
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.iwi_txpower, %struct.iwi_txpower* %7, i32 0, i32 8
  store i32 11, i32* %94, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %114, %91
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 11
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = getelementptr inbounds %struct.iwi_txpower, %struct.iwi_txpower* %7, i32 0, i32 10
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* @IWI_TXPOWER_MAX, align 4
  %108 = getelementptr inbounds %struct.iwi_txpower, %struct.iwi_txpower* %7, i32 0, i32 10
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %95

117:                                              ; preds = %95
  %118 = call i32 @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %120 = load i32, i32* @IWI_CMD_SET_TX_POWER, align 4
  %121 = call i32 @iwi_cmd(%struct.iwi_softc* %119, i32 %120, %struct.iwi_txpower* %7, i32 56)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %186

126:                                              ; preds = %117
  %127 = load i32, i32* @IWI_MODE_11G, align 4
  %128 = getelementptr inbounds %struct.iwi_txpower, %struct.iwi_txpower* %7, i32 0, i32 9
  store i32 %127, i32* %128, align 4
  %129 = call i32 @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %131 = load i32, i32* @IWI_CMD_SET_TX_POWER, align 4
  %132 = call i32 @iwi_cmd(%struct.iwi_softc* %130, i32 %131, %struct.iwi_txpower* %7, i32 56)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %2, align 4
  br label %186

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %85
  %139 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* @IWI_MODE_11G, align 4
  %146 = load i32, i32* @IWI_RATESET_TYPE_SUPPORTED, align 4
  %147 = call i32 @iwi_set_rateset(%struct.iwi_softc* %139, i32* %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %2, align 4
  br label %186

152:                                              ; preds = %138
  %153 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %154 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* @IWI_MODE_11A, align 4
  %160 = load i32, i32* @IWI_RATESET_TYPE_SUPPORTED, align 4
  %161 = call i32 @iwi_set_rateset(%struct.iwi_softc* %153, i32* %158, i32 %159, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %2, align 4
  br label %186

166:                                              ; preds = %152
  %167 = call i32 (...) @arc4random()
  call void @htole32(%struct.iwi_txpower* sret %12, i32 %167)
  %168 = bitcast %struct.iwi_txpower* %9 to i8*
  %169 = bitcast %struct.iwi_txpower* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 56, i1 false)
  %170 = call i32 @le32toh(%struct.iwi_txpower* byval(%struct.iwi_txpower) align 8 %9)
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = call i32 @DPRINTF(i8* %172)
  %174 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %175 = load i32, i32* @IWI_CMD_SET_IV, align 4
  %176 = call i32 @iwi_cmd(%struct.iwi_softc* %174, i32 %175, %struct.iwi_txpower* %9, i32 56)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %166
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %2, align 4
  br label %186

181:                                              ; preds = %166
  %182 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %183 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %184 = load i32, i32* @IWI_CMD_ENABLE, align 4
  %185 = call i32 @iwi_cmd(%struct.iwi_softc* %183, i32 %184, %struct.iwi_txpower* null, i32 0)
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %179, %164, %150, %135, %124, %83, %41
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.iwi_txpower*, i32) #1

declare dso_local i32 @memset(%struct.iwi_txpower*, i32, i32) #1

declare dso_local i32 @iwi_set_rateset(%struct.iwi_softc*, i32*, i32, i32) #1

declare dso_local void @htole32(%struct.iwi_txpower* sret, i32) #1

declare dso_local i32 @arc4random(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le32toh(%struct.iwi_txpower* byval(%struct.iwi_txpower) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
