; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_generic_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_generic_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i8*, i32*, i8*, i8* }
%struct.params = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@S_ASSOCIATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Got data when not associated!\0A\00", align 1
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Got weird data frame stype=%d\0A\00", align 1
@IEEE80211_FC0_SUBTYPE_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Got wep but i aint wep %s->%s %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't decrypt %s->%s %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Wrote %d/%d\0A\00", align 1
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_process(%struct.ieee80211_frame* %0, %struct.params* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca %struct.params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca [18 x i8], align 16
  %16 = alloca [18 x i8], align 16
  %17 = alloca [18 x i8], align 16
  %18 = alloca [18 x i8], align 16
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %4, align 8
  store %struct.params* %1, %struct.params** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.params*, %struct.params** %5, align 8
  %23 = getelementptr inbounds %struct.params, %struct.params* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @memcmp(i8* %21, i32 %24, i32 6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %291

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %44 = load %struct.params*, %struct.params** %5, align 8
  %45 = getelementptr inbounds %struct.params, %struct.params* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @for_me(%struct.ieee80211_frame* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %103

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %49
  %54 = load %struct.params*, %struct.params** %5, align 8
  %55 = getelementptr inbounds %struct.params, %struct.params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %60 = call i8* @seqno(%struct.ieee80211_frame* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.params*, %struct.params** %5, align 8
  %63 = getelementptr inbounds %struct.params, %struct.params* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %102

64:                                               ; preds = %53
  %65 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %66 = call i8* @seqno(%struct.ieee80211_frame* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.params*, %struct.params** %5, align 8
  %70 = getelementptr inbounds %struct.params, %struct.params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = load %struct.params*, %struct.params** %5, align 8
  %75 = getelementptr inbounds %struct.params, %struct.params* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.params*, %struct.params** %5, align 8
  %83 = getelementptr inbounds %struct.params, %struct.params* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.params*, %struct.params** %5, align 8
  %87 = getelementptr inbounds %struct.params, %struct.params* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %101

89:                                               ; preds = %64
  %90 = load %struct.params*, %struct.params** %5, align 8
  %91 = getelementptr inbounds %struct.params, %struct.params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp sgt i32 %94, 1000
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.params*, %struct.params** %5, align 8
  %98 = getelementptr inbounds %struct.params, %struct.params* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %100

99:                                               ; preds = %89
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %58
  br label %103

103:                                              ; preds = %102, %49, %28
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %291

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %291, label %110

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %110
  %120 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.params*, %struct.params** %5, align 8
  %124 = getelementptr inbounds %struct.params, %struct.params* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @memcmp(i8* %122, i32 %125, i32 6)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %291

129:                                              ; preds = %119
  br label %141

130:                                              ; preds = %110
  %131 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %132 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.params*, %struct.params** %5, align 8
  %135 = getelementptr inbounds %struct.params, %struct.params* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @memcmp(i8* %133, i32 %136, i32 6)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %291

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %129
  %142 = load %struct.params*, %struct.params** %5, align 8
  %143 = getelementptr inbounds %struct.params, %struct.params* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @S_ASSOCIATED, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %291

149:                                              ; preds = %141
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  br label %291

158:                                              ; preds = %149
  %159 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %160 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %169 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %170 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @memcpy(i8* %168, i8* %171, i32 6)
  %173 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %174 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %175 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @memcpy(i8* %173, i8* %176, i32 6)
  br label %189

178:                                              ; preds = %158
  %179 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %180 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %181 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @memcpy(i8* %179, i8* %182, i32 6)
  %184 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %185 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %186 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @memcpy(i8* %184, i8* %187, i32 6)
  br label %189

189:                                              ; preds = %178, %167
  %190 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %191 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %190, i64 1
  %192 = bitcast %struct.ieee80211_frame* %191 to i8*
  store i8* %192, i8** %11, align 8
  %193 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %250

201:                                              ; preds = %189
  %202 = load %struct.params*, %struct.params** %5, align 8
  %203 = getelementptr inbounds %struct.params, %struct.params* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %208 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %209 = call i32 @mac2str(i8* %207, i8* %208)
  %210 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %211 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %212 = call i32 @mac2str(i8* %210, i8* %211)
  %213 = getelementptr inbounds [18 x i8], [18 x i8]* %15, i64 0, i64 0
  %214 = getelementptr inbounds [18 x i8], [18 x i8]* %16, i64 0, i64 0
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = sub i64 %216, 32
  %218 = sub i64 %217, 8
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %213, i8* %214, i64 %218)
  br label %291

220:                                              ; preds = %201
  %221 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.params*, %struct.params** %5, align 8
  %224 = getelementptr inbounds %struct.params, %struct.params* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.params*, %struct.params** %5, align 8
  %227 = getelementptr inbounds %struct.params, %struct.params* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @wep_decrypt(%struct.ieee80211_frame* %221, i32 %222, i32 %225, i32 %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %245

231:                                              ; preds = %220
  %232 = getelementptr inbounds [18 x i8], [18 x i8]* %17, i64 0, i64 0
  %233 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %234 = call i32 @mac2str(i8* %232, i8* %233)
  %235 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %236 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %237 = call i32 @mac2str(i8* %235, i8* %236)
  %238 = getelementptr inbounds [18 x i8], [18 x i8]* %17, i64 0, i64 0
  %239 = getelementptr inbounds [18 x i8], [18 x i8]* %18, i64 0, i64 0
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = sub i64 %241, 32
  %243 = sub i64 %242, 8
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %238, i8* %239, i64 %243)
  br label %291

245:                                              ; preds = %220
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 4
  store i8* %247, i8** %11, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sub nsw i32 %248, 8
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %245, %189
  %251 = load i8*, i8** %11, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 6
  store i8* %252, i8** %11, align 8
  %253 = load i8*, i8** %11, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 -6
  store i8* %254, i8** %11, align 8
  %255 = load i8*, i8** %11, align 8
  %256 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %257 = call i32 @memcpy(i8* %255, i8* %256, i32 6)
  %258 = load i8*, i8** %11, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 -6
  store i8* %259, i8** %11, align 8
  %260 = load i8*, i8** %11, align 8
  %261 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %262 = call i32 @memcpy(i8* %260, i8* %261, i32 6)
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = sub i64 %264, 32
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = sub nsw i32 %267, 8
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = add nsw i32 %269, 14
  store i32 %270, i32* %6, align 4
  %271 = load %struct.params*, %struct.params** %5, align 8
  %272 = getelementptr inbounds %struct.params, %struct.params* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i8*, i8** %11, align 8
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @write(i32 %273, i8* %274, i32 %275)
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %281

279:                                              ; preds = %250
  %280 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %250
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %6, align 4
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %286, i32 %287)
  %289 = call i32 @exit(i32 1) #3
  unreachable

290:                                              ; preds = %281
  br label %291

291:                                              ; preds = %27, %128, %139, %147, %153, %206, %231, %290, %107, %103
  ret void
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @for_me(%struct.ieee80211_frame*, i32) #1

declare dso_local i8* @seqno(%struct.ieee80211_frame*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mac2str(i8*, i8*) #1

declare dso_local i32 @wep_decrypt(%struct.ieee80211_frame*, i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
