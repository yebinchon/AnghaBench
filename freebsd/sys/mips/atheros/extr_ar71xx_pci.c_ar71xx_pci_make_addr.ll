; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_pci.c_ar71xx_pci_make_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_pci.c_ar71xx_pci_make_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ar71xx_pci_make_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_pci_make_addr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, -4
  %20 = or i32 %17, %19
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 11
  %26 = or i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, -4
  %32 = or i32 %29, %31
  %33 = or i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21, %12
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
