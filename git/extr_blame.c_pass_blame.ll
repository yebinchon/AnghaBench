; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_pass_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_pass_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32, %struct.repository*, i32, i32, i32, i32, i32, %struct.rev_info* }
%struct.repository = type opaque
%struct.rev_info = type { i32 }
%struct.blame_origin = type { %struct.blame_entry*, %struct.blame_origin*, i32, %struct.commit* }
%struct.blame_entry = type { %struct.blame_entry* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@MAXSG = common dso_local global i32 0, align 4
@PICKAXE_BLAME_MOVE = common dso_local global i32 0, align 4
@PICKAXE_BLAME_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_origin*, i32)* @pass_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_blame(%struct.blame_scoreboard* %0, %struct.blame_origin* %1, i32 %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.blame_origin*, align 8
  %16 = alloca %struct.blame_origin**, align 8
  %17 = alloca %struct.blame_entry*, align 8
  %18 = alloca %struct.blame_entry*, align 8
  %19 = alloca %struct.blame_entry**, align 8
  %20 = alloca %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)*, align 8
  %21 = alloca %struct.commit*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.blame_origin*, align 8
  %25 = alloca %struct.blame_origin*, align 8
  %26 = alloca %struct.blame_origin*, align 8
  %27 = alloca %struct.blame_origin*, align 8
  %28 = alloca %struct.blame_entry**, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %30 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %29, i32 0, i32 7
  %31 = load %struct.rev_info*, %struct.rev_info** %30, align 8
  store %struct.rev_info* %31, %struct.rev_info** %7, align 8
  %32 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %33 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %32, i32 0, i32 3
  %34 = load %struct.commit*, %struct.commit** %33, align 8
  store %struct.commit* %34, %struct.commit** %11, align 8
  %35 = load i32, i32* @MAXSG, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca %struct.blame_origin*, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  store %struct.blame_origin** %38, %struct.blame_origin*** %16, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %17, align 8
  store %struct.blame_entry** %18, %struct.blame_entry*** %19, align 8
  %39 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %40 = load %struct.commit*, %struct.commit** %11, align 8
  %41 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %42 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @num_scapegoats(%struct.rev_info* %39, %struct.commit* %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  br label %446

48:                                               ; preds = %3
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ARRAY_SIZE(%struct.blame_origin** %38)
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = mul nuw i64 8, %36
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(%struct.blame_origin** %38, i32 0, i32 %54)
  br label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.blame_origin** @xcalloc(i32 %57, i32 8)
  store %struct.blame_origin** %58, %struct.blame_origin*** %16, align 8
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %177, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %64 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 2, %65
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %180

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)* @find_rename, %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)* @find_origin
  store %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)* %72, %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)** %20, align 8
  store i32 0, i32* %8, align 4
  %73 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %74 = load %struct.commit*, %struct.commit** %11, align 8
  %75 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %76 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.commit_list* @first_scapegoat(%struct.rev_info* %73, %struct.commit* %74, i32 %77)
  store %struct.commit_list* %78, %struct.commit_list** %12, align 8
  br label %79

79:                                               ; preds = %170, %68
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %85 = icmp ne %struct.commit_list* %84, null
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i1 [ false, %79 ], [ %85, %83 ]
  br i1 %87, label %88, label %176

88:                                               ; preds = %86
  %89 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %90 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %89, i32 0, i32 0
  %91 = load %struct.commit*, %struct.commit** %90, align 8
  store %struct.commit* %91, %struct.commit** %21, align 8
  %92 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %92, i64 %94
  %96 = load %struct.blame_origin*, %struct.blame_origin** %95, align 8
  %97 = icmp ne %struct.blame_origin* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %170

