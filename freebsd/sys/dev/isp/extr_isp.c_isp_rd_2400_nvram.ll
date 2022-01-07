; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_rd_2400_nvram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_rd_2400_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIU2400_FLASH_ADDR = common dso_local global i32 0, align 4
@BIU2400_FLASH_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @isp_rd_2400_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_rd_2400_nvram(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 2147352576, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @IS_26XX(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 2145894400, i32* %8, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @IS_25XX(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 2146729984, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @BIU2400_FLASH_ADDR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ISP_WRITE(i32* %21, i32 %22, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 5000
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = call i32 @ISP_DELAY(i32 10)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @BIU2400_FLASH_ADDR, align 4
  %34 = call i32 @ISP_READ(i32* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -2147483648
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @BIU2400_FLASH_DATA, align 4
  %50 = call i32 @ISP_READ(i32* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ISP_SWIZZLE_NVRAM_LONG(i32* %52, i32* %53)
  br label %57

55:                                               ; preds = %43
  %56 = load i32*, i32** %6, align 8
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %47
  ret void
}

declare dso_local i64 @IS_26XX(i32*) #1

declare dso_local i64 @IS_25XX(i32*) #1

declare dso_local i32 @ISP_WRITE(i32*, i32, i32) #1

declare dso_local i32 @ISP_DELAY(i32) #1

declare dso_local i32 @ISP_READ(i32*, i32) #1

declare dso_local i32 @ISP_SWIZZLE_NVRAM_LONG(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
