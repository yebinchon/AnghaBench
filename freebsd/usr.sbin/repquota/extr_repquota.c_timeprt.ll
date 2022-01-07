; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_timeprt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_timeprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timeprt.buf = internal global [20 x i8] zeroinitializer, align 16
@timeprt.now = internal global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%lddays\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%2ld:%ld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%2ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @timeprt(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @timeprt.now, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @time(i64* @timeprt.now)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @timeprt.now, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @strlcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 20)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

16:                                               ; preds = %10
  %17 = load i64, i64* @timeprt.now, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 30
  %22 = sdiv i64 %21, 60
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 30
  %25 = sdiv i64 %24, 60
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sge i64 %26, 36
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 12
  %31 = sdiv i64 %30, 24
  %32 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

33:                                               ; preds = %16
  %34 = load i64, i64* %5, align 8
  %35 = icmp sge i64 %34, 60
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = sdiv i64 %37, 60
  %39 = load i64, i64* %5, align 8
  %40 = srem i64 %39, 60
  %41 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %38, i64 %40)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8
  %44 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @timeprt.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %42, %36, %28, %14
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
