; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uchcom_softc* }
%struct.uchcom_softc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32)* @uchcom_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_cfg_set_rts(%struct.ucom_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uchcom_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 0
  %8 = load %struct.uchcom_softc*, %struct.uchcom_softc** %7, align 8
  store %struct.uchcom_softc* %8, %struct.uchcom_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %13 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %15 = call i32 @uchcom_set_dtr_rts(%struct.uchcom_softc* %14)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @uchcom_set_dtr_rts(%struct.uchcom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
