; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idad_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.disk = type { %struct.idad_softc* }

@ENXIO = common dso_local global i32 0, align 4
@IDA_INTERRUPTS = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@DMA_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64)* @idad_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idad_dump(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.idad_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.disk*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.disk*
  store %struct.disk* %16, %struct.disk** %14, align 8
  %17 = load %struct.disk*, %struct.disk** %14, align 8
  %18 = getelementptr inbounds %struct.disk, %struct.disk* %17, i32 0, i32 0
  %19 = load %struct.idad_softc*, %struct.idad_softc** %18, align 8
  store %struct.idad_softc* %19, %struct.idad_softc** %12, align 8
  %20 = load %struct.idad_softc*, %struct.idad_softc** %12, align 8
  %21 = icmp eq %struct.idad_softc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %6, align 4
  br label %59

24:                                               ; preds = %5
  %25 = load i32, i32* @IDA_INTERRUPTS, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.idad_softc*, %struct.idad_softc** %12, align 8
  %28 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  %36 = load %struct.idad_softc*, %struct.idad_softc** %12, align 8
  %37 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* @CMD_WRITE, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.idad_softc*, %struct.idad_softc** %12, align 8
  %43 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @DEV_BSIZE, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* @DMA_DATA_OUT, align 4
  %49 = call i32 @ida_command(%struct.TYPE_2__* %38, i32 %39, i8* %40, i64 %41, i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %35, %24
  %51 = load i32, i32* @IDA_INTERRUPTS, align 4
  %52 = load %struct.idad_softc*, %struct.idad_softc** %12, align 8
  %53 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %50, %22
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @ida_command(%struct.TYPE_2__*, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
