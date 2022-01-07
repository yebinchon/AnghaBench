; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_bmp.c_bmp_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_bmp.c_bmp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@bmp_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"splash_bmp: not a BMP file\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"splash_bmp: unsupported BMP format (size=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"splash_bmp: unsupported compression format\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"splash_bmp: beyond screen capacity (%dx%d, %d colors)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @bmp_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_Init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 9), align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 19778
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %166

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 24
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 1, i32* %5, align 4
  br label %166

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 0), align 8
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 1), align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 2), align 8
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32* %47, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 9), align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 3), align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 4), align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 5), align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 6), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 6), align 8
  switch i32 %68, label %70 [
    i32 130, label %69
    i32 129, label %69
    i32 128, label %69
  ]

69:                                               ; preds = %36, %36, %36
  br label %72

70:                                               ; preds = %36
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %166

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  %78 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 8), align 8
  %79 = call i32 @bzero(i32** %78, i32 8)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  br label %89

89:                                               ; preds = %82, %72
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 4), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 3), align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 0), align 8
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 1, %99
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %97, %93, %89
  %103 = load i64, i64* @bootverbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 3), align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 4), align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %102
  store i32 1, i32* %5, align 4
  br label %166

111:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %162, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 7), align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %112
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 8), align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %125, i32* %131, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 8), align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %140, i32* %146, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bmp_info, i32 0, i32 8), align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %116
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %112

165:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %110, %70, %29, %19
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bzero(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
