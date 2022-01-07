; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_parse_flowsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_parse_flowsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg_s = type { i32, i32, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dn_fs }
%struct.dn_fs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_queue = type { %struct.TYPE_2__* }

@.str = private unnamed_addr constant [33 x i8] c"--- pass %d flows %d flowsets %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"warning, overwriting fs %s with %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no fsconfig\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"weight_max\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"w_steps\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"len_max\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"l_steps\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"flows\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"weight %d..%d (%d) len %d..%d (%d) flows %d\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"wrong parameters %s\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"----- fs %4d weight %4d lmax %4d X %4d flows %d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"error in number of flowsets\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"%d flows on %d flowsets\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"fs %3d w %5d l %4d flow %5d .. %5d y %6d .. %6d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg_s*, i8*)* @parse_flowsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_flowsets(%struct.cfg_s* %0, i8* %1) #0 {
  %3 = alloca %struct.cfg_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dn_fs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.dn_fs*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.dn_fs*, align 8
  %28 = alloca %struct.dn_queue*, align 8
  store %struct.cfg_s* %0, %struct.cfg_s** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.dn_fs* null, %struct.dn_fs** %13, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp eq i8* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %34 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %37 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %2
  %43 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %44 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %49 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %56 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %2
  %58 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %59 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %64 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strdup(i8* %65)
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i8* [ %66, %62 ], [ null, %67 ]
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  br label %427

78:                                               ; preds = %68
  %79 = load i8*, i8** %5, align 8
  store i8* %79, i8** %7, align 8
  br label %80

80:                                               ; preds = %339, %78
  %81 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %81, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %340

