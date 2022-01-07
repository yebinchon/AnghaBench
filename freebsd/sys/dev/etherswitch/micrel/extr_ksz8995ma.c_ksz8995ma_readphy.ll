; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_readphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_readphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_BMSR = common dso_local global i32 0, align 4
@KSZ8995MA_PS0_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PORT_SIZE = common dso_local global i32 0, align 4
@KSZ8995MA_MII_STAT = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@MII_PHYIDR1 = common dso_local global i32 0, align 4
@KSZ8995MA_MII_PHYID_H = common dso_local global i32 0, align 4
@MII_PHYIDR2 = common dso_local global i32 0, align 4
@KSZ8995MA_MII_PHYID_L = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@KSZ8995MA_PC12_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_MII_AA = common dso_local global i32 0, align 4
@MII_ANLPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ksz8995ma_readphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_readphy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MII_BMSR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* @KSZ8995MA_PS0_BASE, align 8
  %15 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i32 @ksz8995ma_readreg(i32 %13, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @KSZ8995MA_MII_STAT, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @BMSR_LINK, align 4
  br label %28

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %21, %29
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @BMSR_ACOMP, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %30, %38
  store i32 %39, i32* %4, align 4
  br label %92

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MII_PHYIDR1, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @KSZ8995MA_MII_PHYID_H, align 4
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MII_PHYIDR2, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @KSZ8995MA_MII_PHYID_L, align 4
  store i32 %51, i32* %4, align 4
  br label %92

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MII_ANAR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* @KSZ8995MA_PC12_BASE, align 8
  %59 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = call i32 @ksz8995ma_readreg(i32 %57, i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @KSZ8995MA_MII_AA, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 15
  %68 = shl i32 %67, 5
  %69 = or i32 %65, %68
  store i32 %69, i32* %4, align 4
  br label %92

70:                                               ; preds = %52
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MII_ANLPAR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* @KSZ8995MA_PS0_BASE, align 8
  %77 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = call i32 @ksz8995ma_readreg(i32 %75, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 5
  %86 = or i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %74, %56, %50, %44, %37
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ksz8995ma_readreg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
