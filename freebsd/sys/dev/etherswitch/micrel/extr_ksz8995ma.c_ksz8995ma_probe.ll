; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz8995ma_softc = type { i32 }

@KSZ8995MA_CID0 = common dso_local global i32 0, align 4
@KSZ8995MA_CID1 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Chip Identifier Register %x %x\0A\00", align 1
@KSZ8995MA_FAMILI_ID = common dso_local global i32 0, align 4
@KSZ8995MA_CHIP_ID_MASK = common dso_local global i32 0, align 4
@KSZ8995MA_CHIP_ID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Micrel KSZ8995MA SPI switch driver\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ksz8995ma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ksz8995ma_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %7)
  store %struct.ksz8995ma_softc* %8, %struct.ksz8995ma_softc** %6, align 8
  %9 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %6, align 8
  %10 = call i32 @bzero(%struct.ksz8995ma_softc* %9, i32 4)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @KSZ8995MA_CID0, align 4
  %13 = call i32 @ksz8995ma_readreg(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @KSZ8995MA_CID1, align 4
  %16 = call i32 @ksz8995ma_readreg(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @KSZ8995MA_FAMILI_ID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @KSZ8995MA_CHIP_ID_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @KSZ8995MA_CHIP_ID, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %24
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_set_desc_copy(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ksz8995ma_softc*, i32) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
