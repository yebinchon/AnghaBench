; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_ck_linktarget.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_ck_linktarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIOCRWFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting flag to rad %s memory failed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to seek to memory offset %ju\00", align 1
@CIS_LINKTARGET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @ck_linktarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ck_linktarget(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PIOCRWFLAG, align 4
  %11 = call i64 @ioctl(i32 %9, i32 %10, i32* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i64 @lseek(i32 %20, i64 %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %32 = call i32 @read(i32 %30, i8* %31, i32 5)
  %33 = icmp ne i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %64

35:                                               ; preds = %29
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @CIS_LINKTARGET, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 67
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 73
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 83
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %64

63:                                               ; preds = %57, %52, %47, %42, %35
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %34
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
