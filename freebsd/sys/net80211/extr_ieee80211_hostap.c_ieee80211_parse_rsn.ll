; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ieee80211_parse_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ieee80211_parse_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_rsnparms = type { i32, i32, i32, i8*, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_F_WPA2 = common dso_local global i32 0, align 4
@IEEE80211_MSG_ELEMID = common dso_local global i32 0, align 4
@IEEE80211_MSG_WPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"not RSN, flags 0x%x\00", align 1
@IEEE80211_REASON_IE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"RSN\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"too short, len %u\00", align 1
@RSN_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"bad version %u\00", align 1
@IEEE80211_REASON_UNSUPP_RSN_IE_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unknown mcast cipher suite %08X\00", align 1
@IEEE80211_REASON_GROUP_CIPHER_INVALID = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid mcast cipher suite %d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"ucast cipher data too short; len %u, n %u\00", align 1
@IEEE80211_CIPHER_AES_CCM = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_AES_OCB = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_TKIP = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_WEP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"no usable pairwise cipher suite found (w=%d)\00", align 1
@IEEE80211_REASON_PAIRWISE_CIPHER_INVALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"key mgmt alg data too short; len %u, n %u\00", align 1
@RSN_ASE_8021X_UNSPEC = common dso_local global i32 0, align 4
@RSN_ASE_8021X_PSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32*, %struct.ieee80211_rsnparms*, %struct.ieee80211_frame*)* @ieee80211_parse_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_parse_rsn(%struct.ieee80211vap* %0, i32* %1, %struct.ieee80211_rsnparms* %2, %struct.ieee80211_frame* %3) #0 {
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
  %21 = load i32, i32* @IEEE80211_F_WPA2, align 4
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
  br label %282

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %40 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %41 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %39, i32 %42, %struct.ieee80211_frame* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %46, i32* %5, align 4
  br label %282

47:                                               ; preds = %35
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i8* @le16dec(i32* %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @RSN_VERSION, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %58 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %59 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %57, i32 %60, %struct.ieee80211_frame* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @IEEE80211_REASON_UNSUPP_RSN_IE_VERSION, align 4
  store i32 %64, i32* %5, align 4
  br label %282

65:                                               ; preds = %47
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %10, align 4
  %70 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %71 = call i32 @memset(%struct.ieee80211_rsnparms* %70, i32 0, i32 32)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %73, i32 0, i32 5
  %75 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %75, i32 0, i32 0
  %77 = call i32 @rsn_cipher(i32* %72, i32* %74, i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %65
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %82 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %83 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @le32dec(i32* %86)
  %88 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %81, i32 %84, %struct.ieee80211_frame* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @IEEE80211_REASON_GROUP_CIPHER_INVALID, align 4
  store i32 %89, i32* %5, align 4
  br label %282

90:                                               ; preds = %65
  %91 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_CIPHER_NONE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %98 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %99 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %102 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %97, i32 %100, %struct.ieee80211_frame* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @IEEE80211_REASON_GROUP_CIPHER_INVALID, align 4
  store i32 %106, i32* %5, align 4
  br label %282

107:                                              ; preds = %90
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 4
  store i32 %111, i32* %10, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = call i8* @le16dec(i32* %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32* %116, i32** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %13, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 %121, 2
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %107
  %125 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %126 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %127 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %125, i32 %128, %struct.ieee80211_frame* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %133, i32* %5, align 4
  br label %282

134:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %155, %134
  %136 = load i32, i32* %13, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %141 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %140, i32 0, i32 4
  %142 = call i32 @rsn_cipher(i32* %139, i32* %141, i32* %14)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i32, i32* %14, align 4
  %147 = shl i32 1, %146
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %145, %138
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %153, 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %13, align 4
  br label %135

158:                                              ; preds = %135
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @IEEE80211_CIPHER_AES_CCM, align 4
  %161 = shl i32 1, %160
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @IEEE80211_CIPHER_AES_CCM, align 4
  %166 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %222

168:                                              ; preds = %158
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @IEEE80211_CIPHER_AES_OCB, align 4
  %171 = shl i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* @IEEE80211_CIPHER_AES_OCB, align 4
  %176 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %177 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %221

178:                                              ; preds = %168
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @IEEE80211_CIPHER_TKIP, align 4
  %181 = shl i32 1, %180
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @IEEE80211_CIPHER_TKIP, align 4
  %186 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %187 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %220

188:                                              ; preds = %178
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @IEEE80211_CIPHER_NONE, align 4
  %191 = shl i32 1, %190
  %192 = and i32 %189, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %188
  %195 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @IEEE80211_CIPHER_WEP, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %202 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IEEE80211_CIPHER_TKIP, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200, %194
  %207 = load i32, i32* @IEEE80211_CIPHER_NONE, align 4
  %208 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %209 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  br label %219

210:                                              ; preds = %200, %188
  %211 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %212 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %213 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %211, i32 %214, %struct.ieee80211_frame* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @IEEE80211_REASON_PAIRWISE_CIPHER_INVALID, align 4
  store i32 %218, i32* %5, align 4
  br label %282

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219, %184
  br label %221

221:                                              ; preds = %220, %174
  br label %222

222:                                              ; preds = %221, %164
  %223 = load i32*, i32** %7, align 8
  %224 = call i8* @le16dec(i32* %223)
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %13, align 4
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  store i32* %227, i32** %7, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sub nsw i32 %228, 2
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %13, align 4
  %232 = mul nsw i32 %231, 4
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %222
  %235 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %236 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %237 = load i32, i32* @IEEE80211_MSG_WPA, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %235, i32 %238, %struct.ieee80211_frame* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %240, i32 %241)
  %243 = load i32, i32* @IEEE80211_REASON_IE_INVALID, align 4
  store i32 %243, i32* %5, align 4
  br label %282

244:                                              ; preds = %222
  store i32 0, i32* %11, align 4
  br label %245

245:                                              ; preds = %257, %244
  %246 = load i32, i32* %13, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 @rsn_keymgmt(i32* %249)
  %251 = load i32, i32* %11, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %11, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  store i32* %254, i32** %7, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sub nsw i32 %255, 4
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %13, align 4
  br label %245

260:                                              ; preds = %245
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* @RSN_ASE_8021X_UNSPEC, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = load i32, i32* @RSN_ASE_8021X_UNSPEC, align 4
  %267 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %268 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  br label %273

269:                                              ; preds = %260
  %270 = load i32, i32* @RSN_ASE_8021X_PSK, align 4
  %271 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %272 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %269, %265
  %274 = load i32, i32* %10, align 4
  %275 = icmp sgt i32 %274, 2
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32*, i32** %7, align 8
  %278 = call i8* @le16dec(i32* %277)
  %279 = load %struct.ieee80211_rsnparms*, %struct.ieee80211_rsnparms** %8, align 8
  %280 = getelementptr inbounds %struct.ieee80211_rsnparms, %struct.ieee80211_rsnparms* %279, i32 0, i32 3
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %276, %273
  store i32 0, i32* %5, align 4
  br label %282

282:                                              ; preds = %281, %234, %210, %124, %96, %80, %56, %38, %24
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local i32 @IEEE80211_DISCARD_IE(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) #1

declare dso_local i8* @le16dec(i32*) #1

declare dso_local i32 @memset(%struct.ieee80211_rsnparms*, i32, i32) #1

declare dso_local i32 @rsn_cipher(i32*, i32*, i32*) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @rsn_keymgmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
