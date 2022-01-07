; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_largest_file.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_largest_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFF_MAX = common dso_local global i64 0, align 8
@SIGXFSZ = common dso_local global i32 0, align 4
@sigxfsz = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create testfile\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to seek to end of testfile\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to write to end of file\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to seek to end of file\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"write errno=EFBIG: success\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Did not receive EFBIG\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"write completed successfully, test failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* @OFF_MAX, align 8
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @usage(i8* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @SIGXFSZ, align 4
  %24 = load i32, i32* @sigxfsz, align 4
  %25 = call i32 @sigset(i32 %23, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = load i32, i32* @O_RDWR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @open(i8* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %10, align 4
  br label %88

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @lseek(i32 %41, i64 %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %10, align 4
  br label %88

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %53 = call i32 @write(i32 %51, i8* %52, i32 1)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %10, align 4
  br label %88

59:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @SEEK_CUR, align 4
  %63 = call i64 @lseek(i32 %60, i64 %61, i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %10, align 4
  br label %88

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %72 = call i32 @write(i32 %70, i8* %71, i32 1)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @EFBIG, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %84

81:                                               ; preds = %75
  %82 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %79
  br label %87

85:                                               ; preds = %69
  %86 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %66, %56, %47, %37
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @unlink(i8* %89)
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @sigset(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
