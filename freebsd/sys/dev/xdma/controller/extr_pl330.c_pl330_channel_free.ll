; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_channel_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i64 }
%struct.pl330_channel = type { i64 }
%struct.pl330_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*)* @pl330_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_channel_free(i32 %0, %struct.xdma_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdma_channel*, align 8
  %5 = alloca %struct.pl330_channel*, align 8
  %6 = alloca %struct.pl330_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.pl330_softc* @device_get_softc(i32 %7)
  store %struct.pl330_softc* %8, %struct.pl330_softc** %6, align 8
  %9 = load %struct.xdma_channel*, %struct.xdma_channel** %4, align 8
  %10 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.pl330_channel*
  store %struct.pl330_channel* %12, %struct.pl330_channel** %5, align 8
  %13 = load %struct.pl330_channel*, %struct.pl330_channel** %5, align 8
  %14 = getelementptr inbounds %struct.pl330_channel, %struct.pl330_channel* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret i32 0
}

declare dso_local %struct.pl330_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
