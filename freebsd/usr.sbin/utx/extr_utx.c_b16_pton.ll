; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_b16_pton.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_b16_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @b16_pton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b16_pton(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = mul i64 %11, 2
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @isxdigit(i8 zeroext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %44

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %9

26:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, 2
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %27

43:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
