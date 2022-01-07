; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_COMMAND_START = common dso_local global i32 0, align 4
@MII_COMMAND_WRITE = common dso_local global i32 0, align 4
@MII_COMMAND_ACK = common dso_local global i32 0, align 4
@MDIRPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mii_bitbang_writereg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mii_bitbang_sync(i32 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MII_COMMAND_START, align 4
  %17 = call i32 @mii_bitbang_sendbits(i32 %14, i32 %15, i32 %16, i32 2)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MII_COMMAND_WRITE, align 4
  %21 = call i32 @mii_bitbang_sendbits(i32 %18, i32 %19, i32 %20, i32 2)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mii_bitbang_sendbits(i32 %22, i32 %23, i32 %24, i32 5)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @mii_bitbang_sendbits(i32 %26, i32 %27, i32 %28, i32 5)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MII_COMMAND_ACK, align 4
  %33 = call i32 @mii_bitbang_sendbits(i32 %30, i32 %31, i32 %32, i32 2)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mii_bitbang_sendbits(i32 %34, i32 %35, i32 %36, i32 16)
  %38 = load i32, i32* @MDIRPHY, align 4
  %39 = call i32 @MWRITE(i32 %38)
  ret void
}

declare dso_local i32 @mii_bitbang_sync(i32, i32) #1

declare dso_local i32 @mii_bitbang_sendbits(i32, i32, i32, i32) #1

declare dso_local i32 @MWRITE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
