; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athradar/extr_athradar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radarhandler = type { i32 }

@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.radarhandler, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = call i32 @memset(%struct.radarhandler* %6, i32 0, i32 4)
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @usage(i8* %23)
  %25 = call i32 @exit(i32 0) #3
  unreachable

26:                                               ; preds = %16, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @usage(i8* %36)
  %38 = call i32 @exit(i32 0) #3
  unreachable

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @usage(i8* %52)
  %54 = call i32 @exit(i32 127) #3
  unreachable

55:                                               ; preds = %48
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  store i8** %62, i8*** %5, align 8
  br label %63

63:                                               ; preds = %55, %42, %39
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @usage(i8* %67)
  %69 = call i32 @exit(i32 127) #3
  unreachable

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @radar_opendev(%struct.radarhandler* %6, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @exit(i32 127) #3
  unreachable

76:                                               ; preds = %70
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @radar_get(%struct.radarhandler* %6)
  br label %116

84:                                               ; preds = %76
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcasecmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @usage(i8* %94)
  %96 = call i32 @exit(i32 127) #3
  unreachable

97:                                               ; preds = %90
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @radar_set_param(%struct.radarhandler* %6, i8* %100, i8* %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @usage(i8* %107)
  %109 = call i32 @exit(i32 127) #3
  unreachable

110:                                              ; preds = %97
  br label %115

111:                                              ; preds = %84
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @usage(i8* %112)
  %114 = call i32 @exit(i32 127) #3
  unreachable

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %82
  %117 = call i32 @radar_closedev(%struct.radarhandler* %6)
  %118 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @memset(%struct.radarhandler*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @radar_opendev(%struct.radarhandler*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @radar_get(%struct.radarhandler*) #1

declare dso_local i64 @radar_set_param(%struct.radarhandler*, i8*, i8*) #1

declare dso_local i32 @radar_closedev(%struct.radarhandler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
