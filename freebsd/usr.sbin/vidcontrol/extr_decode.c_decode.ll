; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_decode.c_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_decode.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"begin %o %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i8], align 1
  %14 = alloca [128 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %22, %3
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @fgets(i8* %16, i32 128, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %238

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %15, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %29 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8, i8* %28)
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %11, align 8
  br label %31

31:                                               ; preds = %225, %26
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  store i8* %32, i8** %12, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fgets(i8* %32, i32 128, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %238

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 32
  %42 = and i32 %41, 63
  store i32 %42, i32* %8, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %226

45:                                               ; preds = %37
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %220, %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %225

51:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %54, label %114

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 32
  %60 = and i32 %59, 63
  %61 = shl i32 %60, 2
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 32
  %67 = and i32 %66, 63
  %68 = ashr i32 %67, 4
  %69 = or i32 %61, %68
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 32
  %80 = and i32 %79, 63
  %81 = shl i32 %80, 4
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 32
  %87 = and i32 %86, 63
  %88 = ashr i32 %87, 2
  %89 = or i32 %81, %88
  %90 = trunc i32 %89 to i8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %93
  store i8 %90, i8* %94, align 1
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 32
  %100 = and i32 %99, 63
  %101 = shl i32 %100, 6
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 32
  %107 = and i32 %106, 63
  %108 = or i32 %101, %107
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %112
  store i8 %109, i8* %113, align 1
  br label %186

114:                                              ; preds = %51
  %115 = load i32, i32* %8, align 4
  %116 = icmp sge i32 %115, 1
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 32
  %123 = and i32 %122, 63
  %124 = shl i32 %123, 2
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %128, 32
  %130 = and i32 %129, 63
  %131 = ashr i32 %130, 4
  %132 = or i32 %124, %131
  %133 = trunc i32 %132 to i8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %136
  store i8 %133, i8* %137, align 1
  br label %138

138:                                              ; preds = %117, %114
  %139 = load i32, i32* %8, align 4
  %140 = icmp sge i32 %139, 2
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = sub nsw i32 %145, 32
  %147 = and i32 %146, 63
  %148 = shl i32 %147, 4
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 32
  %154 = and i32 %153, 63
  %155 = ashr i32 %154, 2
  %156 = or i32 %148, %155
  %157 = trunc i32 %156 to i8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %160
  store i8 %157, i8* %161, align 1
  br label %162

162:                                              ; preds = %141, %138
  %163 = load i32, i32* %8, align 4
  %164 = icmp sge i32 %163, 3
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = sub nsw i32 %169, 32
  %171 = and i32 %170, 63
  %172 = shl i32 %171, 6
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 32
  %178 = and i32 %177, 63
  %179 = or i32 %172, %178
  %180 = trunc i32 %179 to i8
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 %183
  store i8 %180, i8* %184, align 1
  br label %185

185:                                              ; preds = %165, %162
  br label %186

186:                                              ; preds = %185, %54
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %220

190:                                              ; preds = %186
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* %7, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %197, %198
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %196, %190
  %203 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %204 = load i8*, i8** %11, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @bcopy(i8* %203, i8* %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i8*, i8** %11, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %11, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %202
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %4, align 4
  br label %238

219:                                              ; preds = %202
  br label %220

220:                                              ; preds = %219, %189
  %221 = load i8*, i8** %12, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 4
  store i8* %222, i8** %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %223, 3
  store i32 %224, i32* %8, align 4
  br label %48

225:                                              ; preds = %48
  br label %31

226:                                              ; preds = %44
  %227 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @fgets(i8* %227, i32 128, i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231, %226
  store i32 0, i32* %4, align 4
  br label %238

236:                                              ; preds = %231
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %236, %235, %217, %36, %20
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
