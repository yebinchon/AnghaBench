; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bbp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"reg=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not write to BBP\0A\00", align 1
@RT2573_BBP_BUSY = common dso_local global i32 0, align 4
@RT2573_PHY_CSR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, i32, i32)* @rum_bbp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_bbp_write(%struct.rum_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %11 = call i64 @rum_bbp_busy(%struct.rum_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @RT2573_BBP_BUSY, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 8
  %23 = or i32 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %27 = load i32, i32* @RT2573_PHY_CSR3, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @rum_write(%struct.rum_softc* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i64 @rum_bbp_busy(%struct.rum_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rum_write(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
