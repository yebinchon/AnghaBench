; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"trim %s offset %ju length %ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"dry run: add -f to actually perform the operation\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@DIOCGDELETE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: TRIM/UNMAP not supported by driver\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ioctl(DIOCGDELETE) failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32, i32)* @trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trim(i8* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @getsize(i8* %18)
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %73

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @O_WRONLY, align 4
  %38 = load i32, i32* @O_DIRECT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @opendev(i8* %36, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %41, i64* %42, align 16
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @DIOCGDELETE, align 4
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %48 = call i32 @ioctl(i32 %45, i32 %46, i64* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %35
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EOPNOTSUPP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @candelete(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %68

65:                                               ; preds = %58, %55, %51
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %33
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @getsize(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @opendev(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @candelete(i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
