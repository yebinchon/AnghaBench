; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_write_timeregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_write_timeregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds13rtc_softc = type { i32, i32 }
%struct.time_regs = type { i32 }

@IIC_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds13rtc_softc*, %struct.time_regs*)* @write_timeregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_timeregs(%struct.ds13rtc_softc* %0, %struct.time_regs* %1) #0 {
  %3 = alloca %struct.ds13rtc_softc*, align 8
  %4 = alloca %struct.time_regs*, align 8
  store %struct.ds13rtc_softc* %0, %struct.ds13rtc_softc** %3, align 8
  store %struct.time_regs* %1, %struct.time_regs** %4, align 8
  %5 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.time_regs*, %struct.time_regs** %4, align 8
  %12 = load i32, i32* @IIC_WAIT, align 4
  %13 = call i32 @iicdev_writeto(i32 %7, i32 %10, %struct.time_regs* %11, i32 4, i32 %12)
  ret i32 %13
}

declare dso_local i32 @iicdev_writeto(i32, i32, %struct.time_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
