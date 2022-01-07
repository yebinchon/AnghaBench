; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_regnode_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_regnode_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.syr827_reg_sc = type { i32, i32 }

@VSEL_NSEL_MASK = common dso_local global i32 0, align 4
@VSEL_VOLTAGE_STEP = common dso_local global i32 0, align 4
@VSEL_VOLTAGE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32*)* @syr827_regnode_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syr827_regnode_get_voltage(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.syr827_reg_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = call %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode* %7)
  store %struct.syr827_reg_sc* %8, %struct.syr827_reg_sc** %5, align 8
  %9 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %5, align 8
  %10 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.syr827_reg_sc*, %struct.syr827_reg_sc** %5, align 8
  %13 = getelementptr inbounds %struct.syr827_reg_sc, %struct.syr827_reg_sc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @syr827_read(i32 %11, i32 %14, i32* %6, i32 1)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VSEL_NSEL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @VSEL_VOLTAGE_STEP, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @VSEL_VOLTAGE_BASE, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.syr827_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @syr827_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