99:                                               ; preds = %88
  %100 = load %struct.commit*, %struct.commit** %21, align 8
  %101 = call i64 @parse_commit(%struct.commit* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %170

104:                                              ; preds = %99
  %105 = load %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)*, %struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)** %20, align 8
  %106 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %107 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %106, i32 0, i32 1
  %108 = load %struct.repository*, %struct.repository** %107, align 8
  %109 = load %struct.commit*, %struct.commit** %21, align 8
  %110 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %111 = call %struct.blame_origin* %105(%struct.repository* %108, %struct.commit* %109, %struct.blame_origin* %110)
  store %struct.blame_origin* %111, %struct.blame_origin** %15, align 8
  %112 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %113 = icmp ne %struct.blame_origin* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  br label %170

115:                                              ; preds = %104
  %116 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %117 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %116, i32 0, i32 2
  %118 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %119 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %118, i32 0, i32 2
  %120 = call i64 @oideq(i32* %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %124 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %125 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %126 = call i32 @pass_whole_blame(%struct.blame_scoreboard* %123, %struct.blame_origin* %124, %struct.blame_origin* %125)
  %127 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %128 = call i32 @blame_origin_decref(%struct.blame_origin* %127)
  br label %446

129:                                              ; preds = %115
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %130

130:                                              ; preds = %154, %129
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %135, i64 %137
  %139 = load %struct.blame_origin*, %struct.blame_origin** %138, align 8
  %140 = icmp ne %struct.blame_origin* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %142, i64 %144
  %146 = load %struct.blame_origin*, %struct.blame_origin** %145, align 8
  %147 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %146, i32 0, i32 2
  %148 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %149 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %148, i32 0, i32 2
  %150 = call i64 @oideq(i32* %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  store i32 1, i32* %23, align 4
  br label %157

153:                                              ; preds = %141, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %22, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %22, align 4
  br label %130

157:                                              ; preds = %152, %130
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %162 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %162, i64 %164
  store %struct.blame_origin* %161, %struct.blame_origin** %165, align 8
  br label %169

166:                                              ; preds = %157
  %167 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %168 = call i32 @blame_origin_decref(%struct.blame_origin* %167)
  br label %169

169:                                              ; preds = %166, %160
  br label %170

170:                                              ; preds = %169, %114, %103, %98
  %171 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %172 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %171, i32 0, i32 1
  %173 = load %struct.commit_list*, %struct.commit_list** %172, align 8
  store %struct.commit_list* %173, %struct.commit_list** %12, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %79

176:                                              ; preds = %86
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %61

180:                                              ; preds = %61
  %181 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %182 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  store i32 0, i32* %8, align 4
  %185 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %186 = load %struct.commit*, %struct.commit** %11, align 8
  %187 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %188 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.commit_list* @first_scapegoat(%struct.rev_info* %185, %struct.commit* %186, i32 %189)
  store %struct.commit_list* %190, %struct.commit_list** %12, align 8
  br label %191

191:                                              ; preds = %231, %180
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %197 = icmp ne %struct.commit_list* %196, null
  br label %198

198:                                              ; preds = %195, %191
  %199 = phi i1 [ false, %191 ], [ %197, %195 ]
  br i1 %199, label %200, label %237

200:                                              ; preds = %198
  %201 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %201, i64 %203
  %205 = load %struct.blame_origin*, %struct.blame_origin** %204, align 8
  store %struct.blame_origin* %205, %struct.blame_origin** %24, align 8
  %206 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %207 = icmp ne %struct.blame_origin* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  br label %231

209:                                              ; preds = %200
  %210 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %211 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %210, i32 0, i32 1
  %212 = load %struct.blame_origin*, %struct.blame_origin** %211, align 8
  %213 = icmp ne %struct.blame_origin* %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %209
  %215 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %216 = call i32 @blame_origin_incref(%struct.blame_origin* %215)
  %217 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %218 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %219 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %218, i32 0, i32 1
  store %struct.blame_origin* %217, %struct.blame_origin** %219, align 8
  br label %220

220:                                              ; preds = %214, %209
  %221 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %222 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %223 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %224 = call i32 @pass_blame_to_parent(%struct.blame_scoreboard* %221, %struct.blame_origin* %222, %struct.blame_origin* %223, i32 0)
  %225 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %226 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %225, i32 0, i32 0
  %227 = load %struct.blame_entry*, %struct.blame_entry** %226, align 8
  %228 = icmp ne %struct.blame_entry* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %220
  br label %446

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %230, %208
  %232 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %233 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %232, i32 0, i32 1
  %234 = load %struct.commit_list*, %struct.commit_list** %233, align 8
  store %struct.commit_list* %234, %struct.commit_list** %12, align 8
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %191

237:                                              ; preds = %198
  %238 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %239 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %238, i32 0, i32 5
  %240 = load %struct.commit*, %struct.commit** %11, align 8
  %241 = getelementptr inbounds %struct.commit, %struct.commit* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = call i64 @oidset_contains(i32* %239, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %290

245:                                              ; preds = %237
  store i32 0, i32* %8, align 4
  %246 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %247 = load %struct.commit*, %struct.commit** %11, align 8
  %248 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %249 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call %struct.commit_list* @first_scapegoat(%struct.rev_info* %246, %struct.commit* %247, i32 %250)
  store %struct.commit_list* %251, %struct.commit_list** %12, align 8
  br label %252

252:                                              ; preds = %283, %245
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %258 = icmp ne %struct.commit_list* %257, null
  br label %259

259:                                              ; preds = %256, %252
  %260 = phi i1 [ false, %252 ], [ %258, %256 ]
  br i1 %260, label %261, label %289

261:                                              ; preds = %259
  %262 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %262, i64 %264
  %266 = load %struct.blame_origin*, %struct.blame_origin** %265, align 8
  store %struct.blame_origin* %266, %struct.blame_origin** %25, align 8
  %267 = load %struct.blame_origin*, %struct.blame_origin** %25, align 8
  %268 = icmp ne %struct.blame_origin* %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %261
  br label %283

270:                                              ; preds = %261
  %271 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %272 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %273 = load %struct.blame_origin*, %struct.blame_origin** %25, align 8
  %274 = call i32 @pass_blame_to_parent(%struct.blame_scoreboard* %271, %struct.blame_origin* %272, %struct.blame_origin* %273, i32 1)
  %275 = load %struct.blame_origin*, %struct.blame_origin** %25, align 8
  %276 = call i32 @drop_origin_blob(%struct.blame_origin* %275)
  %277 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %278 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %277, i32 0, i32 0
  %279 = load %struct.blame_entry*, %struct.blame_entry** %278, align 8
  %280 = icmp ne %struct.blame_entry* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %270
  br label %446

282:                                              ; preds = %270
  br label %283

283:                                              ; preds = %282, %269
  %284 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %285 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %284, i32 0, i32 1
  %286 = load %struct.commit_list*, %struct.commit_list** %285, align 8
  store %struct.commit_list* %286, %struct.commit_list** %12, align 8
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %8, align 4
  br label %252

289:                                              ; preds = %259
  br label %290

290:                                              ; preds = %289, %237
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @PICKAXE_BLAME_MOVE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %351

295:                                              ; preds = %290
  %296 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %297 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %298 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %297, i32 0, i32 0
  %299 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %300 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @filter_small(%struct.blame_scoreboard* %296, %struct.blame_entry** %17, %struct.blame_entry** %298, i32 %301)
  %303 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %304 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %303, i32 0, i32 0
  %305 = load %struct.blame_entry*, %struct.blame_entry** %304, align 8
  %306 = icmp ne %struct.blame_entry* %305, null
  br i1 %306, label %307, label %350

307:                                              ; preds = %295
  store i32 0, i32* %8, align 4
  %308 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %309 = load %struct.commit*, %struct.commit** %11, align 8
  %310 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %311 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call %struct.commit_list* @first_scapegoat(%struct.rev_info* %308, %struct.commit* %309, i32 %312)
  store %struct.commit_list* %313, %struct.commit_list** %12, align 8
  br label %314

314:                                              ; preds = %343, %307
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %320 = icmp ne %struct.commit_list* %319, null
  br label %321

321:                                              ; preds = %318, %314
  %322 = phi i1 [ false, %314 ], [ %320, %318 ]
  br i1 %322, label %323, label %349

323:                                              ; preds = %321
  %324 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %324, i64 %326
  %328 = load %struct.blame_origin*, %struct.blame_origin** %327, align 8
  store %struct.blame_origin* %328, %struct.blame_origin** %26, align 8
  %329 = load %struct.blame_origin*, %struct.blame_origin** %26, align 8
  %330 = icmp ne %struct.blame_origin* %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %323
  br label %343

332:                                              ; preds = %323
  %333 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %334 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %335 = load %struct.blame_origin*, %struct.blame_origin** %26, align 8
  %336 = call i32 @find_move_in_parent(%struct.blame_scoreboard* %333, %struct.blame_entry*** %19, %struct.blame_entry** %17, %struct.blame_origin* %334, %struct.blame_origin* %335)
  %337 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %338 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %337, i32 0, i32 0
  %339 = load %struct.blame_entry*, %struct.blame_entry** %338, align 8
  %340 = icmp ne %struct.blame_entry* %339, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %332
  br label %349

342:                                              ; preds = %332
  br label %343

343:                                              ; preds = %342, %331
  %344 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %345 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %344, i32 0, i32 1
  %346 = load %struct.commit_list*, %struct.commit_list** %345, align 8
  store %struct.commit_list* %346, %struct.commit_list** %12, align 8
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  br label %314

349:                                              ; preds = %341, %321
  br label %350

350:                                              ; preds = %349, %295
  br label %351

351:                                              ; preds = %350, %290
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* @PICKAXE_BLAME_COPY, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %445

356:                                              ; preds = %351
  %357 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %358 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %361 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = icmp sgt i32 %359, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %356
  %365 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %366 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %367 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %366, i32 0, i32 0
  %368 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %369 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @filter_small(%struct.blame_scoreboard* %365, %struct.blame_entry** %17, %struct.blame_entry** %367, i32 %370)
  br label %396

372:                                              ; preds = %356
  %373 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %374 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %377 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %375, %378
  br i1 %379, label %380, label %395

380:                                              ; preds = %372
  %381 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %382 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %381, i32 0, i32 0
  %383 = load %struct.blame_entry*, %struct.blame_entry** %382, align 8
  %384 = load %struct.blame_entry*, %struct.blame_entry** %17, align 8
  %385 = call %struct.blame_entry* @blame_merge(%struct.blame_entry* %383, %struct.blame_entry* %384)
  %386 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %387 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %386, i32 0, i32 0
  store %struct.blame_entry* %385, %struct.blame_entry** %387, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %17, align 8
  %388 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %389 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %390 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %389, i32 0, i32 0
  %391 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %392 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @filter_small(%struct.blame_scoreboard* %388, %struct.blame_entry** %17, %struct.blame_entry** %390, i32 %393)
  br label %395

395:                                              ; preds = %380, %372
  br label %396

396:                                              ; preds = %395, %364
  %397 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %398 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %397, i32 0, i32 0
  %399 = load %struct.blame_entry*, %struct.blame_entry** %398, align 8
  %400 = icmp ne %struct.blame_entry* %399, null
  br i1 %400, label %402, label %401

401:                                              ; preds = %396
  br label %446

402:                                              ; preds = %396
  store i32 0, i32* %8, align 4
  %403 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %404 = load %struct.commit*, %struct.commit** %11, align 8
  %405 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %406 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = call %struct.commit_list* @first_scapegoat(%struct.rev_info* %403, %struct.commit* %404, i32 %407)
  store %struct.commit_list* %408, %struct.commit_list** %12, align 8
  br label %409

409:                                              ; preds = %438, %402
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %10, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %415 = icmp ne %struct.commit_list* %414, null
  br label %416

416:                                              ; preds = %413, %409
  %417 = phi i1 [ false, %409 ], [ %415, %413 ]
  br i1 %417, label %418, label %444

418:                                              ; preds = %416
  %419 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %420 = load i32, i32* %8, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %419, i64 %421
  %423 = load %struct.blame_origin*, %struct.blame_origin** %422, align 8
  store %struct.blame_origin* %423, %struct.blame_origin** %27, align 8
  %424 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %425 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %426 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %427 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %426, i32 0, i32 0
  %428 = load %struct.commit*, %struct.commit** %427, align 8
  %429 = load %struct.blame_origin*, %struct.blame_origin** %27, align 8
  %430 = load i32, i32* %6, align 4
  %431 = call i32 @find_copy_in_parent(%struct.blame_scoreboard* %424, %struct.blame_entry*** %19, %struct.blame_entry** %17, %struct.blame_origin* %425, %struct.commit* %428, %struct.blame_origin* %429, i32 %430)
  %432 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %433 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %432, i32 0, i32 0
  %434 = load %struct.blame_entry*, %struct.blame_entry** %433, align 8
  %435 = icmp ne %struct.blame_entry* %434, null
  br i1 %435, label %437, label %436

436:                                              ; preds = %418
  br label %446

437:                                              ; preds = %418
  br label %438

438:                                              ; preds = %437
  %439 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %440 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %439, i32 0, i32 1
  %441 = load %struct.commit_list*, %struct.commit_list** %440, align 8
  store %struct.commit_list* %441, %struct.commit_list** %12, align 8
  %442 = load i32, i32* %8, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %8, align 4
  br label %409

444:                                              ; preds = %416
  br label %445

445:                                              ; preds = %444, %351
  br label %446

446:                                              ; preds = %445, %436, %401, %281, %229, %122, %47
  %447 = load %struct.blame_entry**, %struct.blame_entry*** %19, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %447, align 8
  %448 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %449 = load %struct.blame_entry*, %struct.blame_entry** %18, align 8
  %450 = call i32 @distribute_blame(%struct.blame_scoreboard* %448, %struct.blame_entry* %449)
  %451 = load %struct.blame_entry*, %struct.blame_entry** %17, align 8
  %452 = icmp ne %struct.blame_entry* %451, null
  br i1 %452, label %453, label %470

453:                                              ; preds = %446
  store %struct.blame_entry** %17, %struct.blame_entry*** %28, align 8
  br label %454

454:                                              ; preds = %458, %453
  %455 = load %struct.blame_entry**, %struct.blame_entry*** %28, align 8
  %456 = load %struct.blame_entry*, %struct.blame_entry** %455, align 8
  %457 = icmp ne %struct.blame_entry* %456, null
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = load %struct.blame_entry**, %struct.blame_entry*** %28, align 8
  %460 = load %struct.blame_entry*, %struct.blame_entry** %459, align 8
  %461 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %460, i32 0, i32 0
  store %struct.blame_entry** %461, %struct.blame_entry*** %28, align 8
  br label %454

462:                                              ; preds = %454
  %463 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %464 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %463, i32 0, i32 0
  %465 = load %struct.blame_entry*, %struct.blame_entry** %464, align 8
  %466 = load %struct.blame_entry**, %struct.blame_entry*** %28, align 8
  store %struct.blame_entry* %465, %struct.blame_entry** %466, align 8
  %467 = load %struct.blame_entry*, %struct.blame_entry** %17, align 8
  %468 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %469 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %468, i32 0, i32 0
  store %struct.blame_entry* %467, %struct.blame_entry** %469, align 8
  br label %470

470:                                              ; preds = %462, %446
  store i32 0, i32* %8, align 4
  br label %471

471:                                              ; preds = %506, %470
  %472 = load i32, i32* %8, align 4
  %473 = load i32, i32* %10, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %509

475:                                              ; preds = %471
  %476 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %477 = load i32, i32* %8, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %476, i64 %478
  %480 = load %struct.blame_origin*, %struct.blame_origin** %479, align 8
  %481 = icmp ne %struct.blame_origin* %480, null
  br i1 %481, label %482, label %505

482:                                              ; preds = %475
  %483 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %483, i64 %485
  %487 = load %struct.blame_origin*, %struct.blame_origin** %486, align 8
  %488 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %487, i32 0, i32 0
  %489 = load %struct.blame_entry*, %struct.blame_entry** %488, align 8
  %490 = icmp ne %struct.blame_entry* %489, null
  br i1 %490, label %498, label %491

491:                                              ; preds = %482
  %492 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %492, i64 %494
  %496 = load %struct.blame_origin*, %struct.blame_origin** %495, align 8
  %497 = call i32 @drop_origin_blob(%struct.blame_origin* %496)
  br label %498

498:                                              ; preds = %491, %482
  %499 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %500 = load i32, i32* %8, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.blame_origin*, %struct.blame_origin** %499, i64 %501
  %503 = load %struct.blame_origin*, %struct.blame_origin** %502, align 8
  %504 = call i32 @blame_origin_decref(%struct.blame_origin* %503)
  br label %505

505:                                              ; preds = %498, %475
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %8, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %8, align 4
  br label %471

509:                                              ; preds = %471
  %510 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %511 = call i32 @drop_origin_blob(%struct.blame_origin* %510)
  %512 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %513 = icmp ne %struct.blame_origin** %38, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %509
  %515 = load %struct.blame_origin**, %struct.blame_origin*** %16, align 8
  %516 = call i32 @free(%struct.blame_origin** %515)
  br label %517

517:                                              ; preds = %514, %509
  %518 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %518)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @num_scapegoats(%struct.rev_info*, %struct.commit*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.blame_origin**) #2

declare dso_local i32 @memset(%struct.blame_origin**, i32, i32) #2

declare dso_local %struct.blame_origin** @xcalloc(i32, i32) #2

declare dso_local %struct.blame_origin* @find_rename(%struct.repository*, %struct.commit*, %struct.blame_origin*) #2

declare dso_local %struct.blame_origin* @find_origin(%struct.repository*, %struct.commit*, %struct.blame_origin*) #2

declare dso_local %struct.commit_list* @first_scapegoat(%struct.rev_info*, %struct.commit*, i32) #2

declare dso_local i64 @parse_commit(%struct.commit*) #2

declare dso_local i64 @oideq(i32*, i32*) #2

declare dso_local i32 @pass_whole_blame(%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_origin*) #2

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #2

declare dso_local i32 @blame_origin_incref(%struct.blame_origin*) #2

declare dso_local i32 @pass_blame_to_parent(%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_origin*, i32) #2

declare dso_local i64 @oidset_contains(i32*, i32*) #2

declare dso_local i32 @drop_origin_blob(%struct.blame_origin*) #2

declare dso_local i32 @filter_small(%struct.blame_scoreboard*, %struct.blame_entry**, %struct.blame_entry**, i32) #2

declare dso_local i32 @find_move_in_parent(%struct.blame_scoreboard*, %struct.blame_entry***, %struct.blame_entry**, %struct.blame_origin*, %struct.blame_origin*) #2

declare dso_local %struct.blame_entry* @blame_merge(%struct.blame_entry*, %struct.blame_entry*) #2

declare dso_local i32 @find_copy_in_parent(%struct.blame_scoreboard*, %struct.blame_entry***, %struct.blame_entry**, %struct.blame_origin*, %struct.commit*, %struct.blame_origin*, i32) #2

declare dso_local i32 @distribute_blame(%struct.blame_scoreboard*, %struct.blame_entry*) #2

declare dso_local i32 @free(%struct.blame_origin**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
