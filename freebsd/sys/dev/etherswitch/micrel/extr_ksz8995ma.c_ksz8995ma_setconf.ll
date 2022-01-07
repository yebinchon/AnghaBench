; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.ksz8995ma_softc = type { i64 }

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@KSZ8995MA_GC3 = common dso_local global i32 0, align 4
@KSZ8995MA_VLAN_ENABLE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ksz8995ma_setconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_setconf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz8995ma_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %8)
  store %struct.ksz8995ma_softc* %9, %struct.ksz8995ma_softc** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %25 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @KSZ8995MA_GC3, align 4
  %29 = call i32 @ksz8995ma_readreg(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @KSZ8995MA_GC3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @KSZ8995MA_VLAN_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @ksz8995ma_writereg(i32 %30, i32 %31, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ksz8995ma_portvlanreset(i32 %37)
  br label %74

39:                                               ; preds = %17
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %47 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %7, align 8
  %48 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @KSZ8995MA_GC3, align 4
  %51 = call i32 @ksz8995ma_readreg(i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @KSZ8995MA_GC3, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @KSZ8995MA_VLAN_ENABLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @ksz8995ma_writereg(i32 %52, i32 %53, i32 %56)
  br label %73

58:                                               ; preds = %39
  %59 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %7, align 8
  %60 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @KSZ8995MA_GC3, align 4
  %63 = call i32 @ksz8995ma_readreg(i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @KSZ8995MA_GC3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @KSZ8995MA_VLAN_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @ksz8995ma_writereg(i32 %64, i32 %65, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ksz8995ma_portvlanreset(i32 %71)
  br label %73

73:                                               ; preds = %58, %45
  br label %74

74:                                               ; preds = %73, %23
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i32) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i32, i32) #1

declare dso_local i32 @ksz8995ma_portvlanreset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
