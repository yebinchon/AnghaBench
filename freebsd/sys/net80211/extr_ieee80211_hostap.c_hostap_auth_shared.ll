; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_hostap_auth_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_hostap_auth_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32, i32, i32*, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, i32, %struct.TYPE_4__, %struct.ieee80211_node*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211vap*)* }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"state %d\00", align 1
@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_MSG_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"shared key auth\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" PRIVACY is disabled\00", align 1
@IEEE80211_STATUS_ALG = common dso_local global i32 0, align 4
@IEEE80211_AUTH_AUTO = common dso_local global i32 0, align 4
@IEEE80211_AUTH_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"bad sta auth mode %u\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ie %d/%d too long\00", align 1
@IEEE80211_STATUS_CHALLENGE = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_CHALLENGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"no challenge\00", align 1
@IEEE80211_CHALLENGE_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"bad challenge len %d\00", align 1
@IEEE80211_NODE_AREF = common dso_local global i32 0, align 4
@IEEE80211_NODE_ASSOCID = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"shared key %sauth request\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@IEEE80211_MACCMD_POLICY_RADIUS = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"station authentication defered (radius acl)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"shared key response\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"unknown station\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"no challenge recorded\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"challenge mismatch\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"station authenticated (shared key)\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"bad seq %d\00", align 1
@IEEE80211_STATUS_SEQUENCE = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*, i32, i32, i32, i32)* @hostap_auth_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_auth_shared(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %9, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 6
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %22, align 8
  store %struct.ieee80211vap* %23, %struct.ieee80211vap** %17, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_S_RUN, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %29, i8* %33)
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %8
  %42 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %43 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @IEEE80211_STATUS_ALG, align 4
  store i32 %48, i32* %20, align 4
  br label %358

49:                                               ; preds = %8
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IEEE80211_AUTH_AUTO, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IEEE80211_AUTH_SHARED, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %63 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %62, i32 %63, i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %72 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @IEEE80211_STATUS_ALG, align 4
  store i32 %76, i32* %20, align 4
  br label %358

77:                                               ; preds = %55, %49
  store i32* null, i32** %18, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %138

82:                                               ; preds = %77
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = icmp sgt i64 %87, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %82
  %96 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %97 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = sub nsw i64 %108, %114
  %116 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %103, i64 %115)
  %117 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %118 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @IEEE80211_STATUS_CHALLENGE, align 4
  store i32 %122, i32* %20, align 4
  br label %358

123:                                              ; preds = %82
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IEEE80211_ELEMID_CHALLENGE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32*, i32** %11, align 8
  store i32* %129, i32** %18, align 8
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 2
  %135 = load i32*, i32** %11, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %11, align 8
  br label %138

138:                                              ; preds = %130, %77
  %139 = load i32, i32* %15, align 4
  switch i32 %139, label %179 [
    i32 130, label %140
    i32 128, label %140
  ]

140:                                              ; preds = %138, %138
  %141 = load i32*, i32** %18, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %145 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %146 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %144, i32 %145, i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %150 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %151 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @IEEE80211_STATUS_CHALLENGE, align 4
  store i32 %155, i32* %20, align 4
  br label %358

156:                                              ; preds = %140
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IEEE80211_CHALLENGE_LEN, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %164 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %165 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %166 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %18, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %163, i32 %164, i32 %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %173 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* @IEEE80211_STATUS_CHALLENGE, align 4
  store i32 %177, i32* %20, align 4
  br label %358

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %138, %178
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %15, align 4
  switch i32 %181, label %338 [
    i32 129, label %182
    i32 128, label %274
  ]

182:                                              ; preds = %180
  %183 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %184 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %185 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %184, i32 0, i32 3
  %186 = load %struct.ieee80211_node*, %struct.ieee80211_node** %185, align 8
  %187 = icmp eq %struct.ieee80211_node* %183, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %190 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %191 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call %struct.ieee80211_node* @ieee80211_dup_bss(%struct.ieee80211vap* %189, i32 %192)
  store %struct.ieee80211_node* %193, %struct.ieee80211_node** %9, align 8
  %194 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %195 = icmp eq %struct.ieee80211_node* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %370

197:                                              ; preds = %188
  store i32 1, i32* %19, align 4
  br label %209

198:                                              ; preds = %182
  %199 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %200 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IEEE80211_NODE_AREF, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %207 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %206)
  br label %208

208:                                              ; preds = %205, %198
  store i32 0, i32* %19, align 4
  br label %209

