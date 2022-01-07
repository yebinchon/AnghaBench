; ModuleID = '/home/carl/AnghaBench/git/block-sha1/extr_..compatbswap.h_default_bswap64.c'
source_filename = "/home/carl/AnghaBench/git/block-sha1/extr_..compatbswap.h_default_bswap64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @default_bswap64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_bswap64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  %5 = shl i32 %4, 56
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 65280
  %8 = shl i32 %7, 40
  %9 = or i32 %5, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 16711680
  %12 = shl i32 %11, 24
  %13 = or i32 %9, %12
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, -16777216
  %16 = shl i32 %15, 8
  %17 = or i32 %13, %16
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 0
  %20 = ashr i32 %19, 8
  %21 = or i32 %17, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 0
  %24 = ashr i32 %23, 24
  %25 = or i32 %21, %24
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 0
  %28 = ashr i32 %27, 40
  %29 = or i32 %25, %28
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 0
  %32 = ashr i32 %31, 56
  %33 = or i32 %29, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
