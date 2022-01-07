; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_at.c_ttime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_at.c_ttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.tm = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Cannot get current time\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttime(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [2 x %struct.timeval], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 0
  %10 = call i64 @gettimeofday(%struct.timeval* %9, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %18, %struct.tm** %6, align 8
  %19 = icmp eq %struct.tm* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 46)
  store i8* %24, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.tm*, %struct.tm** %6, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 6
  store i8* null, i8** %28, align 8
  br label %42

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @strlen(i8* %31)
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %120

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  store i8 0, i8* %36, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @ATOI2(i8* %38)
  %40 = load %struct.tm*, %struct.tm** %6, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %26
  store i32 0, i32* %7, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strlen(i8* %43)
  switch i32 %44, label %101 [
    i32 12, label %45
    i32 10, label %55
    i32 8, label %80
  ]

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = call i8* @ATOI2(i8* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.tm*, %struct.tm** %6, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 100
  store i32 %54, i32* %52, align 8
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %42, %45
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @ATOI2(i8* %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.tm*, %struct.tm** %6, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %75

67:                                               ; preds = %55
  %68 = load i8*, i8** %3, align 8
  %69 = call i8* @ATOI2(i8* %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 2000
  %73 = load %struct.tm*, %struct.tm** %6, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %58
  %76 = load %struct.tm*, %struct.tm** %6, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1900
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %42, %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @ATOI2(i8* %81)
  %83 = load %struct.tm*, %struct.tm** %6, align 8
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.tm*, %struct.tm** %6, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %86, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = call i8* @ATOI2(i8* %89)
  %91 = load %struct.tm*, %struct.tm** %6, align 8
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i8* @ATOI2(i8* %93)
  %95 = load %struct.tm*, %struct.tm** %6, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = call i8* @ATOI2(i8* %97)
  %99 = load %struct.tm*, %struct.tm** %6, align 8
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %102

101:                                              ; preds = %42
  br label %120

102:                                              ; preds = %80
  %103 = load %struct.tm*, %struct.tm** %6, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 1
  store i32 -1, i32* %104, align 4
  %105 = load %struct.tm*, %struct.tm** %6, align 8
  %106 = call i32 @mktime(%struct.tm* %105)
  %107 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 1
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 0
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 0
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %4, i64 0, i64 0
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %2, align 4
  br label %122

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %101, %34
  %121 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %115, %120
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
