; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_GLOBAL = common dso_local global i32 0, align 4
@ATU_CONTROL = common dso_local global i32 0, align 4
@ATU_CONTROL_AGETIME_MASK = common dso_local global i32 0, align 4
@E6000SW_DEFAULT_AGETIME = common dso_local global i32 0, align 4
@ATU_CONTROL_AGETIME = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@MGMT_EN_2x = common dso_local global i32 0, align 4
@MGMT_EN_ALL = common dso_local global i32 0, align 4
@MGMT_EN_0x = common dso_local global i32 0, align 4
@SWITCH_GLOBAL_CONTROL2 = common dso_local global i32 0, align 4
@SWITCH_MGMT = common dso_local global i32 0, align 4
@SWITCH_MGMT_PRI_MASK = common dso_local global i32 0, align 4
@SWITCH_MGMT_RSVD2CPU = common dso_local global i32 0, align 4
@SWITCH_MGMT_FC_PRI_MASK = common dso_local global i32 0, align 4
@SWITCH_MGMT_FORCEFLOW = common dso_local global i32 0, align 4
@NO_OPERATION = common dso_local global i32 0, align 4
@COUNT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @e6000sw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6000sw_setup(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @REG_GLOBAL, align 4
  %8 = load i32, i32* @ATU_CONTROL, align 4
  %9 = call i32 @e6000sw_readreg(i32* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @ATU_CONTROL_AGETIME_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @E6000SW_DEFAULT_AGETIME, align 4
  %15 = load i32, i32* @ATU_CONTROL_AGETIME, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @REG_GLOBAL, align 4
  %21 = load i32, i32* @ATU_CONTROL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @e6000sw_writereg(i32* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @REG_GLOBAL2, align 4
  %26 = load i32, i32* @MGMT_EN_2x, align 4
  %27 = load i32, i32* @MGMT_EN_ALL, align 4
  %28 = call i32 @e6000sw_writereg(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @REG_GLOBAL2, align 4
  %31 = load i32, i32* @MGMT_EN_0x, align 4
  %32 = load i32, i32* @MGMT_EN_ALL, align 4
  %33 = call i32 @e6000sw_writereg(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @REG_GLOBAL, align 4
  %36 = load i32, i32* @SWITCH_GLOBAL_CONTROL2, align 4
  %37 = call i32 @e6000sw_writereg(i32* %34, i32 %35, i32 %36, i32 0)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @REG_GLOBAL2, align 4
  %40 = load i32, i32* @SWITCH_MGMT, align 4
  %41 = load i32, i32* @SWITCH_MGMT_PRI_MASK, align 4
  %42 = load i32, i32* @SWITCH_MGMT_RSVD2CPU, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @SWITCH_MGMT_FC_PRI_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SWITCH_MGMT_FORCEFLOW, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = call i32 @e6000sw_writereg(i32* %38, i32 %39, i32 %40, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @NO_OPERATION, align 4
  %54 = call i32 @e6000sw_atu_flush(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @NO_OPERATION, align 4
  %58 = call i32 @e6000sw_atu_mac_table(i32 %55, i32* %56, i32* null, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @COUNT_ALL, align 4
  %62 = call i32 @e6000sw_set_atustat(i32 %59, i32* %60, i32 0, i32 %61)
  ret void
}

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

declare dso_local i32 @e6000sw_atu_flush(i32, i32*, i32) #1

declare dso_local i32 @e6000sw_atu_mac_table(i32, i32*, i32*, i32) #1

declare dso_local i32 @e6000sw_set_atustat(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
