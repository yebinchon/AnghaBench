; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axge_softc = type { i32 }

@AXGE_ACCESS_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @axge_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axge_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.axge_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.axge_softc* @device_get_softc(i32 %11)
  store %struct.axge_softc* %12, %struct.axge_softc** %9, align 8
  %13 = load %struct.axge_softc*, %struct.axge_softc** %9, align 8
  %14 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.axge_softc*, %struct.axge_softc** %9, align 8
  %20 = call i32 @AXGE_LOCK(%struct.axge_softc* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.axge_softc*, %struct.axge_softc** %9, align 8
  %23 = load i32, i32* @AXGE_ACCESS_PHY, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @axge_write_cmd_2(%struct.axge_softc* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load %struct.axge_softc*, %struct.axge_softc** %9, align 8
  %32 = call i32 @AXGE_UNLOCK(%struct.axge_softc* %31)
  br label %33

33:                                               ; preds = %30, %21
  ret i32 0
}

declare dso_local %struct.axge_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AXGE_LOCK(%struct.axge_softc*) #1

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @AXGE_UNLOCK(%struct.axge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
