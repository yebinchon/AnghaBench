; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_reg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque

@MTKSWITCH_LO16_MSK = common dso_local global i32 0, align 4
@MTKSWITCH_HI16_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mtkswitch_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_reg_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtkswitch_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.mtkswitch_softc* @device_get_softc(i32 %9)
  store %struct.mtkswitch_softc* %10, %struct.mtkswitch_softc** %7, align 8
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.mtkswitch_softc.1*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32)** %13, align 8
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %16 = bitcast %struct.mtkswitch_softc* %15 to %struct.mtkswitch_softc.1*
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @MTKSWITCH_REG32(i32 %17)
  %19 = call i32 %14(%struct.mtkswitch_softc.1* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @MTKSWITCH_IS_HI16(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* @MTKSWITCH_LO16_MSK, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MTKSWITCH_TO_HI16(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load i32, i32* @MTKSWITCH_HI16_MSK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @MTKSWITCH_TO_LO16(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %41 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.mtkswitch_softc.0*, i32, i32)*, i32 (%struct.mtkswitch_softc.0*, i32, i32)** %42, align 8
  %44 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %45 = bitcast %struct.mtkswitch_softc* %44 to %struct.mtkswitch_softc.0*
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @MTKSWITCH_REG32(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 %43(%struct.mtkswitch_softc.0* %45, i32 %47, i32 %48)
  ret i32 0
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTKSWITCH_REG32(i32) #1

declare dso_local i64 @MTKSWITCH_IS_HI16(i32) #1

declare dso_local i32 @MTKSWITCH_TO_HI16(i32) #1

declare dso_local i32 @MTKSWITCH_TO_LO16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
