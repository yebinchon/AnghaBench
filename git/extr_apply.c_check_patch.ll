; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i64 }
%struct.patch = type { i8*, i8*, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: already exists in index\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: already exists in working directory\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"new mode (%o) of %s does not match old mode (%o)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"new mode (%o) of %s does not match old mode (%o) of %s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"affected file '%s' is beyond a symbolic link\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: patch does not apply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*)* @check_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_patch(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.patch*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.patch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.patch* %1, %struct.patch** %5, align 8
  %16 = load %struct.patch*, %struct.patch** %5, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.patch*, %struct.patch** %5, align 8
  %20 = getelementptr inbounds %struct.patch, %struct.patch* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  store i8* %29, i8** %9, align 8
  store %struct.cache_entry* null, %struct.cache_entry** %10, align 8
  %30 = load %struct.patch*, %struct.patch** %5, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %33 = load %struct.patch*, %struct.patch** %5, align 8
  %34 = call i32 @check_preimage(%struct.apply_state* %32, %struct.patch* %33, %struct.cache_entry** %10, %struct.stat* %6)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %3, align 4
  br label %227

39:                                               ; preds = %28
  %40 = load %struct.patch*, %struct.patch** %5, align 8
  %41 = getelementptr inbounds %struct.patch, %struct.patch* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.patch* @in_fn_table(%struct.apply_state* %43, i8* %44)
  store %struct.patch* %45, %struct.patch** %11, align 8
  %46 = icmp ne %struct.patch* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.patch*, %struct.patch** %11, align 8
  %49 = call i64 @was_deleted(%struct.patch* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.patch*, %struct.patch** %11, align 8
  %53 = call i64 @to_be_deleted(%struct.patch* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  store i32 1, i32* %12, align 4
  br label %57

56:                                               ; preds = %51, %39
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %127

60:                                               ; preds = %57
  %61 = load %struct.patch*, %struct.patch** %5, align 8
  %62 = getelementptr inbounds %struct.patch, %struct.patch* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 0, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.patch*, %struct.patch** %5, align 8
  %67 = getelementptr inbounds %struct.patch, %struct.patch* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.patch*, %struct.patch** %5, align 8
  %72 = getelementptr inbounds %struct.patch, %struct.patch* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %70, %65, %60
  %76 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @check_to_create(%struct.apply_state* %76, i8* %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %84 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.patch*, %struct.patch** %5, align 8
  %89 = getelementptr inbounds %struct.patch, %struct.patch* %88, i32 0, i32 4
  store i32 1, i32* %89, align 8
  br label %104

90:                                               ; preds = %82, %75
  %91 = load i32, i32* %14, align 4
  switch i32 %91, label %101 [
    i32 0, label %92
    i32 129, label %93
    i32 128, label %97
  ]

92:                                               ; preds = %90
  br label %103

93:                                               ; preds = %90
  %94 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 (i32, ...) @error(i32 %94, i8* %95)
  store i32 %96, i32* %3, align 4
  br label %227

97:                                               ; preds = %90
  %98 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (i32, ...) @error(i32 %98, i8* %99)
  store i32 %100, i32* %3, align 4
  br label %227

101:                                              ; preds = %90
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %3, align 4
  br label %227

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.patch*, %struct.patch** %5, align 8
  %106 = getelementptr inbounds %struct.patch, %struct.patch* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %104
  %110 = load %struct.patch*, %struct.patch** %5, align 8
  %111 = getelementptr inbounds %struct.patch, %struct.patch* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 0, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @S_IFREG, align 4
  %116 = or i32 %115, 420
  %117 = load %struct.patch*, %struct.patch** %5, align 8
  %118 = getelementptr inbounds %struct.patch, %struct.patch* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  br label %125

119:                                              ; preds = %109
  %120 = load %struct.patch*, %struct.patch** %5, align 8
  %121 = getelementptr inbounds %struct.patch, %struct.patch* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.patch*, %struct.patch** %5, align 8
  %124 = getelementptr inbounds %struct.patch, %struct.patch* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %126, %70, %57
  %128 = load i8*, i8** %8, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %186

130:                                              ; preds = %127
  %131 = load i8*, i8** %7, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %186

133:                                              ; preds = %130
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @strcmp(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %15, align 4
  %140 = load %struct.patch*, %struct.patch** %5, align 8
  %141 = getelementptr inbounds %struct.patch, %struct.patch* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %133
  %145 = load %struct.patch*, %struct.patch** %5, align 8
  %146 = getelementptr inbounds %struct.patch, %struct.patch* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.patch*, %struct.patch** %5, align 8
  %149 = getelementptr inbounds %struct.patch, %struct.patch* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %133
  %151 = load %struct.patch*, %struct.patch** %5, align 8
  %152 = getelementptr inbounds %struct.patch, %struct.patch* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.patch*, %struct.patch** %5, align 8
  %155 = getelementptr inbounds %struct.patch, %struct.patch* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %153, %156
  %158 = load i32, i32* @S_IFMT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %150
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.patch*, %struct.patch** %5, align 8
  %167 = getelementptr inbounds %struct.patch, %struct.patch* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = load %struct.patch*, %struct.patch** %5, align 8
  %171 = getelementptr inbounds %struct.patch, %struct.patch* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, ...) @error(i32 %165, i32 %168, i8* %169, i32 %172)
  store i32 %173, i32* %3, align 4
  br label %227

174:                                              ; preds = %161
  %175 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %176 = load %struct.patch*, %struct.patch** %5, align 8
  %177 = getelementptr inbounds %struct.patch, %struct.patch* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.patch*, %struct.patch** %5, align 8
  %181 = getelementptr inbounds %struct.patch, %struct.patch* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 (i32, ...) @error(i32 %175, i32 %178, i8* %179, i32 %182, i8* %183)
  store i32 %184, i32* %3, align 4
  br label %227

185:                                              ; preds = %150
  br label %186

186:                                              ; preds = %185, %130, %127
  %187 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %188 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.patch*, %struct.patch** %5, align 8
  %193 = call i64 @check_unsafe_path(%struct.patch* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 -128, i32* %3, align 4
  br label %227

196:                                              ; preds = %191, %186
  %197 = load %struct.patch*, %struct.patch** %5, align 8
  %198 = getelementptr inbounds %struct.patch, %struct.patch* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %214, label %201

201:                                              ; preds = %196
  %202 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %203 = load %struct.patch*, %struct.patch** %5, align 8
  %204 = getelementptr inbounds %struct.patch, %struct.patch* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @path_is_beyond_symlink(%struct.apply_state* %202, i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %210 = load %struct.patch*, %struct.patch** %5, align 8
  %211 = getelementptr inbounds %struct.patch, %struct.patch* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, ...) @error(i32 %209, i8* %212)
  store i32 %213, i32* %3, align 4
  br label %227

214:                                              ; preds = %201, %196
  %215 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %216 = load %struct.patch*, %struct.patch** %5, align 8
  %217 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %218 = call i64 @apply_data(%struct.apply_state* %215, %struct.patch* %216, %struct.stat* %6, %struct.cache_entry* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 (i32, ...) @error(i32 %221, i8* %222)
  store i32 %223, i32* %3, align 4
  br label %227

224:                                              ; preds = %214
  %225 = load %struct.patch*, %struct.patch** %5, align 8
  %226 = getelementptr inbounds %struct.patch, %struct.patch* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %224, %220, %208, %195, %174, %164, %101, %97, %93, %37
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @check_preimage(%struct.apply_state*, %struct.patch*, %struct.cache_entry**, %struct.stat*) #1

declare dso_local %struct.patch* @in_fn_table(%struct.apply_state*, i8*) #1

declare dso_local i64 @was_deleted(%struct.patch*) #1

declare dso_local i64 @to_be_deleted(%struct.patch*) #1

declare dso_local i32 @check_to_create(%struct.apply_state*, i8*, i32) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @check_unsafe_path(%struct.patch*) #1

declare dso_local i64 @path_is_beyond_symlink(%struct.apply_state*, i8*) #1

declare dso_local i64 @apply_data(%struct.apply_state*, %struct.patch*, %struct.stat*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
