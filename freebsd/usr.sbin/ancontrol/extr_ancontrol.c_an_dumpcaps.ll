; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_caps = type { i32, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.an_req = type { i32, i32 }

@AN_RID_CAPABILITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"OUI:\09\09\09\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AProduct number:\09\09\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0AManufacturer name:\09\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0AProduce name:\09\09\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\0AFirmware version:\09\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0AOEM MAC address:\09\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"\0AAironet MAC address:\09\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0ARadio type:\09\09[ \00", align 1
@AN_RADIOTYPE_80211_FH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"802.11 FH\00", align 1
@AN_RADIOTYPE_80211_DS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"802.11 DS\00", align 1
@AN_RADIOTYPE_LM2000_DS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"LM2000 DS\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"unknown (%x)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0ARegulatory domain:\09\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\0AAssigned CallID:\09\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"\0ASupported speeds:\09\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\0ARX Diversity:\09\09[ \00", align 1
@AN_DIVERSITY_FACTORY_DEFAULT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"factory default\00", align 1
@AN_DIVERSITY_ANTENNA_1_ONLY = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"antenna 1 only\00", align 1
@AN_DIVERSITY_ANTENNA_2_ONLY = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"antenna 2 only\00", align 1
@AN_DIVERSITY_ANTENNA_1_AND_2 = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"antenna 1 and 2\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"\0ATX Diversity:\09\09[ \00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\0ASupported power levels:\09\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\0AHardware revision:\09\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\0ASoftware revision:\09\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"\0ASoftware subrevision:\09\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"\0AInterface revision:\09\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"\0ABootblock revision:\09\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_dumpcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dumpcaps(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_ltv_caps*, align 8
  %4 = alloca %struct.an_req, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  store i32 8, i32* %6, align 4
  %7 = load i32, i32* @AN_RID_CAPABILITIES, align 4
  %8 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @an_getval(i8* %9, %struct.an_req* %4)
  %11 = bitcast %struct.an_req* %4 to %struct.an_ltv_caps*
  store %struct.an_ltv_caps* %11, %struct.an_ltv_caps** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %14 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %13, i32 0, i32 18
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @an_printhex(i8* %15, i32 3)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %19 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %18, i32 0, i32 17
  %20 = call i32 @an_printwords(i32* %19, i32 1)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %23 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %22, i32 0, i32 16
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @an_printstr(i8* %24, i32 32)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %28 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %27, i32 0, i32 15
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @an_printstr(i8* %29, i32 16)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %33 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %32, i32 0, i32 14
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @an_printstr(i8* %34, i32 1)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %38 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %37, i32 0, i32 13
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %41 = call i32 @an_printhex(i8* %39, i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %44 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %43, i32 0, i32 12
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %47 = call i32 @an_printhex(i8* %45, i32 %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %50 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AN_RADIOTYPE_80211_FH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %82

57:                                               ; preds = %1
  %58 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %59 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AN_RADIOTYPE_80211_DS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %81

66:                                               ; preds = %57
  %67 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %68 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AN_RADIOTYPE_LM2000_DS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %77 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %73
  br label %81

81:                                               ; preds = %80, %64
  br label %82

82:                                               ; preds = %81, %55
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %85 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %86 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %85, i32 0, i32 11
  %87 = call i32 @an_printwords(i32* %86, i32 1)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %89 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %90 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %89, i32 0, i32 10
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @an_printhex(i8* %91, i32 6)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %94 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %95 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @an_printspeeds(i32 %96, i32 8)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %99 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %100 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AN_DIVERSITY_FACTORY_DEFAULT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %133

106:                                              ; preds = %82
  %107 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %108 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AN_DIVERSITY_ANTENNA_1_ONLY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %132

114:                                              ; preds = %106
  %115 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %116 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AN_DIVERSITY_ANTENNA_2_ONLY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %131

122:                                              ; preds = %114
  %123 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %124 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AN_DIVERSITY_ANTENNA_1_AND_2, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122
  br label %131

131:                                              ; preds = %130, %120
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %104
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %136 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %137 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AN_DIVERSITY_FACTORY_DEFAULT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %170

143:                                              ; preds = %133
  %144 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %145 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AN_DIVERSITY_ANTENNA_1_ONLY, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  br label %169

151:                                              ; preds = %143
  %152 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %153 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AN_DIVERSITY_ANTENNA_2_ONLY, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

159:                                              ; preds = %151
  %160 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %161 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AN_DIVERSITY_ANTENNA_1_AND_2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %159
  br label %168

168:                                              ; preds = %167, %157
  br label %169

169:                                              ; preds = %168, %149
  br label %170

170:                                              ; preds = %169, %141
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %173 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %174 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %173, i32 0, i32 8
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @an_printwords(i32* %175, i32 8)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %178 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %179 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @ntohs(i32 %180)
  store i64 %181, i64* %5, align 8
  %182 = bitcast i64* %5 to i8*
  %183 = call i32 @an_printhex(i8* %182, i32 2)
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %185 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %186 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @ntohs(i32 %187)
  store i64 %188, i64* %5, align 8
  %189 = bitcast i64* %5 to i8*
  %190 = call i32 @an_printhex(i8* %189, i32 2)
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %192 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %193 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @ntohs(i32 %194)
  store i64 %195, i64* %5, align 8
  %196 = bitcast i64* %5 to i8*
  %197 = call i32 @an_printhex(i8* %196, i32 2)
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %199 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %200 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @ntohs(i32 %201)
  store i64 %202, i64* %5, align 8
  %203 = bitcast i64* %5 to i8*
  %204 = call i32 @an_printhex(i8* %203, i32 2)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %206 = load %struct.an_ltv_caps*, %struct.an_ltv_caps** %3, align 8
  %207 = getelementptr inbounds %struct.an_ltv_caps, %struct.an_ltv_caps* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @ntohs(i32 %208)
  store i64 %209, i64* %5, align 8
  %210 = bitcast i64* %5 to i8*
  %211 = call i32 @an_printhex(i8* %210, i32 2)
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @an_printhex(i8*, i32) #1

declare dso_local i32 @an_printwords(i32*, i32) #1

declare dso_local i32 @an_printstr(i8*, i32) #1

declare dso_local i32 @an_printspeeds(i32, i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
