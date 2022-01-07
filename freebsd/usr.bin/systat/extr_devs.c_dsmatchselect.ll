; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dsmatchselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dsmatchselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dsmatchselect: no arguments\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dsmatchselect: too many match arguments\00", align 1
@num_matches = common dso_local global i64 0, align 8
@matches = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@DS_MATCHTYPE_PATTERN = common dso_local global i32 0, align 4
@last_type = common dso_local global i32 0, align 4
@dev_select = common dso_local global i32 0, align 4
@num_selected = common dso_local global i32 0, align 4
@num_selections = common dso_local global i32 0, align 4
@select_generation = common dso_local global i32 0, align 4
@generation = common dso_local global i32 0, align 4
@num_devices = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"device selection error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.statinfo*)* @dsmatchselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmatchselect(i8* %0, i32 %1, i32 %2, %struct.statinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.statinfo*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [100 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.statinfo* %3, %struct.statinfo** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %111

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %12, align 8
  store i8* %23, i8** %11, align 8
  %24 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 0
  store i8** %24, i8*** %10, align 8
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %48, %21
  %26 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8**, i8*** %10, align 8
  store i8* %26, i8** %27, align 8
  %28 = icmp ne i8* %26, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 100
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = load i8**, i8*** %10, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8**, i8*** %10, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %10, align 8
  %43 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 100
  %44 = icmp uge i8** %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %25

51:                                               ; preds = %45, %32
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %14, align 4
  %55 = icmp sgt i32 %54, 99
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %111

58:                                               ; preds = %51
  %59 = load i64, i64* @num_matches, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** @matches, align 8
  %63 = call i32 @free(i8* %62)
  store i8* null, i8** @matches, align 8
  store i64 0, i64* @num_matches, align 8
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [100 x i8*], [100 x i8*]* %13, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @devstat_buildmatch(i8* %73, i8** @matches, i64* @num_matches)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @devstat_errbuf, align 4
  %78 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store i32 0, i32* %5, align 4
  br label %111

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load i32, i32* @DS_MATCHTYPE_PATTERN, align 4
  store i32 %87, i32* @last_type, align 4
  %88 = load i32, i32* @generation, align 4
  %89 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %90 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @num_devices, align 4
  %95 = load i8*, i8** @matches, align 8
  %96 = load i64, i64* @num_matches, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @devstat_selectdevs(i32* @dev_select, i32* @num_selected, i32* @num_selections, i32* @select_generation, i32 %88, i32 %93, i32 %94, i8* %95, i64 %96, i32* null, i32 0, i32 %97, i32 %98, i32 0)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %109

104:                                              ; preds = %86
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 2, i32* %5, align 4
  br label %111

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %102
  br label %110

110:                                              ; preds = %109, %83
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %107, %76, %56, %19
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @devstat_buildmatch(i8*, i8**, i64*) #1

declare dso_local i32 @devstat_selectdevs(i32*, i32*, i32*, i32*, i32, i32, i32, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
