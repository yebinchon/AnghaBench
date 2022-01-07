; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_vlan_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_vlan_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@AR8X16_REG_VLAN_CTRL = common dso_local global i32 0, align 4
@AR8X16_VLAN_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AR8X16_VLAN_OP_LOAD = common dso_local global i32 0, align 4
@AR8X16_REG_VLAN_DATA = common dso_local global i32 0, align 4
@AR8X16_VLAN_MEMBER = common dso_local global i32 0, align 4
@AR8X16_VLAN_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@AR8X16_VLAN_VID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, i32, i32, i32)* @ar8xxx_vlan_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_vlan_op(%struct.arswitch_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arswitch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AR8X16_REG_VLAN_CTRL, align 4
  %15 = load i32, i32* @AR8X16_VLAN_ACTIVE, align 4
  %16 = call i64 @arswitch_waitreg(i32 %13, i32 %14, i32 %15, i32 0, i32 5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %5, align 4
  br label %71

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AR8X16_VLAN_OP_LOAD, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %26 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR8X16_REG_VLAN_DATA, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @AR8X16_VLAN_VALID, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @arswitch_writereg(i32 %27, i32 %28, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %71

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @AR8X16_VLAN_VID_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* @AR8X16_VLAN_ACTIVE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %56 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR8X16_REG_VLAN_CTRL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @arswitch_writereg(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %62 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR8X16_REG_VLAN_CTRL, align 4
  %65 = load i32, i32* @AR8X16_VLAN_ACTIVE, align 4
  %66 = call i64 @arswitch_waitreg(i32 %63, i32 %64, i32 %65, i32 0, i32 5)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i32, i32* @EBUSY, align 4
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %68, %37, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @arswitch_waitreg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
