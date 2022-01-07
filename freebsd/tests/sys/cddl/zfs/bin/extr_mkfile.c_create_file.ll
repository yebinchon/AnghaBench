; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_mkfile.c_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_mkfile.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s %llu bytes\0A\00", align 1
@MKFILE_FLAG = common dso_local global i32 0, align 4
@MKFILE_MODE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@nofill = common dso_local global i32 0, align 4
@MKFILE_WBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @stdout, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %14)
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @MKFILE_FLAG, align 4
  %21 = load i32, i32* @MKFILE_MODE, align 4
  %22 = call i32 @open(i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 1
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @lseek(i32 %26, i64 %28, i32 %29)
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @buf, align 4
  %35 = call i64 @write(i32 %33, i32 %34, i64 1)
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %25
  store i32 -1, i32* %3, align 4
  br label %75

38:                                               ; preds = %32
  %39 = load i32, i32* @nofill, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @lseek(i32 %42, i64 0, i32 %43)
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %75

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @MKFILE_WBUF, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @MKFILE_WBUF, align 8
  br label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @buf, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @write(i32 %61, i32 %62, i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71, %38
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %66, %46, %37, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
