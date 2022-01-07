; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ieee80211_parse_wpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ieee80211_parse_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_rsnparms = type { i32, i32, i32, i8*, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_F_WPA1 = common dso_local global i32 0, align 4
@IEEE80211_MSG_ELEMID = common dso_local global i32 0, align 4
@IEEE80211_MSG_WPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"not WPA, flags 0x%x\00", align 1
@IEEE80211_REASON_IE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"too short, len %u\00", align 1
@WPA_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"bad version %u\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unknown mcast cipher suite %08X\00", align 1
@IEEE80211_REASON_GROUP_CIPHER_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ucast cipher data too short; len %u, n %u\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"no usable pairwise cipher suite found (w=%d)\00", align 1
@IEEE80211_REASON_PAIRWISE_CIPHER_INVALID = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_AES_CCM = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"key mgmt alg data too short; len %u, n %u\00", align 1
@WPA_ASE_8021X_UNSPEC = common dso_local global i32 0, align 4
@WPA_ASE_8021X_PSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32*, %struct.ieee80211_rsnparms*, %struct.ieee80211_frame*)* @ieee80211_parse_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_parse_wpa(%struct.ieee80211vap* %0, i32* %1, %struct.ieee80211_rsnparms* %2, %struct.ieee80211_frame* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_rsnparms*, align 8
  %9 = alloca %struct.ieee80211_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ieee80211_rsnparms* %2, %struct.ieee80211_rsnparms** %8, align 8
  store %struct.ieee80211_frame* %3, %struct.ieee80211_frame** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_F_WPA1, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %26 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %27 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %25, i32 %28, %struct.ieee80211_frame* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %34, i32* %5, align 4
  br label %229

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 14
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %40 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %41 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %39, i32 %42, %struct.ieee80211_frame* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %46, i32* %5, align 4
  br label %229

47:                                               ; preds = %35
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @le16dec(i32* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @WPA_VERSION, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %60 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %61 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %59, i32 %62, %struct.ieee80211_frame* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %66, i32* %5, align 4
  br label %229

67:                                               ; preds = %47
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32* %69, i32** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %10, align 4
  %72 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %73 = call i32 @memset(%struct.ieee80211_rsnparms* %72, i32 0, i32 32)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %75, i32 0, i32 5
  %77 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %77, i32 0, i32 0
  %79 = call i32 @wpa_cipher(i32* %74, i32* %76, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %67
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %84 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %85 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @le32dec(i32* %88)
  %90 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %83, i32 %86, %struct.ieee80211_frame* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @IEEE80211_REASON_GROUP_CIPHER_INVALID, align 4
  store i32 %91, i32* %5, align 4
  br label %229

92:                                               ; preds = %67
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32* %94, i32** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 4
  store i32 %96, i32* %10, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i8* @le16dec(i32* %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 2
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %105, 4
  %107 = add nsw i32 %106, 2
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %92
  %110 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %111 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %112 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %110, i32 %113, %struct.ieee80211_frame* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %118, i32* %5, align 4
  br label %229

119:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %140, %119
  %121 = load i32, i32* %13, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %125, i32 0, i32 4
  %127 = call i32 @wpa_cipher(i32* %124, i32* %126, i32* %14)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32, i32* %14, align 4
  %132 = shl i32 1, %131
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %130, %123
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  store i32* %137, i32** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sub nsw i32 %138, 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %13, align 4
  br label %120

143:                                              ; preds = %120
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %148 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %149 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %147, i32 %150, %struct.ieee80211_frame* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @IEEE80211_REASON_PAIRWISE_CIPHER_INVALID, align 4
  store i32 %154, i32* %5, align 4
  br label %229

155:                                              ; preds = %143
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @IEEE80211_CIPHER_AES_CCM, align 4
  %158 = shl i32 1, %157
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @IEEE80211_CIPHER_AES_CCM, align 4
  %163 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %164 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %169

165:                                              ; preds = %155
  %166 = load i32, i32* @IEEE80211_CIPHER_TKIP, align 4
  %167 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %168 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32*, i32** %7, align 8
  %171 = call i8* @le16dec(i32* %170)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  store i32* %174, i32** %7, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, 2
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 %178, 4
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %169
  %182 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %183 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %184 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %182, i32 %185, %struct.ieee80211_frame* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %190, i32* %5, align 4
  br label %229

191:                                              ; preds = %169
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %204, %191
  %193 = load i32, i32* %13, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 @wpa_keymgmt(i32* %196)
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  store i32* %201, i32** %7, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sub nsw i32 %202, 4
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %195
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %13, align 4
  br label %192

207:                                              ; preds = %192
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @WPA_ASE_8021X_UNSPEC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* @WPA_ASE_8021X_UNSPEC, align 4
  %214 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %215 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  br label %220

216:                                              ; preds = %207
  %217 = load i32, i32* @WPA_ASE_8021X_PSK, align 4
  %218 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %219 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i32, i32* %10, align 4
  %222 = icmp sgt i32 %221, 2
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i32*, i32** %7, align 8
  %225 = call i8* @le16dec(i32* %224)
  %226 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %227 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %223, %220
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %181, %146, %109, %82, %58, %38, %24
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @IEEE80211_DISCARD_IE(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) #1

declare dso_local i8* @le16dec(i32*) #1

declare dso_local i32 @memset(%struct.ieee80211_rsnparms*, i32, i32) #1

declare dso_local i32 @wpa_cipher(i32*, i32*, i32*) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @wpa_keymgmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
