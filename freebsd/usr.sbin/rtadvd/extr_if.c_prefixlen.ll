; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_prefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prefixlen(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %40 [
    i32 255, label %15
    i32 254, label %18
    i32 252, label %21
    i32 248, label %24
    i32 240, label %27
    i32 224, label %30
    i32 192, label %33
    i32 128, label %36
    i32 0, label %39
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 8
  store i32 %17, i32* %6, align 4
  br label %41

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 7
  store i32 %20, i32* %6, align 4
  br label %41

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 6
  store i32 %23, i32* %6, align 4
  br label %41

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 5
  store i32 %26, i32* %6, align 4
  br label %41

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %11
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 3
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %11
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %11
  br label %41

40:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %47

41:                                               ; preds = %39, %36, %33, %30, %27, %24, %21, %18, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %7

45:                                               ; preds = %7
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
