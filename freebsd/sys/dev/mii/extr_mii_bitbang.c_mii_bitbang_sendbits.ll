; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_sendbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_sendbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIRPHY = common dso_local global i32 0, align 4
@MDO = common dso_local global i32 0, align 4
@MDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mii_bitbang_sendbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_bitbang_sendbits(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @MDIRPHY, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @MWRITE(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 1, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %43, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @MDO, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @MDO, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @MWRITE(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MDC, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @MWRITE(i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @MWRITE(i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %17

46:                                               ; preds = %17
  ret void
}

declare dso_local i32 @MWRITE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
