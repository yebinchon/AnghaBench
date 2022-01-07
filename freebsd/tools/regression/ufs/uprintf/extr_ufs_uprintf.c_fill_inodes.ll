; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/ufs/uprintf/extr_ufs_uprintf.c_fill_inodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/ufs/uprintf/extr_ufs_uprintf.c_fill_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"fill_inodes: open(%s)\00", align 1
@NUMTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"fill_inodes: open(%s) after ENOSPC\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"fill_inodes: open(%s) after ENOSPC returned  %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fill_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_inodes() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %0
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @snprintf(i8* %9, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %9, i32 %19, i32 384)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %29

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %10

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOSPC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  br label %69

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NUMTRIES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i32, i32* @O_CREAT, align 4
  %43 = load i32, i32* @O_TRUNC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open(i8* %9, i32 %46, i32 384)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOSPC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %9)
  br label %69

56:                                               ; preds = %50, %41
  %57 = load i32, i32* %3, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %9, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @close(i32 %62)
  br label %69

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %59, %54, %34
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @PATH_MAX, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @snprintf(i8* %9, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = call i32 @unlink(i8* %9)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %70

82:                                               ; preds = %70
  %83 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
