; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tabs/extr_tabs.c_gettabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tabs/extr_tabs.c_gettabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@NSTOPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"too many tab stops (limit %d)\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: invalid tab stop\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: first tab may not be relative\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot go backwards\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*)* @gettabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gettabs(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strtok(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %70, %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NSTOPS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @NSTOPS, align 8
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %22, %17
  store i64 0, i64* @errno, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strtol(i8* %26, i8** %8, i32 10)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @errno, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %30, %25
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i64, i64* %10, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %69, align 8
  store i64 %64, i64* %9, align 8
  br label %70

70:                                               ; preds = %63
  %71 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %71, i8** %7, align 8
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
