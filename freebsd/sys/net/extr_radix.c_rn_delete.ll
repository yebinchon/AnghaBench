; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_mask*, %struct.radix_node*, %struct.radix_node*, i8*, i8* }
%struct.radix_mask = type { i64, %struct.radix_mask*, i8*, %struct.radix_node* }
%struct.radix_head = type { i32, %struct.radix_node* }

@RNF_NORMAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rn_delete: inconsistent annotation\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rn_delete: couldn't find our annotation\0A\00", align 1
@RNF_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"rn_delete: couldn't find us\0A\00", align 1
@RNF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"rn_delete: Orphaned Mask %p at %p\0A\00", align 1
@rn_clist = common dso_local global %struct.radix_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_delete(i8* %0, i8* %1, %struct.radix_head* %2) #0 {
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.radix_node*, align 8
  %11 = alloca %struct.radix_node*, align 8
  %12 = alloca %struct.radix_mask*, align 8
  %13 = alloca %struct.radix_mask*, align 8
  %14 = alloca %struct.radix_mask**, align 8
  %15 = alloca %struct.radix_node*, align 8
  %16 = alloca %struct.radix_node*, align 8
  %17 = alloca %struct.radix_node*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radix_mask*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_head* %2, %struct.radix_head** %7, align 8
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %19, align 8
  %26 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %27 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %26, i32 0, i32 1
  %28 = load %struct.radix_node*, %struct.radix_node** %27, align 8
  store %struct.radix_node* %28, %struct.radix_node** %10, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %31 = call %struct.radix_node* @rn_search(i8* %29, %struct.radix_node* %30)
  store %struct.radix_node* %31, %struct.radix_node** %11, align 8
  %32 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %33 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %21, align 4
  %35 = load i8*, i8** %18, align 8
  %36 = call i32 @LEN(i8* %35)
  store i32 %36, i32* %22, align 4
  %37 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %37, %struct.radix_node** %16, align 8
  %38 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  store %struct.radix_node* %38, %struct.radix_node** %17, align 8
  %39 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %40 = icmp eq %struct.radix_node* %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %3
  %42 = load i8*, i8** %18, align 8
  %43 = load i32, i32* %21, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %47 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %46, i32 0, i32 11
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %21, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i64 @bcmp(i8* %45, i8* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41, %3
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

58:                                               ; preds = %41
  %59 = load i8*, i8** %19, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i8*, i8** %19, align 8
  %63 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %64 = getelementptr inbounds %struct.radix_head, %struct.radix_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %21, align 4
  %67 = call %struct.radix_node* @rn_addmask(i8* %62, i32 %65, i32 1, i32 %66)
  store %struct.radix_node* %67, %struct.radix_node** %10, align 8
  %68 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %69 = icmp eq %struct.radix_node* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

71:                                               ; preds = %61
  %72 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %73 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %72, i32 0, i32 11
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %19, align 8
  br label %75

75:                                               ; preds = %87, %71
  %76 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %77 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %76, i32 0, i32 10
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = icmp ne i8* %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %83 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %82, i32 0, i32 8
  %84 = load %struct.radix_node*, %struct.radix_node** %83, align 8
  store %struct.radix_node* %84, %struct.radix_node** %11, align 8
  %85 = icmp eq %struct.radix_node* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

87:                                               ; preds = %81
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %58
  %90 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %91 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %90, i32 0, i32 10
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %96 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %95, i32 0, i32 7
  %97 = load %struct.radix_mask*, %struct.radix_mask** %96, align 8
  store %struct.radix_mask* %97, %struct.radix_mask** %12, align 8
  store %struct.radix_mask* %97, %struct.radix_mask** %13, align 8
  %98 = icmp eq %struct.radix_mask* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89
  br label %210

100:                                              ; preds = %94
  %101 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %102 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RNF_NORMAL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %109 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %108, i32 0, i32 3
  %110 = load %struct.radix_node*, %struct.radix_node** %109, align 8
  %111 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %112 = icmp ne %struct.radix_node* %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %115 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %107
  %119 = load i32, i32* @LOG_ERR, align 4
  %120 = call i32 (i32, i8*, ...) @log(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

121:                                              ; preds = %113
  br label %141

122:                                              ; preds = %100
  %123 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %124 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %127 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %126, i32 0, i32 10
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = call i32 (i32, i8*, ...) @log(i32 %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %210

133:                                              ; preds = %122
  %134 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %135 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %210

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %121
  %142 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %143 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 -1, %144
  store i32 %145, i32* %20, align 4
  %146 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %147 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %146, i32 0, i32 6
  %148 = load %struct.radix_node*, %struct.radix_node** %147, align 8
  store %struct.radix_node* %148, %struct.radix_node** %8, align 8
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %151 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %210

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %171, %155
  %157 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %157, %struct.radix_node** %10, align 8
  %158 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %159 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %158, i32 0, i32 6
  %160 = load %struct.radix_node*, %struct.radix_node** %159, align 8
  store %struct.radix_node* %160, %struct.radix_node** %8, align 8
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %164 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp sle i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %169 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %170 = icmp ne %struct.radix_node* %168, %169
  br label %171

171:                                              ; preds = %167, %161
  %172 = phi i1 [ false, %161 ], [ %170, %167 ]
  br i1 %172, label %156, label %173

173:                                              ; preds = %171
  %174 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %175 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %174, i32 0, i32 7
  store %struct.radix_mask** %175, %struct.radix_mask*** %14, align 8
  br label %176

176:                                              ; preds = %192, %173
  %177 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  %178 = load %struct.radix_mask*, %struct.radix_mask** %177, align 8
  store %struct.radix_mask* %178, %struct.radix_mask** %12, align 8
  %179 = icmp ne %struct.radix_mask* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %182 = load %struct.radix_mask*, %struct.radix_mask** %13, align 8
  %183 = icmp eq %struct.radix_mask* %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %186 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %185, i32 0, i32 1
  %187 = load %struct.radix_mask*, %struct.radix_mask** %186, align 8
  %188 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  store %struct.radix_mask* %187, %struct.radix_mask** %188, align 8
  %189 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %190 = call i32 @R_Free(%struct.radix_mask* %189)
  br label %195

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %194 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %193, i32 0, i32 1
  store %struct.radix_mask** %194, %struct.radix_mask*** %14, align 8
  br label %176

195:                                              ; preds = %184, %176
  %196 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %197 = icmp eq %struct.radix_mask* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = load i32, i32* @LOG_ERR, align 4
  %200 = call i32 (i32, i8*, ...) @log(i32 %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %201 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %202 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @RNF_NORMAL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %208, %195
  br label %210

210:                                              ; preds = %209, %154, %139, %130, %99
  %211 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %212 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @RNF_ROOT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %496

218:                                              ; preds = %210
  %219 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %220 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %219, i32 0, i32 6
  %221 = load %struct.radix_node*, %struct.radix_node** %220, align 8
  store %struct.radix_node* %221, %struct.radix_node** %8, align 8
  %222 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %223 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %222, i32 0, i32 8
  %224 = load %struct.radix_node*, %struct.radix_node** %223, align 8
  store %struct.radix_node* %224, %struct.radix_node** %15, align 8
  %225 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %226 = icmp ne %struct.radix_node* %225, null
  br i1 %226, label %227, label %334

227:                                              ; preds = %218
  %228 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %229 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %230 = icmp eq %struct.radix_node* %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %227
  %232 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  store %struct.radix_node* %232, %struct.radix_node** %10, align 8
  %233 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %234 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %235 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %234, i32 0, i32 6
  store %struct.radix_node* %233, %struct.radix_node** %235, align 8
  %236 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %237 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %236, i32 0, i32 5
  %238 = load %struct.radix_node*, %struct.radix_node** %237, align 8
  %239 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %240 = icmp eq %struct.radix_node* %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %243 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %244 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %243, i32 0, i32 5
  store %struct.radix_node* %242, %struct.radix_node** %244, align 8
  br label %249

245:                                              ; preds = %231
  %246 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %247 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %248 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %247, i32 0, i32 4
  store %struct.radix_node* %246, %struct.radix_node** %248, align 8
  br label %249

249:                                              ; preds = %245, %241
  br label %291

250:                                              ; preds = %227
  %251 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  store %struct.radix_node* %251, %struct.radix_node** %9, align 8
  store %struct.radix_node* %251, %struct.radix_node** %10, align 8
  br label %252

252:                                              ; preds = %263, %250
  %253 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %254 = icmp ne %struct.radix_node* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %257 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %256, i32 0, i32 8
  %258 = load %struct.radix_node*, %struct.radix_node** %257, align 8
  %259 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %260 = icmp ne %struct.radix_node* %258, %259
  br label %261

261:                                              ; preds = %255, %252
  %262 = phi i1 [ false, %252 ], [ %260, %255 ]
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  %264 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %265 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %264, i32 0, i32 8
  %266 = load %struct.radix_node*, %struct.radix_node** %265, align 8
  store %struct.radix_node* %266, %struct.radix_node** %9, align 8
  br label %252

267:                                              ; preds = %261
  %268 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %269 = icmp ne %struct.radix_node* %268, null
  br i1 %269, label %270, label %287

270:                                              ; preds = %267
  %271 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %272 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %271, i32 0, i32 8
  %273 = load %struct.radix_node*, %struct.radix_node** %272, align 8
  %274 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %275 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %274, i32 0, i32 8
  store %struct.radix_node* %273, %struct.radix_node** %275, align 8
  %276 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %277 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %276, i32 0, i32 8
  %278 = load %struct.radix_node*, %struct.radix_node** %277, align 8
  %279 = icmp ne %struct.radix_node* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %270
  %281 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %282 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %283 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %282, i32 0, i32 8
  %284 = load %struct.radix_node*, %struct.radix_node** %283, align 8
  %285 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %284, i32 0, i32 6
  store %struct.radix_node* %281, %struct.radix_node** %285, align 8
  br label %286

286:                                              ; preds = %280, %270
  br label %290

287:                                              ; preds = %267
  %288 = load i32, i32* @LOG_ERR, align 4
  %289 = call i32 (i32, i8*, ...) @log(i32 %288, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %290

290:                                              ; preds = %287, %286
  br label %291

291:                                              ; preds = %290, %249
  %292 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %293 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %292, i64 1
  store %struct.radix_node* %293, %struct.radix_node** %8, align 8
  %294 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %295 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @RNF_ACTIVE, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %333

300:                                              ; preds = %291
  %301 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %302 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %301, i32 1
  store %struct.radix_node* %302, %struct.radix_node** %10, align 8
  %303 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %304 = bitcast %struct.radix_node* %302 to i8*
  %305 = bitcast %struct.radix_node* %303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %304, i8* align 8 %305, i64 80, i1 false)
  %306 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %307 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %306, i32 0, i32 6
  %308 = load %struct.radix_node*, %struct.radix_node** %307, align 8
  store %struct.radix_node* %308, %struct.radix_node** %9, align 8
  %309 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %310 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %309, i32 0, i32 5
  %311 = load %struct.radix_node*, %struct.radix_node** %310, align 8
  %312 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %313 = icmp eq %struct.radix_node* %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %300
  %315 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %316 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %317 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %316, i32 0, i32 5
  store %struct.radix_node* %315, %struct.radix_node** %317, align 8
  br label %322

318:                                              ; preds = %300
  %319 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %320 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %321 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %320, i32 0, i32 4
  store %struct.radix_node* %319, %struct.radix_node** %321, align 8
  br label %322

322:                                              ; preds = %318, %314
  %323 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %324 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %325 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %324, i32 0, i32 5
  %326 = load %struct.radix_node*, %struct.radix_node** %325, align 8
  %327 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %326, i32 0, i32 6
  store %struct.radix_node* %323, %struct.radix_node** %327, align 8
  %328 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %329 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %330 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %329, i32 0, i32 4
  %331 = load %struct.radix_node*, %struct.radix_node** %330, align 8
  %332 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %331, i32 0, i32 6
  store %struct.radix_node* %328, %struct.radix_node** %332, align 8
  br label %333

333:                                              ; preds = %322, %291
  br label %481

334:                                              ; preds = %218
  %335 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %336 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %335, i32 0, i32 5
  %337 = load %struct.radix_node*, %struct.radix_node** %336, align 8
  %338 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %339 = icmp eq %struct.radix_node* %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %334
  %341 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %342 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %341, i32 0, i32 4
  %343 = load %struct.radix_node*, %struct.radix_node** %342, align 8
  store %struct.radix_node* %343, %struct.radix_node** %10, align 8
  br label %348

344:                                              ; preds = %334
  %345 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %346 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %345, i32 0, i32 5
  %347 = load %struct.radix_node*, %struct.radix_node** %346, align 8
  store %struct.radix_node* %347, %struct.radix_node** %10, align 8
  br label %348

348:                                              ; preds = %344, %340
  %349 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %350 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %349, i32 0, i32 6
  %351 = load %struct.radix_node*, %struct.radix_node** %350, align 8
  store %struct.radix_node* %351, %struct.radix_node** %9, align 8
  %352 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %353 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %352, i32 0, i32 4
  %354 = load %struct.radix_node*, %struct.radix_node** %353, align 8
  %355 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %356 = icmp eq %struct.radix_node* %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %348
  %358 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %359 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %360 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %359, i32 0, i32 4
  store %struct.radix_node* %358, %struct.radix_node** %360, align 8
  br label %365

361:                                              ; preds = %348
  %362 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %363 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %364 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %363, i32 0, i32 5
  store %struct.radix_node* %362, %struct.radix_node** %364, align 8
  br label %365

365:                                              ; preds = %361, %357
  %366 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %367 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %368 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %367, i32 0, i32 6
  store %struct.radix_node* %366, %struct.radix_node** %368, align 8
  %369 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %370 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %369, i32 0, i32 7
  %371 = load %struct.radix_mask*, %struct.radix_mask** %370, align 8
  %372 = icmp ne %struct.radix_mask* %371, null
  br i1 %372, label %373, label %442

373:                                              ; preds = %365
  %374 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %375 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %373
  %379 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %380 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %379, i32 0, i32 7
  store %struct.radix_mask** %380, %struct.radix_mask*** %14, align 8
  br label %381

381:                                              ; preds = %385, %378
  %382 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  %383 = load %struct.radix_mask*, %struct.radix_mask** %382, align 8
  store %struct.radix_mask* %383, %struct.radix_mask** %12, align 8
  %384 = icmp ne %struct.radix_mask* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %387 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %386, i32 0, i32 1
  store %struct.radix_mask** %387, %struct.radix_mask*** %14, align 8
  br label %381

388:                                              ; preds = %381
  %389 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %390 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %389, i32 0, i32 7
  %391 = load %struct.radix_mask*, %struct.radix_mask** %390, align 8
  %392 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  store %struct.radix_mask* %391, %struct.radix_mask** %392, align 8
  br label %441

393:                                              ; preds = %373
  %394 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %395 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %394, i32 0, i32 7
  %396 = load %struct.radix_mask*, %struct.radix_mask** %395, align 8
  store %struct.radix_mask* %396, %struct.radix_mask** %12, align 8
  br label %397

397:                                              ; preds = %428, %393
  %398 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %399 = icmp ne %struct.radix_mask* %398, null
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %402 = icmp ne %struct.radix_node* %401, null
  br label %403

403:                                              ; preds = %400, %397
  %404 = phi i1 [ false, %397 ], [ %402, %400 ]
  br i1 %404, label %405, label %432

405:                                              ; preds = %403
  %406 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %407 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %408 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %407, i32 0, i32 7
  %409 = load %struct.radix_mask*, %struct.radix_mask** %408, align 8
  %410 = icmp eq %struct.radix_mask* %406, %409
  br i1 %410, label %411, label %427

411:                                              ; preds = %405
  %412 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %413 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %412, i32 0, i32 1
  %414 = load %struct.radix_mask*, %struct.radix_mask** %413, align 8
  store %struct.radix_mask* %414, %struct.radix_mask** %23, align 8
  %415 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %416 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %415, i32 0, i32 7
  store %struct.radix_mask* null, %struct.radix_mask** %416, align 8
  %417 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %418 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %419, -1
  store i64 %420, i64* %418, align 8
  %421 = icmp slt i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %411
  %423 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %424 = call i32 @R_Free(%struct.radix_mask* %423)
  br label %425

425:                                              ; preds = %422, %411
  %426 = load %struct.radix_mask*, %struct.radix_mask** %23, align 8
  store %struct.radix_mask* %426, %struct.radix_mask** %12, align 8
  br label %427

427:                                              ; preds = %425, %405
  br label %428

428:                                              ; preds = %427
  %429 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %430 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %429, i32 0, i32 8
  %431 = load %struct.radix_node*, %struct.radix_node** %430, align 8
  store %struct.radix_node* %431, %struct.radix_node** %10, align 8
  br label %397

432:                                              ; preds = %403
  %433 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %434 = icmp ne %struct.radix_mask* %433, null
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load i32, i32* @LOG_ERR, align 4
  %437 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %438 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %439 = call i32 (i32, i8*, ...) @log(i32 %436, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.radix_mask* %437, %struct.radix_node* %438)
  br label %440

440:                                              ; preds = %435, %432
  br label %441

441:                                              ; preds = %440, %388
  br label %442

442:                                              ; preds = %441, %365
  %443 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %444 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %443, i64 1
  store %struct.radix_node* %444, %struct.radix_node** %10, align 8
  %445 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %446 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %447 = icmp ne %struct.radix_node* %445, %446
  br i1 %447, label %448, label %480

448:                                              ; preds = %442
  %449 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %450 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %451 = bitcast %struct.radix_node* %449 to i8*
  %452 = bitcast %struct.radix_node* %450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %451, i8* align 8 %452, i64 80, i1 false)
  %453 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %454 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %455 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %454, i32 0, i32 5
  %456 = load %struct.radix_node*, %struct.radix_node** %455, align 8
  %457 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %456, i32 0, i32 6
  store %struct.radix_node* %453, %struct.radix_node** %457, align 8
  %458 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %459 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %460 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %459, i32 0, i32 4
  %461 = load %struct.radix_node*, %struct.radix_node** %460, align 8
  %462 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %461, i32 0, i32 6
  store %struct.radix_node* %458, %struct.radix_node** %462, align 8
  %463 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %464 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %463, i32 0, i32 6
  %465 = load %struct.radix_node*, %struct.radix_node** %464, align 8
  store %struct.radix_node* %465, %struct.radix_node** %9, align 8
  %466 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %467 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %466, i32 0, i32 5
  %468 = load %struct.radix_node*, %struct.radix_node** %467, align 8
  %469 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %470 = icmp eq %struct.radix_node* %468, %469
  br i1 %470, label %471, label %475

471:                                              ; preds = %448
  %472 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %473 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %474 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %473, i32 0, i32 5
  store %struct.radix_node* %472, %struct.radix_node** %474, align 8
  br label %479

475:                                              ; preds = %448
  %476 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %477 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %478 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %477, i32 0, i32 4
  store %struct.radix_node* %476, %struct.radix_node** %478, align 8
  br label %479

479:                                              ; preds = %475, %471
  br label %480

480:                                              ; preds = %479, %442
  br label %481

481:                                              ; preds = %480, %333
  %482 = load i32, i32* @RNF_ACTIVE, align 4
  %483 = xor i32 %482, -1
  %484 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %485 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = and i32 %486, %483
  store i32 %487, i32* %485, align 4
  %488 = load i32, i32* @RNF_ACTIVE, align 4
  %489 = xor i32 %488, -1
  %490 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %491 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %490, i64 1
  %492 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = and i32 %493, %489
  store i32 %494, i32* %492, align 4
  %495 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %495, %struct.radix_node** %4, align 8
  br label %496

496:                                              ; preds = %481, %217, %207, %118, %86, %70, %57
  %497 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  ret %struct.radix_node* %497
}

declare dso_local %struct.radix_node* @rn_search(i8*, %struct.radix_node*) #1

declare dso_local i32 @LEN(i8*) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local %struct.radix_node* @rn_addmask(i8*, i32, i32, i32) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @R_Free(%struct.radix_mask*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