209:                                              ; preds = %208, %197
  %210 = load i32, i32* @IEEE80211_NODE_AREF, align 4
  %211 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %212 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* @IEEE80211_NODE_ASSOCID, align 4
  %216 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %217 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %221 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @IEEE80211_RSSI_LPF(i32 %222, i32 %223)
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %227 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %229 = call i32 @ieee80211_alloc_challenge(%struct.ieee80211_node* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %209
  br label %370

232:                                              ; preds = %209
  %233 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %234 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @IEEE80211_CHALLENGE_LEN, align 4
  %237 = call i32 @get_random_bytes(i32* %235, i32 %236)
  %238 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %239 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %240 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %243 = load i32, i32* %19, align 4
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %247 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %238, i32 %241, %struct.ieee80211_node* %242, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %246)
  %248 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %249 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %248, i32 0, i32 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = icmp ne %struct.TYPE_3__* %250, null
  br i1 %251, label %252, label %273

252:                                              ; preds = %232
  %253 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %254 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %253, i32 0, i32 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %256, align 8
  %258 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %259 = call i32 %257(%struct.ieee80211vap* %258)
  %260 = load i32, i32* @IEEE80211_MACCMD_POLICY_RADIUS, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %252
  %263 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %264 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %265 = load i32, i32* @IEEE80211_MSG_ACL, align 4
  %266 = or i32 %264, %265
  %267 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %268 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %263, i32 %266, i32 %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %271 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %272 = call i32 @ieee80211_notify_node_auth(%struct.ieee80211_node* %271)
  br label %370

273:                                              ; preds = %252, %232
  br label %352

274:                                              ; preds = %180
  %275 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %276 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %277 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %276, i32 0, i32 3
  %278 = load %struct.ieee80211_node*, %struct.ieee80211_node** %277, align 8
  %279 = icmp eq %struct.ieee80211_node* %275, %278
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %282 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %283 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %284 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %281, i32 %282, i32 %285, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %370

287:                                              ; preds = %274
  %288 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %289 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %305

292:                                              ; preds = %287
  %293 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %294 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %295 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %296 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %293, i32 %294, i32 %297, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %299 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %300 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 4
  %304 = load i32, i32* @IEEE80211_STATUS_CHALLENGE, align 4
  store i32 %304, i32* %20, align 4
  br label %358

305:                                              ; preds = %287
  %306 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %307 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %306, i32 0, i32 4
  %308 = load i32*, i32** %307, align 8
  %309 = load i32*, i32** %18, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32*, i32** %18, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @memcmp(i32* %308, i32* %310, i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %329

316:                                              ; preds = %305
  %317 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %318 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %319 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %320 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %317, i32 %318, i32 %321, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %323 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %324 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load i32, i32* @IEEE80211_STATUS_CHALLENGE, align 4
  store i32 %328, i32* %20, align 4
  br label %358

329:                                              ; preds = %305
  %330 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %331 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %332 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %333 = or i32 %331, %332
  %334 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %335 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %330, i32 %333, %struct.ieee80211_node* %334, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %336 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %337 = call i32 @ieee80211_node_authorize(%struct.ieee80211_node* %336)
  br label %352

338:                                              ; preds = %180
  %339 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %340 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %341 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %342 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %15, align 4
  %345 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %339, i32 %340, i32 %343, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %344)
  %346 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  %347 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* @IEEE80211_STATUS_SEQUENCE, align 4
  store i32 %351, i32* %20, align 4
  br label %358

352:                                              ; preds = %329, %273
  %353 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %354 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %355, 1
  %357 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %353, i32 %354, i32 %356)
  br label %370

358:                                              ; preds = %338, %316, %292, %162, %143, %95, %61, %41
  %359 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %360 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %10, align 8
  %361 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %364 = load i32, i32* %15, align 4
  %365 = add nsw i32 %364, 1
  %366 = load i32, i32* %20, align 4
  %367 = shl i32 %366, 16
  %368 = or i32 %365, %367
  %369 = call i32 @ieee80211_send_error(%struct.ieee80211_node* %359, i32 %362, i32 %363, i32 %368)
  br label %370

370:                                              ; preds = %358, %352, %280, %262, %231, %196
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, ...) #1

declare dso_local %struct.ieee80211_node* @ieee80211_dup_bss(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_RSSI_LPF(i32, i32) #1

declare dso_local i32 @ieee80211_alloc_challenge(%struct.ieee80211_node*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ieee80211_notify_node_auth(%struct.ieee80211_node*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_node_authorize(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_send_error(%struct.ieee80211_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
