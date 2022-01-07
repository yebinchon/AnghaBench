; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicoc_softc = type { i32 }

@OC_I2C_CMD_REG = common dso_local global i32 0, align 4
@OC_COMMAND_STOP = common dso_local global i32 0, align 4
@OC_STATUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicoc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iicoc_softc*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.iicoc_softc* @device_get_softc(i32 %5)
  store %struct.iicoc_softc* %6, %struct.iicoc_softc** %4, align 8
  %7 = load %struct.iicoc_softc*, %struct.iicoc_softc** %4, align 8
  %8 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @OC_I2C_CMD_REG, align 4
  %12 = load i32, i32* @OC_COMMAND_STOP, align 4
  %13 = call i32 @iicoc_dev_write(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @OC_STATUS_BUSY, align 4
  %16 = call i32 @iicoc_wait_on_status(i32 %14, i32 %15)
  %17 = load %struct.iicoc_softc*, %struct.iicoc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.iicoc_softc, %struct.iicoc_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.iicoc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @iicoc_dev_write(i32, i32, i32) #1

declare dso_local i32 @iicoc_wait_on_status(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
