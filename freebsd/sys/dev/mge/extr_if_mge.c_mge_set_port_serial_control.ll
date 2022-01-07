; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_port_serial_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_port_serial_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_SERIAL_RES_BIT9 = common dso_local global i32 0, align 4
@PORT_SERIAL_FORCE_LINK_FAIL = common dso_local global i32 0, align 4
@PORT_SERIAL_MRU_1552 = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@PORT_SERIAL_GMII_SPEED_1000 = common dso_local global i32 0, align 4
@PORT_SERIAL_AUTONEG = common dso_local global i32 0, align 4
@PORT_SERIAL_AUTONEG_FC = common dso_local global i32 0, align 4
@PORT_SERIAL_SPEED_AUTONEG = common dso_local global i32 0, align 4
@PORT_SERIAL_MII_SPEED_100 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@PORT_SERIAL_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mge_set_port_serial_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_set_port_serial_control(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PORT_SERIAL_RES_BIT9, align 4
  %5 = load i32, i32* @PORT_SERIAL_FORCE_LINK_FAIL, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @PORT_SERIAL_MRU_1552, align 4
  %8 = call i32 @PORT_SERIAL_MRU(i32 %7)
  %9 = or i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @IFM_TYPE(i32 %10)
  %12 = load i64, i64* @IFM_ETHER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @IFM_SUBTYPE(i32 %15)
  switch i32 %16, label %46 [
    i32 128, label %17
    i32 131, label %18
    i32 130, label %28
    i32 129, label %38
  ]

17:                                               ; preds = %14
  br label %46

18:                                               ; preds = %14
  %19 = load i32, i32* @PORT_SERIAL_GMII_SPEED_1000, align 4
  %20 = load i32, i32* @PORT_SERIAL_AUTONEG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PORT_SERIAL_AUTONEG_FC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PORT_SERIAL_SPEED_AUTONEG, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %14
  %29 = load i32, i32* @PORT_SERIAL_MII_SPEED_100, align 4
  %30 = load i32, i32* @PORT_SERIAL_AUTONEG, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PORT_SERIAL_AUTONEG_FC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PORT_SERIAL_SPEED_AUTONEG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %14
  %39 = load i32, i32* @PORT_SERIAL_AUTONEG, align 4
  %40 = load i32, i32* @PORT_SERIAL_AUTONEG_FC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PORT_SERIAL_SPEED_AUTONEG, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %14, %38, %28, %18, %17
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @IFM_FDX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @PORT_SERIAL_FULL_DUPLEX, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @PORT_SERIAL_MRU(i32) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
