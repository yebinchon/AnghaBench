; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_readline_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_readline_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64)* @readline_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline_buf(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %36, %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %10, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %24, 1
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %39

28:                                               ; preds = %16
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %10, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %12

39:                                               ; preds = %34, %27, %12
  %40 = load i8*, i8** %10, align 8
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
