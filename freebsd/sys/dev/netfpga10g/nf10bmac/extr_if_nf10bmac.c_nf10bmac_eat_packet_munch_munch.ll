; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_eat_packet_munch_munch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_eat_packet_munch_munch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { i32 }

@NF10BMAC_RX_META = common dso_local global i32 0, align 4
@NF10BMAC_DATA_STRB = common dso_local global i32 0, align 4
@NF10BMAC_RX_DATA = common dso_local global i32 0, align 4
@NF10BMAC_DATA_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf10bmac_softc*)* @nf10bmac_eat_packet_munch_munch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf10bmac_eat_packet_munch_munch(%struct.nf10bmac_softc* %0) #0 {
  %2 = alloca %struct.nf10bmac_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nf10bmac_softc* %0, %struct.nf10bmac_softc** %2, align 8
  br label %5

5:                                                ; preds = %28, %1
  %6 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %7 = load i32, i32* @NF10BMAC_RX_META, align 4
  %8 = call i32 @NF10BMAC_READ_BE(%struct.nf10bmac_softc* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NF10BMAC_DATA_STRB, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %15 = load i32, i32* @NF10BMAC_RX_DATA, align 4
  %16 = call i32 @NF10BMAC_READ_BE(%struct.nf10bmac_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %5
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NF10BMAC_DATA_STRB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NF10BMAC_DATA_LAST, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %5, label %30

30:                                               ; preds = %28
  ret void
}

declare dso_local i32 @NF10BMAC_READ_BE(%struct.nf10bmac_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
