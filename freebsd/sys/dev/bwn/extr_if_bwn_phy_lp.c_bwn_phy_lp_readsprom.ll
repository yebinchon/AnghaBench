; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_readsprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_readsprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_2__ }
%struct.bwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BHND_NVAR_TRI2G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVRAM variable %s unreadable: %d\0A\00", align 1
@BHND_NVAR_BXA2G = common dso_local global i32 0, align 4
@BHND_NVAR_RXPO2G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISMF2G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISMC2G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISAV2G = common dso_local global i32 0, align 4
@BHND_NVAR_TRI5GL = common dso_local global i32 0, align 4
@BHND_NVAR_TRI5G = common dso_local global i32 0, align 4
@BHND_NVAR_TRI5GH = common dso_local global i32 0, align 4
@BHND_NVAR_BXA5G = common dso_local global i32 0, align 4
@BHND_NVAR_RXPO5G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISMF5G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISMC5G = common dso_local global i32 0, align 4
@BHND_NVAR_RSSISAV5G = common dso_local global i32 0, align 4
@int8 = common dso_local global i32 0, align 4
@uint8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_lp_readsprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_readsprom(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy_lp*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.bwn_phy_lp* %23, %struct.bwn_phy_lp** %4, align 8
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 0
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %25, align 8
  store %struct.bwn_softc* %26, %struct.bwn_softc** %5, align 8
  %27 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %27, i32 0, i32 1
  store %struct.ieee80211com* %28, %struct.ieee80211com** %6, align 8
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %155

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %37 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BHND_NVAR_TRI2G, align 4
  %40 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %41 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %40, i32 0, i32 6
  %42 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %38, i32 %39, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %47 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BHND_NVAR_TRI2G, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %316

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %57 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BHND_NVAR_BXA2G, align 4
  %60 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %61 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %60, i32 0, i32 4
  %62 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %58, i32 %59, i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %67 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BHND_NVAR_BXA2G, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %316

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %77 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BHND_NVAR_RXPO2G, align 4
  %80 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %81 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %80, i32 0, i32 3
  %82 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_int8 to i32 (i32, i32, i32*, ...)*)(i32 %78, i32 %79, i32* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %87 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BHND_NVAR_RXPO2G, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %316

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %97 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BHND_NVAR_RSSISMF2G, align 4
  %100 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %101 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %100, i32 0, i32 2
  %102 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %98, i32 %99, i32* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %107 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BHND_NVAR_RSSISMF2G, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %2, align 4
  br label %316

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %117 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BHND_NVAR_RSSISMC2G, align 4
  %120 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %121 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %120, i32 0, i32 1
  %122 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %118, i32 %119, i32* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %127 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BHND_NVAR_RSSISMC2G, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %2, align 4
  br label %316

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %137 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @BHND_NVAR_RSSISAV2G, align 4
  %140 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %141 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %140, i32 0, i32 0
  %142 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %138, i32 %139, i32* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %135
  %146 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %147 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BHND_NVAR_RSSISAV2G, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  br label %316

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %316

155:                                              ; preds = %1
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %158 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BHND_NVAR_TRI5GL, align 4
  %161 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %162 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %161, i32 0, i32 7
  %163 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %159, i32 %160, i32* %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %156
  %167 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %168 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @BHND_NVAR_TRI5GL, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %2, align 4
  br label %316

174:                                              ; preds = %156
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %178 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BHND_NVAR_TRI5G, align 4
  %181 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %182 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %181, i32 0, i32 6
  %183 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %179, i32 %180, i32* %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %176
  %187 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %188 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @BHND_NVAR_TRI5G, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %2, align 4
  br label %316

194:                                              ; preds = %176
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %198 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @BHND_NVAR_TRI5GH, align 4
  %201 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %202 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %201, i32 0, i32 5
  %203 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %199, i32 %200, i32* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %196
  %207 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %208 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @BHND_NVAR_TRI5GH, align 4
  %211 = load i32, i32* %15, align 4
  %212 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %2, align 4
  br label %316

214:                                              ; preds = %196
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %218 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BHND_NVAR_BXA5G, align 4
  %221 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %222 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %221, i32 0, i32 4
  %223 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %219, i32 %220, i32* %222)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %216
  %227 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %228 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @BHND_NVAR_BXA5G, align 4
  %231 = load i32, i32* %16, align 4
  %232 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32, i32* %16, align 4
  store i32 %233, i32* %2, align 4
  br label %316

234:                                              ; preds = %216
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %238 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @BHND_NVAR_RXPO5G, align 4
  %241 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %242 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %241, i32 0, i32 3
  %243 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_int8 to i32 (i32, i32, i32*, ...)*)(i32 %239, i32 %240, i32* %242)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %236
  %247 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %248 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @BHND_NVAR_RXPO5G, align 4
  %251 = load i32, i32* %17, align 4
  %252 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %249, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %250, i32 %251)
  %253 = load i32, i32* %17, align 4
  store i32 %253, i32* %2, align 4
  br label %316

254:                                              ; preds = %236
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  %257 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %258 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @BHND_NVAR_RSSISMF5G, align 4
  %261 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %262 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %261, i32 0, i32 2
  %263 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %259, i32 %260, i32* %262)
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %18, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %256
  %267 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %268 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @BHND_NVAR_RSSISMF5G, align 4
  %271 = load i32, i32* %18, align 4
  %272 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %269, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %270, i32 %271)
  %273 = load i32, i32* %18, align 4
  store i32 %273, i32* %2, align 4
  br label %316

274:                                              ; preds = %256
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  %277 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %278 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @BHND_NVAR_RSSISMC5G, align 4
  %281 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %282 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %281, i32 0, i32 1
  %283 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %279, i32 %280, i32* %282)
  store i32 %283, i32* %19, align 4
  %284 = load i32, i32* %19, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %276
  %287 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %288 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @BHND_NVAR_RSSISMC5G, align 4
  %291 = load i32, i32* %19, align 4
  %292 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %289, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %290, i32 %291)
  %293 = load i32, i32* %19, align 4
  store i32 %293, i32* %2, align 4
  br label %316

294:                                              ; preds = %276
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  %297 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %298 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @BHND_NVAR_RSSISAV5G, align 4
  %301 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %302 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %301, i32 0, i32 0
  %303 = call i32 (i32, i32, i32*, ...) bitcast (i32 (...)* @bhnd_nvram_getvar_uint8 to i32 (i32, i32, i32*, ...)*)(i32 %299, i32 %300, i32* %302)
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %296
  %307 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %308 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @BHND_NVAR_RSSISAV5G, align 4
  %311 = load i32, i32* %20, align 4
  %312 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @device_printf to i32 (i32, i8*, i32, i32, ...)*)(i32 %309, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %310, i32 %311)
  %313 = load i32, i32* %20, align 4
  store i32 %313, i32* %2, align 4
  br label %316

314:                                              ; preds = %296
  br label %315

315:                                              ; preds = %314
  store i32 0, i32* %2, align 4
  br label %316

316:                                              ; preds = %315, %306, %286, %266, %246, %226, %206, %186, %166, %154, %145, %125, %105, %85, %65, %45
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(...) #1

declare dso_local i32 @device_printf(...) #1

declare dso_local i32 @bhnd_nvram_getvar_int8(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
