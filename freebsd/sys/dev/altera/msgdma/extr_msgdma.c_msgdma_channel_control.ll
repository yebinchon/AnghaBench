; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_channel_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_channel_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.msgdma_channel = type { i32 }
%struct.msgdma_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @msgdma_channel_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_channel_control(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msgdma_channel*, align 8
  %9 = alloca %struct.msgdma_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.msgdma_softc* @device_get_softc(i32 %10)
  store %struct.msgdma_softc* %11, %struct.msgdma_softc** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.msgdma_channel*
  store %struct.msgdma_channel* %15, %struct.msgdma_channel** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %18 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3, %3
  store i32 -1, i32* %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local %struct.msgdma_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
