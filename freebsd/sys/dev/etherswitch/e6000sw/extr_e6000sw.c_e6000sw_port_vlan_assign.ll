; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_port_vlan_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_port_vlan_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@PORT_VLAN_MAP_FID_MASK = common dso_local global i32 0, align 4
@PORT_VLAN_MAP_FID = common dso_local global i32 0, align 4
@PORT_CONTROL1 = common dso_local global i32 0, align 4
@PORT_CONTROL1_FID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @e6000sw_port_vlan_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6000sw_port_vlan_assign(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @REG_PORT(i32* %11, i32 %12)
  %14 = load i32, i32* @PORT_VLAN_MAP, align 4
  %15 = call i32 @e6000sw_readreg(i32* %10, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PORT_MASK(i32* %16)
  %18 = load i32, i32* @PORT_VLAN_MAP_FID_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PORT_MASK(i32* %24)
  %26 = and i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PORT_VLAN_MAP_FID, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @PORT_VLAN_MAP_FID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @REG_PORT(i32* %41, i32 %42)
  %44 = load i32, i32* @PORT_VLAN_MAP, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @e6000sw_writereg(i32* %40, i32 %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @REG_PORT(i32* %48, i32 %49)
  %51 = load i32, i32* @PORT_CONTROL1, align 4
  %52 = call i32 @e6000sw_readreg(i32* %47, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @PORT_CONTROL1_FID_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 4
  %59 = load i32, i32* @PORT_CONTROL1_FID_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @REG_PORT(i32* %64, i32 %65)
  %67 = load i32, i32* @PORT_CONTROL1, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @e6000sw_writereg(i32* %63, i32 %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

declare dso_local i32 @REG_PORT(i32*, i32) #1

declare dso_local i32 @PORT_MASK(i32*) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