83:                                               ; preds = %80
  store i8* null, i8** %15, align 8
  %84 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32 @getnum(i8* %84, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %16, align 4
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %15, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @getnum(i8* %94, i8** %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %95, %92 ], [ %97, %96 ]
  store i32 %99, i32* %17, align 4
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = call i32 @getnum(i8* %104, i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %112

106:                                              ; preds = %98
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 2
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i32 [ %105, %102 ], [ %111, %106 ]
  store i32 %113, i32* %18, align 4
  %114 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %115 = call i32 @getnum(i8* %114, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1000, i32* %20, align 4
  br label %119

119:                                              ; preds = %118, %112
  %120 = load i8*, i8** %15, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i8*, i8** %15, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = call i32 @getnum(i8* %124, i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %20, align 4
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i32 [ %125, %122 ], [ %127, %126 ]
  store i32 %129, i32* %21, align 4
  %130 = load i8*, i8** %15, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i8*, i8** %15, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = call i32 @getnum(i8* %134, i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %142

136:                                              ; preds = %128
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 2
  br label %142

142:                                              ; preds = %136, %132
  %143 = phi i32 [ %135, %132 ], [ %141, %136 ]
  store i32 %143, i32* %22, align 4
  %144 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %145 = call i32 @getnum(i8* %144, i8** null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 1, i32* %24, align 4
  br label %149

149:                                              ; preds = %148, %142
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %24, align 4
  %157 = call i32 (i32, i8*, ...) @DX(i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %16, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %174, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %20, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %24, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171, %167, %164, %160, %149
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 (i32, i8*, ...) @DX(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %175)
  br label %427

177:                                              ; preds = %171
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %18, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %22, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %336, %177
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %18, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %339

189:                                              ; preds = %185
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %16, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load i32, i32* %11, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %18, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %18, align 4
  %201 = sub nsw i32 %200, 1
  br label %202

202:                                              ; preds = %199, %198
  %203 = phi i32 [ 1, %198 ], [ %201, %199 ]
  %204 = sdiv i32 %195, %203
  %205 = add nsw i32 %190, %204
  store i32 %205, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %330, %202
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %22, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %335

210:                                              ; preds = %206
  %211 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %212 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %211, i32 0, i32 5
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  store %struct.dn_fs* %217, %struct.dn_fs** %25, align 8
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %20, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load i32, i32* %12, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load i32, i32* %22, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %210
  br label %230

227:                                              ; preds = %210
  %228 = load i32, i32* %22, align 4
  %229 = sub nsw i32 %228, 1
  br label %230

230:                                              ; preds = %227, %226
  %231 = phi i32 [ 1, %226 ], [ %229, %227 ]
  %232 = sdiv i32 %223, %231
  %233 = add nsw i32 %218, %232
  store i32 %233, i32* %23, align 4
  %234 = load i32, i32* %19, align 4
  %235 = mul nsw i32 %234, 2048
  %236 = load i32, i32* %23, align 4
  %237 = sdiv i32 %235, %236
  store i32 %237, i32* %26, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %23, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load i32, i32* %24, align 4
  %243 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %14, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %230
  br label %330

247:                                              ; preds = %230
  %248 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %249 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %248, i32 0, i32 5
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = icmp eq %struct.TYPE_2__* %250, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %247
  %253 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %254 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %9, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %252, %247
  %259 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %427

260:                                              ; preds = %252
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %24, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %19, align 4
  %267 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %268 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %266, i32* %270, align 4
  %271 = load i32, i32* %23, align 4
  %272 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %273 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 %271, i32* %275, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %278 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %24, align 4
  %280 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %281 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  %282 = load %struct.dn_fs*, %struct.dn_fs** %13, align 8
  %283 = icmp eq %struct.dn_fs* %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %260
  br label %289

285:                                              ; preds = %260
  %286 = load %struct.dn_fs*, %struct.dn_fs** %13, align 8
  %287 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  br label %289

289:                                              ; preds = %285, %284
  %290 = phi i32 [ 0, %284 ], [ %288, %285 ]
  %291 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %292 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 4
  %293 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %294 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %293, i32 0, i32 3
  store i32 %290, i32* %294, align 8
  %295 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %296 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %299 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %297, %300
  %302 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %303 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* %26, align 4
  %305 = load i32, i32* %24, align 4
  %306 = mul nsw i32 %304, %305
  %307 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %308 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 4
  %309 = load %struct.dn_fs*, %struct.dn_fs** %13, align 8
  %310 = icmp eq %struct.dn_fs* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %289
  br label %316

312:                                              ; preds = %289
  %313 = load %struct.dn_fs*, %struct.dn_fs** %13, align 8
  %314 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 4
  br label %316

316:                                              ; preds = %312, %311
  %317 = phi i32 [ 0, %311 ], [ %315, %312 ]
  %318 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %319 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %318, i32 0, i32 7
  store i32 %317, i32* %319, align 8
  %320 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %321 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %324 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %322, %325
  %327 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  %328 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %327, i32 0, i32 8
  store i32 %326, i32* %328, align 4
  %329 = load %struct.dn_fs*, %struct.dn_fs** %25, align 8
  store %struct.dn_fs* %329, %struct.dn_fs** %13, align 8
  br label %330

330:                                              ; preds = %316, %246
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %12, align 4
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  br label %206

335:                                              ; preds = %206
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  br label %185

339:                                              ; preds = %185
  br label %80

340:                                              ; preds = %80
  %341 = load i32, i32* %8, align 4
  %342 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %343 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  %344 = load i32, i32* %9, align 4
  %345 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %346 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* %10, align 4
  %348 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %349 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* %14, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %340
  br label %427

353:                                              ; preds = %340
  %354 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %355 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %358 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (i32, i8*, ...) @DX(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %356, i32 %359)
  store i32 0, i32* %11, align 4
  br label %361

361:                                              ; preds = %424, %353
  %362 = load i32, i32* %11, align 4
  %363 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %364 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %362, %365
  br i1 %366, label %367, label %427

367:                                              ; preds = %361
  %368 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %369 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %368, i32 0, i32 5
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** %369, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 0
  store %struct.dn_fs* %374, %struct.dn_fs** %27, align 8
  %375 = load i32, i32* %11, align 4
  %376 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %377 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %382 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %387 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %390 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %393 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %396 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %395, i32 0, i32 8
  %397 = load i32, i32* %396, align 4
  %398 = call i32 (i32, i8*, ...) @DX(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 %375, i32 %380, i32 %385, i32 %388, i32 %391, i32 %394, i32 %397)
  %399 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %400 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 4
  store i32 %401, i32* %12, align 4
  br label %402

402:                                              ; preds = %420, %367
  %403 = load i32, i32* %12, align 4
  %404 = load %struct.dn_fs*, %struct.dn_fs** %27, align 8
  %405 = getelementptr inbounds %struct.dn_fs, %struct.dn_fs* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %423

408:                                              ; preds = %402
  %409 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %410 = load i32, i32* %12, align 4
  %411 = call %struct.dn_queue* @FI2Q(%struct.cfg_s* %409, i32 %410)
  store %struct.dn_queue* %411, %struct.dn_queue** %28, align 8
  %412 = load %struct.cfg_s*, %struct.cfg_s** %3, align 8
  %413 = getelementptr inbounds %struct.cfg_s, %struct.cfg_s* %412, i32 0, i32 5
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = load i32, i32* %11, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i64 %416
  %418 = load %struct.dn_queue*, %struct.dn_queue** %28, align 8
  %419 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %418, i32 0, i32 0
  store %struct.TYPE_2__* %417, %struct.TYPE_2__** %419, align 8
  br label %420

420:                                              ; preds = %408
  %421 = load i32, i32* %12, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %12, align 4
  br label %402

423:                                              ; preds = %402
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %11, align 4
  br label %361

427:                                              ; preds = %77, %174, %258, %352, %361
  ret void
}

declare dso_local i32 @DX(i32, i8*, ...) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @getnum(i8*, i8**, i8*) #1

declare dso_local %struct.dn_queue* @FI2Q(%struct.cfg_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
