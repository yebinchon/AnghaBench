; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_pdma.c_pdma_channel_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.pdma_channel = type { i32 }
%struct.pdma_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @pdma_channel_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdma_channel_control(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pdma_channel*, align 8
  %9 = alloca %struct.pdma_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pdma_softc* @device_get_softc(i32 %10)
  store %struct.pdma_softc* %11, %struct.pdma_softc** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.pdma_channel*
  store %struct.pdma_channel* %15, %struct.pdma_channel** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 128, label %21
    i32 129, label %25
  ]

17:                                               ; preds = %3
  %18 = load %struct.pdma_softc*, %struct.pdma_softc** %9, align 8
  %19 = load %struct.pdma_channel*, %struct.pdma_channel** %8, align 8
  %20 = call i32 @chan_start(%struct.pdma_softc* %18, %struct.pdma_channel* %19)
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.pdma_softc*, %struct.pdma_softc** %9, align 8
  %23 = load %struct.pdma_channel*, %struct.pdma_channel** %8, align 8
  %24 = call i32 @chan_stop(%struct.pdma_softc* %22, %struct.pdma_channel* %23)
  br label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %3, %21, %17
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.pdma_softc* @device_get_softc(i32) #1

declare dso_local i32 @chan_start(%struct.pdma_softc*, %struct.pdma_channel*) #1

declare dso_local i32 @chan_stop(%struct.pdma_softc*, %struct.pdma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
