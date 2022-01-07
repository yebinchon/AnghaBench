; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_ic.c_vmbus_ic_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_ic_softc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_ic_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_ic_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vmbus_ic_softc* @device_get_softc(i32 %4)
  store %struct.vmbus_ic_softc* %5, %struct.vmbus_ic_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @vmbus_get_channel(i32 %6)
  %8 = call i32 @vmbus_chan_close(i32 %7)
  %9 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @free(i32 %11, i32 %12)
  ret i32 0
}

declare dso_local %struct.vmbus_ic_softc* @device_get_softc(i32) #1

declare dso_local i32 @vmbus_chan_close(i32) #1

declare dso_local i32 @vmbus_get_channel(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
