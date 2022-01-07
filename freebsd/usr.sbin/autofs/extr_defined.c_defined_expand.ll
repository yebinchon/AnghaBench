; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_defined.c_defined_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"truncated variable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"strndup\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"undefined variable ${%s}\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.*s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @defined_expand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @checked_strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %207, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %210

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %5, align 1
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  br label %207

39:                                               ; preds = %35, %26
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %207

43:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  %44 = load i8, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 36
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %207

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = icmp slt i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 123
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %226

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %226

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %77
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %158, %96
  %99 = load i8*, i8** %3, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %161

106:                                              ; preds = %98
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  store i8 %111, i8* %5, align 1
  %112 = load i8, i8* %5, align 1
  %113 = call i64 @isalnum(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 95
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %106
  br label %158

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %120
  %124 = load i8, i8* %5, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %158

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sgt i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* %11, align 4
  %138 = icmp sgt i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %12, align 4
  br label %161

144:                                              ; preds = %120
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %146, 1
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp sgt i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %12, align 4
  br label %161

158:                                              ; preds = %127, %119
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %98

161:                                              ; preds = %144, %128, %98
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i32, i32* %12, align 4
  %167 = call i8* @strndup(i8* %165, i32 %166)
  store i8* %167, i8** %7, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %161
  %173 = load i8*, i8** %7, align 8
  %174 = call i8* @defined_find(i8* %173)
  store i8* %174, i8** %4, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %178)
  store i8* null, i8** %2, align 8
  br label %226

180:                                              ; preds = %172
  %181 = load i32, i32* %10, align 4
  %182 = load i8*, i8** %3, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = load i8*, i8** %3, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %181, i8* %182, i8* %183, i8* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %180
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %6, align 8
  store i8* %196, i8** %3, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 @strlen(i8* %198)
  %200 = add nsw i32 %197, %199
  store i32 %200, i32* %8, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i8*, i8** %3, align 8
  %203 = call i32 @strlen(i8* %202)
  %204 = icmp sle i32 %201, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  br label %207

207:                                              ; preds = %193, %47, %42, %38
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %18

210:                                              ; preds = %18
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219, %216, %213, %210
  %223 = call i32 (i8*, ...) @log_warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %226

224:                                              ; preds = %219
  %225 = load i8*, i8** %6, align 8
  store i8* %225, i8** %2, align 8
  br label %226

226:                                              ; preds = %224, %222, %177, %91, %75
  %227 = load i8*, i8** %2, align 8
  ret i8* %227
}

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_warnx(i8*, ...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i8* @defined_find(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
