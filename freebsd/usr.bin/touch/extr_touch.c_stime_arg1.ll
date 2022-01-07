; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_arg1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_arg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.tm = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.timespec*)* @stime_arg1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stime_arg1(i8* %0, %struct.timespec* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %9 = call i32 @time(i32* null)
  store i32 %9, i32* %5, align 4
  %10 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %10, %struct.tm** %6, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.tm*, %struct.tm** %6, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 6
  store i8* null, i8** %20, align 8
  br label %34

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @strlen(i8* %23)
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %127

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  store i8 0, i8* %28, align 1
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @ATOI2(i8* %30)
  %32 = load %struct.tm*, %struct.tm** %6, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %18
  store i32 0, i32* %7, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  switch i32 %36, label %102 [
    i32 12, label %37
    i32 10, label %47
    i32 8, label %81
  ]

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @ATOI2(i8* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.tm*, %struct.tm** %6, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tm*, %struct.tm** %6, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 100
  store i32 %46, i32* %44, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %34, %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @ATOI2(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.tm*, %struct.tm** %6, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %76

59:                                               ; preds = %47
  %60 = load i8*, i8** %3, align 8
  %61 = call i8* @ATOI2(i8* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 69
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 2000
  %68 = load %struct.tm*, %struct.tm** %6, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1900
  %73 = load %struct.tm*, %struct.tm** %6, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.tm*, %struct.tm** %6, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1900
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %34, %76
  %82 = load i8*, i8** %3, align 8
  %83 = call i8* @ATOI2(i8* %82)
  %84 = load %struct.tm*, %struct.tm** %6, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.tm*, %struct.tm** %6, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %87, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = call i8* @ATOI2(i8* %90)
  %92 = load %struct.tm*, %struct.tm** %6, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call i8* @ATOI2(i8* %94)
  %96 = load %struct.tm*, %struct.tm** %6, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = call i8* @ATOI2(i8* %98)
  %100 = load %struct.tm*, %struct.tm** %6, align 8
  %101 = getelementptr inbounds %struct.tm, %struct.tm* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %103

102:                                              ; preds = %34
  br label %127

103:                                              ; preds = %81
  %104 = load %struct.tm*, %struct.tm** %6, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 4
  %106 = load %struct.tm*, %struct.tm** %6, align 8
  %107 = call i32 @mktime(%struct.tm* %106)
  %108 = load %struct.timespec*, %struct.timespec** %4, align 8
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %108, i64 1
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.timespec*, %struct.timespec** %4, align 8
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %111, i64 0
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 8
  %114 = load %struct.timespec*, %struct.timespec** %4, align 8
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %114, i64 0
  %116 = getelementptr inbounds %struct.timespec, %struct.timespec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %127

120:                                              ; preds = %103
  %121 = load %struct.timespec*, %struct.timespec** %4, align 8
  %122 = getelementptr inbounds %struct.timespec, %struct.timespec* %121, i64 1
  %123 = getelementptr inbounds %struct.timespec, %struct.timespec* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.timespec*, %struct.timespec** %4, align 8
  %125 = getelementptr inbounds %struct.timespec, %struct.timespec* %124, i64 0
  %126 = getelementptr inbounds %struct.timespec, %struct.timespec* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %129

127:                                              ; preds = %119, %102, %26
  %128 = call i32 @errx(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
