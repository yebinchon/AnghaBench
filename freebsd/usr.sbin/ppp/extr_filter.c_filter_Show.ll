; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.filter, %struct.filter, %struct.filter, %struct.filter }
%struct.filter = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dial\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.filter*, align 8
  %5 = alloca [4 x %struct.filter*], align 16
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %171

16:                                               ; preds = %1
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %109

25:                                               ; preds = %16
  %26 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %27 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %39 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store %struct.filter* %42, %struct.filter** %4, align 8
  br label %101

43:                                               ; preds = %25
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %48 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcmp(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %57 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store %struct.filter* %60, %struct.filter** %4, align 8
  br label %100

61:                                               ; preds = %43
  %62 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %61
  %74 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %75 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store %struct.filter* %78, %struct.filter** %4, align 8
  br label %99

79:                                               ; preds = %61
  %80 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %81 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %84 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcmp(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %79
  %92 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %93 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store %struct.filter* %96, %struct.filter** %4, align 8
  br label %98

97:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %171

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %73
  br label %100

100:                                              ; preds = %99, %55
  br label %101

101:                                              ; preds = %100, %37
  %102 = load %struct.filter*, %struct.filter** %4, align 8
  %103 = getelementptr inbounds %struct.filter, %struct.filter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %106 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @doShowFilter(i32 %104, i32 %107)
  br label %170

109:                                              ; preds = %16
  %110 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %111 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 0
  store %struct.filter* %114, %struct.filter** %115, align 16
  %116 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %117 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 1
  store %struct.filter* %120, %struct.filter** %121, align 8
  %122 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %123 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 2
  store %struct.filter* %126, %struct.filter** %127, align 16
  %128 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %129 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 3
  store %struct.filter* %132, %struct.filter** %133, align 8
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %166, %109
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %169

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %142 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %137
  %146 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %147 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 %150
  %152 = load %struct.filter*, %struct.filter** %151, align 8
  %153 = getelementptr inbounds %struct.filter, %struct.filter* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x %struct.filter*], [4 x %struct.filter*]* %5, i64 0, i64 %157
  %159 = load %struct.filter*, %struct.filter** %158, align 8
  %160 = getelementptr inbounds %struct.filter, %struct.filter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %163 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @doShowFilter(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %145
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %134

169:                                              ; preds = %134
  br label %170

170:                                              ; preds = %169, %101
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %97, %15
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @doShowFilter(i32, i32) #1

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
