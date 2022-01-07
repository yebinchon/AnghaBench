; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.ksz8995ma_softc = type { i64, i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ETHERSWITCH_VID_VALID = common dso_local global i8* null, align 8
@KSZ8995MA_PC1_BASE = common dso_local global i64 0, align 8
@KSZ8995MA_PORT_SIZE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@KSZ8995MA_IAC0 = common dso_local global i32 0, align 4
@KSZ8995MA_VLAN_TABLE_READ = common dso_local global i32 0, align 4
@KSZ8995MA_IAC1 = common dso_local global i32 0, align 4
@KSZ8995MA_IDR2 = common dso_local global i64 0, align 8
@KSZ8995MA_IDR1 = common dso_local global i64 0, align 8
@KSZ8995MA_IDR0 = common dso_local global i64 0, align 8
@KSZ8995MA_VLAN_TABLE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ksz8995ma_getvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_getvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ksz8995ma_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %10)
  store %struct.ksz8995ma_softc* %11, %struct.ksz8995ma_softc** %9, align 8
  %12 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %9, align 8
  %13 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %9, align 8
  %22 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = or i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* @KSZ8995MA_PC1_BASE, align 8
  %41 = load i32, i32* @KSZ8995MA_PORT_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %42, %45
  %47 = add nsw i64 %40, %46
  %48 = call i32 @ksz8995ma_readreg(i32 %39, i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 31
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 0, i32* %59, align 4
  br label %63

60:                                               ; preds = %17
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %25
  br label %133

64:                                               ; preds = %2
  %65 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %9, align 8
  %66 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %132

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @KSZ8995MA_IAC0, align 4
  %73 = load i32, i32* @KSZ8995MA_VLAN_TABLE_READ, align 4
  %74 = call i32 @ksz8995ma_writereg(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @KSZ8995MA_IAC1, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ksz8995ma_writereg(i32 %75, i32 %76, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = load i64, i64* @KSZ8995MA_IDR2, align 8
  %84 = call i32 @ksz8995ma_readreg(i32 %82, i64 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i64, i64* @KSZ8995MA_IDR1, align 8
  %87 = call i32 @ksz8995ma_readreg(i32 %85, i64 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i64, i64* @KSZ8995MA_IDR0, align 8
  %90 = call i32 @ksz8995ma_readreg(i32 %88, i64 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %92, %94
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @KSZ8995MA_VLAN_TABLE_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %70
  %103 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 4095
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 31
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 12
  %125 = and i32 %124, 15
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %131

128:                                              ; preds = %70
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %102
  br label %132

132:                                              ; preds = %131, %64
  br label %133

133:                                              ; preds = %132, %63
  ret i32 0
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i64) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
