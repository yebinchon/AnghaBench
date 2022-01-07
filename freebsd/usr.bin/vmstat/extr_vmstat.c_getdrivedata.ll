; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_getdrivedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_getdrivedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.devinfo* }
%struct.devinfo = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.devinfo* }

@num_devices = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i8* null, align 8
@cur = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@last = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@generation = common dso_local global i32 0, align 4
@specified_devices = common dso_local global i8** null, align 8
@num_devices_specified = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reallocf (specified_devices)\00", align 1
@dev_select = common dso_local global i32* null, align 8
@nflag = common dso_local global i64 0, align 8
@maxshowdevs = common dso_local global i32 0, align 4
@num_matches = common dso_local global i64 0, align 8
@da = common dso_local global i32 0, align 4
@matches = common dso_local global i32 0, align 4
@DS_SELECT_ADD = common dso_local global i32 0, align 4
@select_mode = common dso_local global i32 0, align 4
@DS_SELECT_ONLY = common dso_local global i32 0, align 4
@num_selected = common dso_local global i32 0, align 4
@num_selections = common dso_local global i32 0, align 4
@select_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @getdrivedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @getdrivedata(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = call i32 @devstat_getnumdevs(i32* null)
  store i32 %3, i32* @num_devices, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** @devstat_errbuf, align 8
  %7 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = call i64 @calloc(i32 1, i32 12)
  %10 = inttoptr i64 %9 to %struct.devinfo*
  store %struct.devinfo* %10, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur, i32 0, i32 0), align 8
  %11 = call i64 @calloc(i32 1, i32 12)
  %12 = inttoptr i64 %11 to %struct.devinfo*
  store %struct.devinfo* %12, %struct.devinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @last, i32 0, i32 0), align 8
  %13 = call i32 @devstat_getdevs(i32* null, %struct.TYPE_5__* @cur)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i8*, i8** @devstat_errbuf, align 8
  %17 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @num_devices, align 4
  %22 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @generation, align 4
  %25 = call i8** @malloc(i32 8)
  store i8** %25, i8*** @specified_devices, align 8
  store i32 0, i32* @num_devices_specified, align 4
  br label %26

26:                                               ; preds = %58, %18
  %27 = load i8**, i8*** %2, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i8**, i8*** %2, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %61

37:                                               ; preds = %30
  %38 = load i32, i32* @num_devices_specified, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @num_devices_specified, align 4
  %40 = load i8**, i8*** @specified_devices, align 8
  %41 = load i32, i32* @num_devices_specified, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @reallocf(i8** %40, i32 %44)
  store i8** %45, i8*** @specified_devices, align 8
  %46 = load i8**, i8*** @specified_devices, align 8
  %47 = icmp eq i8** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i8**, i8*** %2, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** @specified_devices, align 8
  %54 = load i32, i32* @num_devices_specified, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %52, i8** %57, align 8
  br label %58

58:                                               ; preds = %50
  %59 = load i8**, i8*** %2, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %2, align 8
  br label %26

61:                                               ; preds = %36, %26
  store i32* null, i32** @dev_select, align 8
  %62 = load i64, i64* @nflag, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @maxshowdevs, align 4
  %66 = load i32, i32* @num_devices_specified, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @num_devices_specified, align 4
  store i32 %69, i32* @maxshowdevs, align 4
  br label %70

70:                                               ; preds = %68, %64, %61
  %71 = load i32, i32* @num_devices_specified, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i64, i64* @num_matches, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* @da, align 4
  %78 = call i64 @devstat_buildmatch(i32 %77, i32* @matches, i64* @num_matches)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** @devstat_errbuf, align 8
  %82 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @DS_SELECT_ADD, align 4
  store i32 %84, i32* @select_mode, align 4
  br label %87

85:                                               ; preds = %73, %70
  %86 = load i32, i32* @DS_SELECT_ONLY, align 4
  store i32 %86, i32* @select_mode, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, i32* @generation, align 4
  %89 = load %struct.devinfo*, %struct.devinfo** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cur, i32 0, i32 0), align 8
  %90 = getelementptr inbounds %struct.devinfo, %struct.devinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @num_devices, align 4
  %93 = load i32, i32* @matches, align 4
  %94 = load i64, i64* @num_matches, align 8
  %95 = load i8**, i8*** @specified_devices, align 8
  %96 = load i32, i32* @num_devices_specified, align 4
  %97 = load i32, i32* @select_mode, align 4
  %98 = load i32, i32* @maxshowdevs, align 4
  %99 = call i32 @devstat_selectdevs(i32** @dev_select, i32* @num_selected, i32* @num_selections, i32* @select_generation, i32 %88, i32 %91, i32 %92, i32 %93, i64 %94, i8** %95, i32 %96, i32 %97, i32 %98, i32 0)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i8*, i8** @devstat_errbuf, align 8
  %103 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %87
  %105 = load i8**, i8*** %2, align 8
  ret i8** %105
}

declare dso_local i32 @devstat_getnumdevs(i32*) #1

declare dso_local i32 @xo_errx(i32, i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @devstat_getdevs(i32*, %struct.TYPE_5__*) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8** @reallocf(i8**, i32) #1

declare dso_local i64 @devstat_buildmatch(i32, i32*, i64*) #1

declare dso_local i32 @devstat_selectdevs(i32**, i32*, i32*, i32*, i32, i32, i32, i32, i64, i8**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
