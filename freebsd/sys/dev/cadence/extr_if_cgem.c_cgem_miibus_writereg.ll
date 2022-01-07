; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32 }

@CGEM_PHY_MAINT = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_CLAUSE_22 = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_MUST_10 = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_OP_WRITE = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@CGEM_PHY_MAINT_DATA_MASK = common dso_local global i32 0, align 4
@CGEM_NET_STAT = common dso_local global i32 0, align 4
@CGEM_NET_STAT_PHY_MGMT_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"phy write timeout: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cgem_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgem_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.cgem_softc* @device_get_softc(i32 %12)
  store %struct.cgem_softc* %13, %struct.cgem_softc** %10, align 8
  %14 = load %struct.cgem_softc*, %struct.cgem_softc** %10, align 8
  %15 = load i32, i32* @CGEM_PHY_MAINT, align 4
  %16 = load i32, i32* @CGEM_PHY_MAINT_CLAUSE_22, align 4
  %17 = load i32, i32* @CGEM_PHY_MAINT_MUST_10, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CGEM_PHY_MAINT_OP_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CGEM_PHY_MAINT_PHY_ADDR_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CGEM_PHY_MAINT_REG_ADDR_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @CGEM_PHY_MAINT_DATA_MASK, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 @WR4(%struct.cgem_softc* %14, i32 %15, i32 %32)
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %50, %4
  %35 = load %struct.cgem_softc*, %struct.cgem_softc** %10, align 8
  %36 = load i32, i32* @CGEM_NET_STAT, align 4
  %37 = call i32 @RD4(%struct.cgem_softc* %35, i32 %36)
  %38 = load i32, i32* @CGEM_NET_STAT_PHY_MGMT_IDLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = call i32 @DELAY(i32 5)
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = icmp sgt i32 %44, 200
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %5, align 4
  br label %52

50:                                               ; preds = %41
  br label %34

51:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %5, align 4
  ret i32 %53
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
