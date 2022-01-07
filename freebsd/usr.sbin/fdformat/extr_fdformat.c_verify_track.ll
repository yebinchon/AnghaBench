; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdformat/extr_fdformat.c_verify_track.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdformat/extr_fdformat.c_verify_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verify_track.buf = internal global i8* null, align 8
@verify_track.bufsz = internal global i32 0, align 4
@FD_GOPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"warning: ioctl(FD_GOPTS)\00", align 1
@FDOPT_NORETRY = common dso_local global i32 0, align 4
@FD_SOPTS = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @verify_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_track(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FD_GOPTS, align 4
  %12 = call i64 @ioctl(i32 %10, i32 %11, i32* %7)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @FDOPT_NORETRY, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FD_SOPTS, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, i32* %7)
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* @verify_track.bufsz, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** @verify_track.buf, align 8
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* @verify_track.bufsz, align 4
  %31 = call i8* @realloc(i8* %29, i32 %30)
  store i8* %31, i8** @verify_track.buf, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** @verify_track.buf, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EX_UNAVAILABLE, align 4
  %37 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %41, %43
  %45 = call i64 @lseek(i32 %39, i64 %44, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %9, align 4
  br label %64

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = load i8*, i8** @verify_track.buf, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @read(i32 %49, i8* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i8*, i8** @verify_track.buf, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @read(i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %55, %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @FD_SOPTS, align 4
  %70 = call i64 @ioctl(i32 %68, i32 %69, i32* %8)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
