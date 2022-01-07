; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_writephy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_BMCR = common dso_local global i32 0, align 4
@KSZ8995MA_PC13_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PORT_SIZE = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@KSZ8995MA_PDOWN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@KSZ8995MA_STARTNEG = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@KSZ8995MA_PC12_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ksz8995ma_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_writephy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* @KSZ8995MA_PC13_BASE, align 8
  %16 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = call i32 @ksz8995ma_readreg(i32 %14, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @BMCR_PDOWN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @KSZ8995MA_PDOWN, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %13
  %31 = load i32, i32* @KSZ8995MA_PDOWN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BMCR_STARTNEG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @KSZ8995MA_STARTNEG, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @KSZ8995MA_STARTNEG, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* @KSZ8995MA_PC13_BASE, align 8
  %52 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ksz8995ma_writereg(i32 %50, i64 %56, i32 %57)
  br label %89

59:                                               ; preds = %4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MII_ANAR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* @KSZ8995MA_PC12_BASE, align 8
  %66 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = call i32 @ksz8995ma_readreg(i32 %64, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 15
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 5
  %76 = and i32 %75, 15
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* @KSZ8995MA_PC12_BASE, align 8
  %81 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ksz8995ma_writereg(i32 %79, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %63, %59
  br label %89

89:                                               ; preds = %88, %49
  ret i32 0
}

declare dso_local i32 @ksz8995ma_readreg(i32, i64) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
