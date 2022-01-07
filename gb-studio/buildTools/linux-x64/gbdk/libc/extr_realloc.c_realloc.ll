; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr_realloc.c_realloc.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr_realloc.c_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, %struct.TYPE_3__* }

@malloc_first = common dso_local global %struct.TYPE_3__* null, align 8
@MALLOC_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Found hunk\00", align 1
@MALLOC_FREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"No hunk found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @malloc_first, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 4
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @free(i8* %21)
  store i8* null, i8** %3, align 8
  br label %203

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %3, align 8
  br label %203

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %197, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MALLOC_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br i1 %40, label %41, label %201

41:                                               ; preds = %39
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = icmp eq %struct.TYPE_3__* %42, %43
  br i1 %44, label %45, label %197

45:                                               ; preds = %41
  %46 = call i32 @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  store i8* %53, i8** %3, align 8
  br label %203

54:                                               ; preds = %45
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = ptrtoint %struct.TYPE_3__* %73 to i32
  %75 = sext i32 %74 to i64
  %76 = add i64 %72, %75
  %77 = inttoptr i64 %76 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %8, align 8
  %78 = load i64, i64* @MALLOC_FREE, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @MALLOC_MAGIC, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %4, align 8
  store i8* %105, i8** %3, align 8
  br label %203

106:                                              ; preds = %60
  %107 = load i8*, i8** %4, align 8
  store i8* %107, i8** %3, align 8
  br label %203

108:                                              ; preds = %54
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = icmp ne %struct.TYPE_3__* %111, null
  br i1 %112, label %113, label %196

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MALLOC_FREE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %180

121:                                              ; preds = %113
  %122 = call i32 (...) @malloc_gc()
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %128, %131
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 4
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp uge i64 %134, %136
  br i1 %137, label %138, label %179

138:                                              ; preds = %121
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = ptrtoint %struct.TYPE_3__* %142 to i32
  %144 = sext i32 %143 to i64
  %145 = add i64 %141, %144
  %146 = inttoptr i64 %145 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %146, %struct.TYPE_3__** %8, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %153, align 8
  %154 = load i64, i64* @MALLOC_FREE, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = sub i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load i64, i64* @MALLOC_MAGIC, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  store %struct.TYPE_3__* %172, %struct.TYPE_3__** %174, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load i8*, i8** %4, align 8
  store i8* %178, i8** %3, align 8
  br label %203

179:                                              ; preds = %121
  br label %180

180:                                              ; preds = %179, %113
  %181 = load i32, i32* %5, align 4
  %182 = call i8* @malloc(i32 %181)
  store i8* %182, i8** %10, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @memcpy(i8* %186, i8* %187, i32 %190)
  %192 = load i8*, i8** %4, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i8*, i8** %10, align 8
  store i8* %194, i8** %3, align 8
  br label %203

195:                                              ; preds = %180
  store i8* null, i8** %3, align 8
  br label %203

196:                                              ; preds = %108
  br label %197

197:                                              ; preds = %196, %41
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  store %struct.TYPE_3__* %200, %struct.TYPE_3__** %7, align 8
  br label %30

201:                                              ; preds = %39
  %202 = call i32 @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %203

203:                                              ; preds = %201, %195, %185, %138, %106, %69, %52, %26, %20
  %204 = load i8*, i8** %3, align 8
  ret i8* %204
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @malloc_gc(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
