; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_regnode_set_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_sy8106a.c_sy8106a_regnode_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32 }
%struct.sy8106a_reg_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VOUT1_SEL = common dso_local global i32 0, align 4
@SEL_VOLTAGE_MASK = common dso_local global i32 0, align 4
@SEL_VOLTAGE_STEP = common dso_local global i32 0, align 4
@SEL_VOLTAGE_BASE = common dso_local global i32 0, align 4
@SEL_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*, i32, i32, i32*)* @sy8106a_regnode_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8106a_regnode_set_voltage(%struct.regnode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.regnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sy8106a_reg_sc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.regnode*, %struct.regnode** %5, align 8
  %14 = call %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode* %13)
  store %struct.sy8106a_reg_sc* %14, %struct.sy8106a_reg_sc** %9, align 8
  %15 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %9, align 8
  %16 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VOUT1_SEL, align 4
  %19 = call i32 @sy8106a_read(i32 %17, i32 %18, i32* %12, i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SEL_VOLTAGE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SEL_VOLTAGE_STEP, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @SEL_VOLTAGE_BASE, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @SEL_GO, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SEL_VOLTAGE_BASE, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @SEL_VOLTAGE_STEP, align 4
  %32 = sdiv i32 %30, %31
  %33 = or i32 %27, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %9, align 8
  %35 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VOUT1_SEL, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @sy8106a_write(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.sy8106a_reg_sc*, %struct.sy8106a_reg_sc** %9, align 8
  %41 = getelementptr inbounds %struct.sy8106a_reg_sc, %struct.sy8106a_reg_sc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @abs(i32 %47) #3
  %49 = load i32, i32* @SEL_VOLTAGE_STEP, align 4
  %50 = sdiv i32 %48, %49
  %51 = mul nsw i32 %44, %50
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  ret i32 0
}

declare dso_local %struct.sy8106a_reg_sc* @regnode_get_softc(%struct.regnode*) #1

declare dso_local i32 @sy8106a_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sy8106a_write(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
