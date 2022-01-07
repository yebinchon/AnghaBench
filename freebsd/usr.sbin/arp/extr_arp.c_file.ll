; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%49s %49s %49s %49s %49s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bad line: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca [5 x [50 x i8]], align 16
  %8 = alloca [5 x i8*], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  store i8* %18, i8** %19, align 16
  %20 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 1
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 2
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %23, i64 0, i64 0
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 2
  store i8* %24, i8** %25, align 16
  %26 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 3
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %26, i64 0, i64 0
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 3
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 4
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %29, i64 0, i64 0
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 4
  store i8* %30, i8** %31, align 16
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %89, %80, %64, %16
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @fgets(i8* %33, i32 100, i32* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %32
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %39 = call i8* @strchr(i8* %38, i8 signext 35)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %51, %43
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isblank(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  br label %45

54:                                               ; preds = %45
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  br label %32

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %67, i64 0, i64 0
  %69 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 1
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %69, i64 0, i64 0
  %71 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 2
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 3
  %74 = getelementptr inbounds [50 x i8], [50 x i8]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [5 x [50 x i8]], [5 x [50 x i8]]* %7, i64 0, i64 4
  %76 = getelementptr inbounds [50 x i8], [50 x i8]* %75, i64 0, i64 0
  %77 = call i32 @sscanf(i8* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %70, i8* %72, i8* %74, i8* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %82 = call i32 @xo_warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  store i32 1, i32* %5, align 4
  br label %32

83:                                               ; preds = %65
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %86 = call i64 @set(i32 %84, i8** %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %32

90:                                               ; preds = %32
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @fclose(i32* %91)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @xo_err(i32, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isblank(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @xo_warnx(i8*, i8*) #1

declare dso_local i64 @set(i32, i8**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
