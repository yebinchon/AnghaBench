; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_get_dot1q_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_get_dot1q_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AR8X16_VLAN_OP_GET = common dso_local global i32 0, align 4
@AR8X16_REG_VLAN_DATA = common dso_local global i32 0, align 4
@AR8X16_VLAN_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_get_dot1q_vlan(%struct.arswitch_softc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arswitch_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %12, i32 %13)
  %15 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %16 = load i32, i32* @AR8X16_VLAN_OP_GET, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ar8xxx_vlan_op(%struct.arswitch_softc* %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %25 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AR8X16_REG_VLAN_DATA, align 4
  %28 = call i32 @arswitch_readreg(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @AR8X16_VLAN_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %23
  %37 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %38 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %36, %33, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ar8xxx_vlan_op(%struct.arswitch_softc*, i32, i32, i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
