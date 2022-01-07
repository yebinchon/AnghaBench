; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_all_patches.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_all_patches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"can't open patch '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"squelched %d whitespace error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"squelched %d whitespace errors\00", align 1
@die_on_ws_error = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"%d line adds whitespace errors.\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%d lines add whitespace errors.\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"%d line applied after fixing whitespace errors.\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%d lines applied after fixing whitespace errors.\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Unable to write new index file\00", align 1
@verbosity_silent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_all_patches(%struct.apply_state* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %81, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load i8**, i8*** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %22
  %32 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @apply_patch(%struct.apply_state* %32, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %207

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %81

42:                                               ; preds = %22
  %43 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %44 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i8* @prefix_filename(i32 %45, i8* %46)
  store i8* %47, i8** %15, align 8
  store i8* %47, i8** %14, align 8
  br label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* @O_RDONLY, align 4
  %51 = call i32 @open(i8* %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i8* @strerror(i32 %57)
  %59 = call i32 (i32, ...) @error(i32 %55, i8* %56, i8* %58)
  store i32 -128, i32* %11, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @free(i8* %60)
  br label %207

62:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  %63 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %64 = call i32 @set_default_whitespace_mode(%struct.apply_state* %63)
  %65 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @apply_patch(%struct.apply_state* %65, i32 %66, i8* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %207

77:                                               ; preds = %62
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %38
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %18

84:                                               ; preds = %18
  %85 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %86 = call i32 @set_default_whitespace_mode(%struct.apply_state* %85)
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @apply_patch(%struct.apply_state* %90, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %207

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %84
  %101 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %102 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %180

105:                                              ; preds = %100
  %106 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %107 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  %111 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %112 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %115 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %110
  %119 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %120 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %123 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @Q_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @warning(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %110, %105
  %131 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %132 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @die_on_ws_error, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %138 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @Q_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %142 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, ...) @error(i32 %140, i32 %143)
  store i32 -128, i32* %11, align 4
  br label %207

145:                                              ; preds = %130
  %146 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %147 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  %151 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %152 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %157 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @Q_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  %160 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %161 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @warning(i32 %159, i32 %162)
  br label %179

164:                                              ; preds = %150, %145
  %165 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %166 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %171 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @Q_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %175 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @warning(i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %169, %164
  br label %179

179:                                              ; preds = %178, %155
  br label %180

180:                                              ; preds = %179, %100
  %181 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %182 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %181, i32 0, i32 9
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %180
  %186 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %187 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %186, i32 0, i32 8
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %192 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %191, i32 0, i32 7
  %193 = load i32, i32* @COMMIT_LOCK, align 4
  %194 = call i32 @write_locked_index(i32 %190, i32* %192, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %199 = call i32 (i32, ...) @error(i32 %198)
  store i32 -128, i32* %11, align 4
  br label %207

200:                                              ; preds = %185
  br label %201

201:                                              ; preds = %200, %180
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %201, %197, %136, %95, %76, %54, %37
  %208 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %209 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %208, i32 0, i32 7
  %210 = call i32 @rollback_lock_file(i32* %209)
  %211 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %212 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @verbosity_silent, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %207
  %217 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %218 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @set_error_routine(i32 %219)
  %221 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %222 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @set_warn_routine(i32 %223)
  br label %225

225:                                              ; preds = %216, %207
  %226 = load i32, i32* %11, align 4
  %227 = icmp sgt i32 %226, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %5, align 4
  br label %235

230:                                              ; preds = %225
  %231 = load i32, i32* %11, align 4
  %232 = icmp eq i32 %231, -1
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 128
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %230, %228
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @apply_patch(%struct.apply_state*, i32, i8*, i32) #1

declare dso_local i8* @prefix_filename(i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set_default_whitespace_mode(%struct.apply_state*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i32 @write_locked_index(i32, i32*, i32) #1

declare dso_local i32 @rollback_lock_file(i32*) #1

declare dso_local i32 @set_error_routine(i32) #1

declare dso_local i32 @set_warn_routine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
