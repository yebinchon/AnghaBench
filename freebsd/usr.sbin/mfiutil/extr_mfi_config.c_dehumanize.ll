; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_dehumanize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_dehumanize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @dehumanize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dehumanize(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %49

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strtoq(i8* %10, i8** %4, i32 0)
  store i64 %11, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %9
  store i64 0, i64* %2, align 8
  br label %49

28:                                               ; preds = %21, %15
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %46 [
    i32 116, label %33
    i32 84, label %33
    i32 103, label %36
    i32 71, label %36
    i32 109, label %39
    i32 77, label %39
    i32 107, label %42
    i32 75, label %42
    i32 0, label %45
  ]

33:                                               ; preds = %28, %28
  %34 = load i64, i64* %5, align 8
  %35 = mul nsw i64 %34, 1024
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %28, %28, %33
  %37 = load i64, i64* %5, align 8
  %38 = mul nsw i64 %37, 1024
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %28, %28, %36
  %40 = load i64, i64* %5, align 8
  %41 = mul nsw i64 %40, 1024
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %28, %28, %39
  %43 = load i64, i64* %5, align 8
  %44 = mul nsw i64 %43, 1024
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %28, %42
  br label %47

46:                                               ; preds = %28
  store i64 0, i64* %2, align 8
  br label %49

47:                                               ; preds = %45
  %48 = load i64, i64* %5, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %46, %27, %8
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
