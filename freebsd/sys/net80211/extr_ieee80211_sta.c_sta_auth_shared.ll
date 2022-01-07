; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_auth_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_auth_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32*, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_MSG_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"shared key auth\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" PRIVACY is disabled\00", align 1
@IEEE80211_AUTH_AUTO = common dso_local global i32 0, align 4
@IEEE80211_AUTH_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"bad sta auth mode %u\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ie %d/%d too long\00", align 1
@IEEE80211_ELEMID_CHALLENGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"no challenge\00", align 1
@IEEE80211_CHALLENGE_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"bad challenge len %d\00", align 1
@IEEE80211_S_AUTH = common dso_local global i64 0, align 8
@M_80211_NODE = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"shared key auth failed (reason %d)\00", align 1
@IEEE80211_S_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"bad seq %d\00", align 1
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@IEEE80211_SCAN_FAIL_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*, i32, i32, i32, i32)* @sta_auth_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_auth_shared(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca %struct.ieee80211_frame*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211vap*, align 8
  %18 = alloca i32*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %9, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 3
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %20, align 8
  store %struct.ieee80211vap* %21, %struct.ieee80211vap** %17, align 8
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %30 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %240

35:                                               ; preds = %8
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IEEE80211_AUTH_AUTO, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_AUTH_SHARED, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %49 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %240

62:                                               ; preds = %41, %35
  store i32* null, i32** %18, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ult i32* %64, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %62
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = icmp sgt i64 %72, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %67
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %82 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = sub nsw i64 %93, %99
  %101 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %88, i64 %100)
  %102 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %103 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %240

107:                                              ; preds = %67
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IEEE80211_ELEMID_CHALLENGE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32*, i32** %11, align 8
  store i32* %113, i32** %18, align 8
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 2
  %119 = load i32*, i32** %11, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %11, align 8
  br label %122

122:                                              ; preds = %114, %62
  %123 = load i32, i32* %15, align 4
  switch i32 %123, label %161 [
    i32 130, label %124
    i32 128, label %124
  ]

124:                                              ; preds = %122, %122
  %125 = load i32*, i32** %18, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %129 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %130 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %128, i32 %129, i32 %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %135 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %240

139:                                              ; preds = %124
  %140 = load i32*, i32** %18, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IEEE80211_CHALLENGE_LEN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %147 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %148 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %146, i32 %147, i32 %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %156 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %240

160:                                              ; preds = %139
  br label %161

161:                                              ; preds = %122, %160
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %164 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IEEE80211_S_AUTH, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %251

169:                                              ; preds = %162
  %170 = load i32, i32* %15, align 4
  switch i32 %170, label %228 [
    i32 129, label %171
    i32 130, label %208
  ]

171:                                              ; preds = %169
  %172 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %173 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %178 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @M_80211_NODE, align 4
  %181 = call i32 @IEEE80211_FREE(i32* %179, i32 %180)
  %182 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %183 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %182, i32 0, i32 1
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %184
  %188 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %189 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %190 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @IEEE80211_NOTE_FRAME(%struct.ieee80211vap* %188, i32 %191, %struct.ieee80211_frame* %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  %195 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %196 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %202 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  br label %251

204:                                              ; preds = %184
  %205 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %206 = load i32, i32* @IEEE80211_S_ASSOC, align 4
  %207 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %205, i32 %206, i32 0)
  br label %239

208:                                              ; preds = %169
  %209 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %210 = call i32 @ieee80211_alloc_challenge(%struct.ieee80211_node* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  br label %251

213:                                              ; preds = %208
  %214 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %215 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32*, i32** %18, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32*, i32** %18, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @memcpy(i32* %216, i32* %218, i32 %221)
  %223 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %224 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 1
  %227 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %223, i32 %224, i32 %226)
  br label %239

228:                                              ; preds = %169
  %229 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %230 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %231 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @IEEE80211_DISCARD(%struct.ieee80211vap* %229, i32 %230, %struct.ieee80211_frame* %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %232)
  %234 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %235 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  br label %251

239:                                              ; preds = %213, %204
  br label %251

240:                                              ; preds = %145, %127, %80, %47, %28
  %241 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %242 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IEEE80211_S_AUTH, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %248 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %249 = load i32, i32* @IEEE80211_SCAN_FAIL_STATUS, align 4
  %250 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %168, %187, %212, %228, %239, %246, %240
  ret void
}

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @IEEE80211_FREE(i32*, i32) #1

declare dso_local i32 @IEEE80211_NOTE_FRAME(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i32) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @ieee80211_alloc_challenge(%struct.ieee80211_node*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
