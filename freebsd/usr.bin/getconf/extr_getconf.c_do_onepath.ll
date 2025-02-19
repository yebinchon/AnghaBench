; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getconf/extr_getconf.c_do_onepath.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getconf/extr_getconf.c_do_onepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"pathconf: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"undefined\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @do_onepath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_onepath(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @pathconf(i8* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %17, %13, %3
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %28
  ret void
}

declare dso_local i64 @pathconf(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
