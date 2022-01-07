; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_slogbench.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_slogbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Synchronous random writes:\0A\00", align 1
@MAXTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\09%4.4g kbytes: \00", align 1
@DIOCGFLUSH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@EX_IOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Flush error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @slogbench to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slogbench(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %82, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MAXTX, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 1.024000e+03
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %24)
  store i32 0, i32* %13, align 4
  %26 = call i32 (...) @T0()
  br label %27

27:                                               ; preds = %75, %21
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 250
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = call i32 (...) @random()
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sdiv i32 %33, %34
  %36 = srem i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @parwrite(i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %69

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @fsync(i32 %50)
  store i32 %51, i32* %11, align 4
  br label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @DIOCGFLUSH, align 4
  %55 = call i32 @ioctl(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOTSUP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EX_IOERR, align 4
  %66 = call i32 @err(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %28

72:                                               ; preds = %28
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 250
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %72
  %76 = call double (...) @delta_t()
  %77 = fcmp olt double %76, 1.000000e+00
  br i1 %77, label %27, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @TS(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %10, align 4
  br label %17

85:                                               ; preds = %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @T0(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @parwrite(i32, i32, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local double @delta_t(...) #1

declare dso_local i32 @TS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
