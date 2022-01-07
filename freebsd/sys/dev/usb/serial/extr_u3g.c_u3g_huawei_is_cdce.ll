; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_huawei_is_cdce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_huawei_is_cdce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_VENDOR_HUAWEI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @u3g_huawei_is_cdce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3g_huawei_is_cdce(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @USB_VENDOR_HUAWEI, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %26

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %24 [
    i32 2, label %14
    i32 3, label %19
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 22, label %16
    i32 70, label %16
    i32 118, label %16
  ]

16:                                               ; preds = %14, %14, %14
  store i32 1, i32* %4, align 4
  br label %27

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  br label %25

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %22 [
    i32 22, label %21
  ]

21:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %27

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %23, %18
  br label %26

26:                                               ; preds = %25, %11
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
