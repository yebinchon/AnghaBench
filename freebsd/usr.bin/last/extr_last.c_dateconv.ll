; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_dateconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_dateconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dateconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dateconv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i64 @time(i32* %3)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %12, %struct.tm** %4, align 8
  %13 = icmp eq %struct.tm* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 46)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.tm*, %struct.tm** %4, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 6
  store i8* null, i8** %22, align 8
  br label %36

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i32 @strlen(i8* %25)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %122

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  store i8 0, i8* %30, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @ATOI2(i8* %32)
  %34 = load %struct.tm*, %struct.tm** %4, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %20
  store i32 0, i32* %5, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @strlen(i8* %37)
  switch i32 %38, label %113 [
    i32 12, label %39
    i32 10, label %49
    i32 8, label %83
    i32 4, label %104
  ]

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = call i8* @ATOI2(i8* %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.tm*, %struct.tm** %4, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tm*, %struct.tm** %4, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 100
  store i32 %48, i32* %46, align 8
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %36, %39
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8*, i8** %2, align 8
  %54 = call i8* @ATOI2(i8* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.tm*, %struct.tm** %4, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %78

61:                                               ; preds = %49
  %62 = load i8*, i8** %2, align 8
  %63 = call i8* @ATOI2(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 69
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 2000
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %77

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1900
  %75 = load %struct.tm*, %struct.tm** %4, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.tm*, %struct.tm** %4, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1900
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %36, %78
  %84 = load i8*, i8** %2, align 8
  %85 = call i8* @ATOI2(i8* %84)
  %86 = load %struct.tm*, %struct.tm** %4, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.tm*, %struct.tm** %4, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %89, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = call i8* @ATOI2(i8* %92)
  %94 = load %struct.tm*, %struct.tm** %4, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %2, align 8
  %97 = call i8* @ATOI2(i8* %96)
  %98 = load %struct.tm*, %struct.tm** %4, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = call i8* @ATOI2(i8* %100)
  %102 = load %struct.tm*, %struct.tm** %4, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %114

104:                                              ; preds = %36
  %105 = load i8*, i8** %2, align 8
  %106 = call i8* @ATOI2(i8* %105)
  %107 = load %struct.tm*, %struct.tm** %4, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %2, align 8
  %110 = call i8* @ATOI2(i8* %109)
  %111 = load %struct.tm*, %struct.tm** %4, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %114

113:                                              ; preds = %36
  br label %122

114:                                              ; preds = %104, %83
  %115 = load %struct.tm*, %struct.tm** %4, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 4
  %117 = load %struct.tm*, %struct.tm** %4, align 8
  %118 = call i32 @mktime(%struct.tm* %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %113, %28
  %123 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %114
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
