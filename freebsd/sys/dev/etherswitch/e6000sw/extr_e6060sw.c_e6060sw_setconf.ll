; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.e6060sw_softc = type { i64, i64 }

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@DOT1QNONE = common dso_local global i32 0, align 4
@E6063 = common dso_local global i64 0, align 8
@E6065 = common dso_local global i64 0, align 8
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@DOT1QSECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @e6060sw_setconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_setconf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.e6060sw_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.e6060sw_softc* @device_get_softc(i32 %6)
  store %struct.e6060sw_softc* %7, %struct.e6060sw_softc** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %22 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %23 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DOT1QNONE, align 4
  %26 = call i32 @e6060sw_dot1q_mode(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @e6060sw_reset_vlans(i32 %27)
  br label %65

29:                                               ; preds = %14
  %30 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %31 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @E6063, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %37 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @E6065, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35, %29
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %49 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %50 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @DOT1QSECURE, align 4
  %53 = call i32 @e6060sw_dot1q_mode(i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @e6060sw_init_vtu(i32 %54)
  br label %64

56:                                               ; preds = %41, %35
  %57 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %58 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @DOT1QNONE, align 4
  %61 = call i32 @e6060sw_dot1q_mode(i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @e6060sw_reset_vlans(i32 %62)
  br label %64

64:                                               ; preds = %56, %47
  br label %65

65:                                               ; preds = %64, %20
  br label %66

66:                                               ; preds = %65, %2
  ret i32 0
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @e6060sw_dot1q_mode(i32, i32) #1

declare dso_local i32 @e6060sw_reset_vlans(i32) #1

declare dso_local i32 @e6060sw_init_vtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
