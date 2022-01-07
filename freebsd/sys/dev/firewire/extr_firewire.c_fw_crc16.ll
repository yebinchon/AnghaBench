; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_crc16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_crc16(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 3
  %11 = and i32 %10, -4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  store i32 28, i32* %8, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 12
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %28, %29
  %31 = xor i32 %22, %30
  %32 = and i32 %31, 15
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 12
  %37 = xor i32 %34, %36
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 5
  %40 = xor i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %40, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %8, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 65535
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %5, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
