; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.ure_softc = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32 }

@URE_FLAG_8152 = common dso_local global i32 0, align 4
@URE_CHIP_VER_4C00 = common dso_local global i32 0, align 4
@URE_CHIP_VER_4C10 = common dso_local global i32 0, align 4
@URE_PLA_IDR = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_PLA_BACKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MAC assigned randomly\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @ure_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ure_softc*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %4 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %5 = call %struct.ure_softc* @uether_getsc(%struct.usb_ether* %4)
  store %struct.ure_softc* %5, %struct.ure_softc** %3, align 8
  %6 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %9 = call i32 @ure_read_chipver(%struct.ure_softc* %8)
  %10 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @URE_FLAG_8152, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %18 = call i32 @ure_rtl8152_init(%struct.ure_softc* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %21 = call i32 @ure_rtl8153_init(%struct.ure_softc* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @URE_CHIP_VER_4C00, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @URE_CHIP_VER_4C10, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29, %22
  %37 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %38 = load i32, i32* @URE_PLA_IDR, align 4
  %39 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %40 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %41 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ure_read_mem(%struct.ure_softc* %37, i32 %38, i32 %39, i32 %42, i32 8)
  br label %52

44:                                               ; preds = %29
  %45 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %46 = load i32, i32* @URE_PLA_BACKUP, align 4
  %47 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %48 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %49 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ure_read_mem(%struct.ure_softc* %45, i32 %46, i32 %47, i32 %50, i32 8)
  br label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @ETHER_IS_ZERO(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %70 = call i32 @arc4rand(i32* %68, i32 %69, i32 0)
  %71 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -2
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ure_softc*, %struct.ure_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, 2
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %59, %52
  ret void
}

declare dso_local %struct.ure_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @ure_read_chipver(%struct.ure_softc*) #1

declare dso_local i32 @ure_rtl8152_init(%struct.ure_softc*) #1

declare dso_local i32 @ure_rtl8153_init(%struct.ure_softc*) #1

declare dso_local i32 @ure_read_mem(%struct.ure_softc*, i32, i32, i32, i32) #1

declare dso_local i64 @ETHER_IS_ZERO(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
