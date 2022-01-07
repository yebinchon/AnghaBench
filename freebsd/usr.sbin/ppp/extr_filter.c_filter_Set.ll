; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.filter, %struct.filter, %struct.filter, %struct.filter }
%struct.filter = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dial\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"filter_Set: %s: Invalid filter name.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_Set(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.filter*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 2
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %127

14:                                               ; preds = %1
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store %struct.filter* %31, %struct.filter** %4, align 8
  br label %101

32:                                               ; preds = %14
  %33 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store %struct.filter* %49, %struct.filter** %4, align 8
  br label %100

50:                                               ; preds = %32
  %51 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %52 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %50
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store %struct.filter* %67, %struct.filter** %4, align 8
  br label %99

68:                                               ; preds = %50
  %69 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %70 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %73 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcmp(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %68
  %81 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store %struct.filter* %85, %struct.filter** %4, align 8
  br label %98

86:                                               ; preds = %68
  %87 = load i32, i32* @LogWARN, align 4
  %88 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %89 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %92 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @log_Printf(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  store i32 -1, i32* %2, align 4
  br label %127

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %62
  br label %100

100:                                              ; preds = %99, %44
  br label %101

101:                                              ; preds = %100, %26
  %102 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %103 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %107 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %110 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %115 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %118 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load %struct.filter*, %struct.filter** %4, align 8
  %124 = getelementptr inbounds %struct.filter, %struct.filter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @filter_Parse(i32* %105, i32 %113, i32* %122, i32 %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %101, %86, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @filter_Parse(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
