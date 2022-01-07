; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/split/extr_split.c_newfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/split/extr_split.c_newfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newfile.fnum = internal global i64 0, align 8
@newfile.fpnt = internal global i8* null, align 8
@ofd = common dso_local global i32 0, align 4
@fname = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@sufflen = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"suffix is too long (max %ld)\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"too many files\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@file_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @newfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newfile() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ofd, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = load i8*, i8** @fname, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i8*, i8** @fname, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 120, i8* %17, align 1
  %18 = load i8*, i8** @fname, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** @newfile.fpnt, align 8
  br label %26

20:                                               ; preds = %9
  %21 = load i8*, i8** @fname, align 8
  %22 = load i8*, i8** @fname, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** @newfile.fpnt, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fileno(i32 %27)
  store i32 %28, i32* @ofd, align 4
  br label %29

29:                                               ; preds = %26, %0
  %30 = load i64, i64* @dflag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8 48, i8* %4, align 1
  store i8 57, i8* %5, align 1
  br label %34

33:                                               ; preds = %29
  store i8 97, i8* %4, align 1
  store i8 122, i8* %5, align 1
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %36, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  store i64 1, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %41

41:                                               ; preds = %62, %34
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @sufflen, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* @LONG_MAX, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %2, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @EX_USAGE, align 4
  %54 = load i64, i64* %1, align 8
  %55 = call i32 (i32, i8*, ...) @errx(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %61

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %2, align 8
  %60 = mul nsw i64 %59, %58
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %1, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %1, align 8
  br label %41

65:                                               ; preds = %41
  %66 = load i64, i64* @newfile.fnum, align 8
  %67 = load i64, i64* %2, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EX_DATAERR, align 4
  %71 = call i32 (i32, i8*, ...) @errx(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i64, i64* @newfile.fnum, align 8
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* @sufflen, align 8
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %1, align 8
  br label %76

76:                                               ; preds = %92, %72
  %77 = load i64, i64* %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = srem i64 %77, %79
  %81 = load i8, i8* %4, align 1
  %82 = sext i8 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = trunc i64 %83 to i8
  %85 = load i8*, i8** @newfile.fpnt, align 8
  %86 = load i64, i64* %1, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 %84, i8* %87, align 1
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %3, align 8
  %91 = sdiv i64 %90, %89
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %76
  %93 = load i64, i64* %1, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %1, align 8
  %95 = icmp sgt i64 %93, 0
  br i1 %95, label %76, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** @newfile.fpnt, align 8
  %98 = load i64, i64* @sufflen, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i64, i64* @newfile.fnum, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* @newfile.fnum, align 8
  %102 = load i8*, i8** @fname, align 8
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 @freopen(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* @EX_IOERR, align 4
  %108 = load i8*, i8** @fname, align 8
  %109 = call i32 @err(i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %96
  store i32 1, i32* @file_open, align 4
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
