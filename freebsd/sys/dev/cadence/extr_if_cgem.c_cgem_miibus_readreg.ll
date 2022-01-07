; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32 }

@CGEM_PHY_MAINT = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_CLAUSE_22 = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_MUST_10 = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_OP_READ = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@CGEM_NET_STAT = common dso_local global i32 0, align 4
@CGEM_NET_STAT_PHY_MGMT_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"phy read timeout: %d\0A\00", align 1
@CGEM_PHY_MAINT_DATA_MASK = common dso_local global i32 0, align 4
@MII_EXTSR = common dso_local global i32 0, align 4
@EXTSR_1000XHDX = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cgem_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgem_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cgem_softc* @device_get_softc(i32 %11)
  store %struct.cgem_softc* %12, %struct.cgem_softc** %8, align 8
  %13 = load %struct.cgem_softc*, %struct.cgem_softc** %8, align 8
  %14 = load i32, i32* @CGEM_PHY_MAINT, align 4
  %15 = load i32, i32* @CGEM_PHY_MAINT_CLAUSE_22, align 4
  %16 = load i32, i32* @CGEM_PHY_MAINT_MUST_10, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CGEM_PHY_MAINT_OP_READ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CGEM_PHY_MAINT_PHY_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CGEM_PHY_MAINT_REG_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = call i32 @WR4(%struct.cgem_softc* %13, i32 %14, i32 %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %45, %3
  %30 = load %struct.cgem_softc*, %struct.cgem_softc** %8, align 8
  %31 = load i32, i32* @CGEM_NET_STAT, align 4
  %32 = call i32 @RD4(%struct.cgem_softc* %30, i32 %31)
  %33 = load i32, i32* @CGEM_NET_STAT_PHY_MGMT_IDLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = call i32 @DELAY(i32 5)
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = icmp sgt i32 %39, 200
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %4, align 4
  br label %64

45:                                               ; preds = %36
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.cgem_softc*, %struct.cgem_softc** %8, align 8
  %48 = load i32, i32* @CGEM_PHY_MAINT, align 4
  %49 = call i32 @RD4(%struct.cgem_softc* %47, i32 %48)
  %50 = load i32, i32* @CGEM_PHY_MAINT_DATA_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MII_EXTSR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @EXTSR_1000XHDX, align 4
  %57 = load i32, i32* @EXTSR_1000THDX, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %41
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.cgem_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
