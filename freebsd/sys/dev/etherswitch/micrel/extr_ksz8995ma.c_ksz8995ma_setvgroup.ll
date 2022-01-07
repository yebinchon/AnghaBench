; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ksz8995ma_softc = type { i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@KSZ8995MA_PC1_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PORT_SIZE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@KSZ8995MA_IDR2 = common dso_local global i64 0, align 8
@KSZ8995MA_VLAN_TABLE_VALID = common dso_local global i32 0, align 4
@KSZ8995MA_IDR1 = common dso_local global i64 0, align 8
@KSZ8995MA_IDR0 = common dso_local global i64 0, align 8
@KSZ8995MA_IAC0 = common dso_local global i64 0, align 8
@KSZ8995MA_VLAN_TABLE_WRITE = common dso_local global i32 0, align 4
@KSZ8995MA_IAC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ksz8995ma_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_setvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ksz8995ma_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %7)
  store %struct.ksz8995ma_softc* %8, %struct.ksz8995ma_softc** %5, align 8
  %9 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %5, align 8
  %10 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* @KSZ8995MA_PC1_BASE, align 8
  %17 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  %24 = call i32 @ksz8995ma_readreg(i32 %15, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* @KSZ8995MA_PC1_BASE, align 8
  %27 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 224
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = or i32 %35, %39
  %41 = call i32 @ksz8995ma_writereg(i32 %25, i64 %33, i32 %40)
  br label %104

42:                                               ; preds = %2
  %43 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %103

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i64, i64* @KSZ8995MA_IDR2, align 8
  %56 = load i32, i32* @KSZ8995MA_VLAN_TABLE_VALID, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  %61 = or i32 %56, %60
  %62 = call i32 @ksz8995ma_writereg(i32 %54, i64 %55, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load i64, i64* @KSZ8995MA_IDR1, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = or i32 %68, %72
  %74 = call i32 @ksz8995ma_writereg(i32 %63, i64 %64, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i64, i64* @KSZ8995MA_IDR0, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  %81 = call i32 @ksz8995ma_writereg(i32 %75, i64 %76, i32 %80)
  br label %92

82:                                               ; preds = %48
  %83 = load i32, i32* %3, align 4
  %84 = load i64, i64* @KSZ8995MA_IDR2, align 8
  %85 = call i32 @ksz8995ma_writereg(i32 %83, i64 %84, i32 0)
  %86 = load i32, i32* %3, align 4
  %87 = load i64, i64* @KSZ8995MA_IDR1, align 8
  %88 = call i32 @ksz8995ma_writereg(i32 %86, i64 %87, i32 0)
  %89 = load i32, i32* %3, align 4
  %90 = load i64, i64* @KSZ8995MA_IDR0, align 8
  %91 = call i32 @ksz8995ma_writereg(i32 %89, i64 %90, i32 0)
  br label %92

92:                                               ; preds = %82, %53
  %93 = load i32, i32* %3, align 4
  %94 = load i64, i64* @KSZ8995MA_IAC0, align 8
  %95 = load i32, i32* @KSZ8995MA_VLAN_TABLE_WRITE, align 4
  %96 = call i32 @ksz8995ma_writereg(i32 %93, i64 %94, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i64, i64* @KSZ8995MA_IAC1, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ksz8995ma_writereg(i32 %97, i64 %98, i32 %101)
  br label %103

103:                                              ; preds = %92, %42
  br label %104

104:                                              ; preds = %103, %14
  ret i32 0
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i64) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
