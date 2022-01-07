; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_real_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_real_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@real_doit.fd = internal global i32 -1, align 4
@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@nexus = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*)* @real_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @real_doit(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @real_doit.fd, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** @nexus, align 8
  %15 = call i32 @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* @real_doit.fd, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i8*, i8** @nexus, align 8
  %22 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* @real_doit.fd, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @ioctl(i32 %27, i64 %28, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
