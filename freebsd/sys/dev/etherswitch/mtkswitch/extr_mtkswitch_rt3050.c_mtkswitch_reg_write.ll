; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_reg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
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
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %11, i32 %12)
  %14 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @MTKSWITCH_REG32(i32 %15)
  %17 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @MTKSWITCH_IS_HI16(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* @MTKSWITCH_LO16_MSK, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MTKSWITCH_TO_HI16(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @MTKSWITCH_HI16_MSK, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @MTKSWITCH_TO_LO16(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @MTKSWITCH_REG32(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %38, i32 %40, i32 %41)
  ret i32 0
}

declare dso_local %struct.mtkswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_REG32(i32) #1

declare dso_local i64 @MTKSWITCH_IS_HI16(i32) #1

declare dso_local i32 @MTKSWITCH_TO_HI16(i32) #1

declare dso_local i32 @MTKSWITCH_TO_LO16(i32) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
