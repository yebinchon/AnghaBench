; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_READ_6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_READ_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @READ_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @READ_6(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 0
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %16, %18
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %19, %21
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 24
  %25 = or i32 %22, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 0
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %32, %33
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
