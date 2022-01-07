; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_preimage.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_preimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.cache_entry** }
%struct.patch = type { i8*, i32, i32, i32, i64 }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"path %s has been renamed/deleted\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: does not exist in index\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: does not match index\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: wrong type\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s has type %o, expected %o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*, %struct.cache_entry**, %struct.stat*)* @check_preimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_preimage(%struct.apply_state* %0, %struct.patch* %1, %struct.cache_entry** %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca %struct.cache_entry**, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.patch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store %struct.patch* %1, %struct.patch** %7, align 8
  store %struct.cache_entry** %2, %struct.cache_entry*** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %16 = load %struct.patch*, %struct.patch** %7, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store %struct.patch* null, %struct.patch** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %246

22:                                               ; preds = %4
  %23 = load %struct.patch*, %struct.patch** %7, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %30 = load %struct.patch*, %struct.patch** %7, align 8
  %31 = call %struct.patch* @previous_patch(%struct.apply_state* %29, %struct.patch* %30, i32* %13)
  store %struct.patch* %31, %struct.patch** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @error(i32 %35, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %246

38:                                               ; preds = %22
  %39 = load %struct.patch*, %struct.patch** %11, align 8
  %40 = icmp ne %struct.patch* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.patch*, %struct.patch** %11, align 8
  %43 = getelementptr inbounds %struct.patch, %struct.patch* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  br label %65

45:                                               ; preds = %38
  %46 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %47 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.stat*, %struct.stat** %9, align 8
  %53 = call i32 @lstat(i8* %51, %struct.stat* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOENT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @error_errno(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %5, align 4
  br label %246

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %67 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %150

70:                                               ; preds = %65
  %71 = load %struct.patch*, %struct.patch** %11, align 8
  %72 = icmp ne %struct.patch* %71, null
  br i1 %72, label %150, label %73

73:                                               ; preds = %70
  %74 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %75 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call i32 @index_name_pos(%struct.TYPE_5__* %78, i8* %79, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %73
  %86 = load %struct.patch*, %struct.patch** %7, align 8
  %87 = getelementptr inbounds %struct.patch, %struct.patch* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %237

91:                                               ; preds = %85
  %92 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @error(i32 %92, i8* %93)
  store i32 %94, i32* %5, align 4
  br label %246

95:                                               ; preds = %73
  %96 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %97 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.cache_entry**, %struct.cache_entry*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %102, i64 %104
  %106 = load %struct.cache_entry*, %struct.cache_entry** %105, align 8
  %107 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  store %struct.cache_entry* %106, %struct.cache_entry** %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %95
  %111 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %112 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %117 = load %struct.cache_entry*, %struct.cache_entry** %116, align 8
  %118 = load %struct.stat*, %struct.stat** %9, align 8
  %119 = call i64 @checkout_target(%struct.TYPE_5__* %115, %struct.cache_entry* %117, %struct.stat* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %246

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %95
  %124 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %125 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %130 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %131 = load %struct.cache_entry*, %struct.cache_entry** %130, align 8
  %132 = load %struct.stat*, %struct.stat** %9, align 8
  %133 = call i64 @verify_index_match(%struct.apply_state* %129, %struct.cache_entry* %131, %struct.stat* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @error(i32 %136, i8* %137)
  store i32 %138, i32* %5, align 4
  br label %246

139:                                              ; preds = %128, %123
  %140 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %141 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %146 = load %struct.cache_entry*, %struct.cache_entry** %145, align 8
  %147 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %144, %139
  br label %163

150:                                              ; preds = %70, %65
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load %struct.patch*, %struct.patch** %7, align 8
  %155 = getelementptr inbounds %struct.patch, %struct.patch* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %237

159:                                              ; preds = %153
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @error_errno(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %160)
  store i32 %161, i32* %5, align 4
  br label %246

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %149
  %164 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %165 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load %struct.patch*, %struct.patch** %11, align 8
  %170 = icmp ne %struct.patch* %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %173 = load %struct.cache_entry*, %struct.cache_entry** %172, align 8
  %174 = load %struct.stat*, %struct.stat** %9, align 8
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ce_mode_from_stat(%struct.cache_entry* %173, i32 %176)
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %171, %168, %163
  %179 = load %struct.patch*, %struct.patch** %7, align 8
  %180 = getelementptr inbounds %struct.patch, %struct.patch* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.patch*, %struct.patch** %7, align 8
  %185 = getelementptr inbounds %struct.patch, %struct.patch* %184, i32 0, i32 1
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.patch*, %struct.patch** %7, align 8
  %188 = getelementptr inbounds %struct.patch, %struct.patch* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.patch*, %struct.patch** %7, align 8
  %194 = getelementptr inbounds %struct.patch, %struct.patch* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %186
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.patch*, %struct.patch** %7, align 8
  %198 = getelementptr inbounds %struct.patch, %struct.patch* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = xor i32 %196, %199
  %201 = load i32, i32* @S_IFMT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %206 = load i8*, i8** %10, align 8
  %207 = call i32 @error(i32 %205, i8* %206)
  store i32 %207, i32* %5, align 4
  br label %246

208:                                              ; preds = %195
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.patch*, %struct.patch** %7, align 8
  %211 = getelementptr inbounds %struct.patch, %struct.patch* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.patch*, %struct.patch** %7, align 8
  %219 = getelementptr inbounds %struct.patch, %struct.patch* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @warning(i32 %215, i8* %216, i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %214, %208
  %223 = load %struct.patch*, %struct.patch** %7, align 8
  %224 = getelementptr inbounds %struct.patch, %struct.patch* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %222
  %228 = load %struct.patch*, %struct.patch** %7, align 8
  %229 = getelementptr inbounds %struct.patch, %struct.patch* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.patch*, %struct.patch** %7, align 8
  %235 = getelementptr inbounds %struct.patch, %struct.patch* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %232, %227, %222
  store i32 0, i32* %5, align 4
  br label %246

237:                                              ; preds = %158, %90
  %238 = load %struct.patch*, %struct.patch** %7, align 8
  %239 = getelementptr inbounds %struct.patch, %struct.patch* %238, i32 0, i32 1
  store i32 1, i32* %239, align 8
  %240 = load %struct.patch*, %struct.patch** %7, align 8
  %241 = getelementptr inbounds %struct.patch, %struct.patch* %240, i32 0, i32 4
  store i64 0, i64* %241, align 8
  %242 = load %struct.patch*, %struct.patch** %7, align 8
  %243 = getelementptr inbounds %struct.patch, %struct.patch* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @FREE_AND_NULL(i8* %244)
  store i32 0, i32* %5, align 4
  br label %246

246:                                              ; preds = %237, %236, %204, %159, %135, %121, %91, %60, %34, %21
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.patch* @previous_patch(%struct.apply_state*, %struct.patch*, i32*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i32 @index_name_pos(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @checkout_target(%struct.TYPE_5__*, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i64 @verify_index_match(%struct.apply_state*, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i32 @ce_mode_from_stat(%struct.cache_entry*, i32) #1

declare dso_local i32 @warning(i32, i8*, i32, i32) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
