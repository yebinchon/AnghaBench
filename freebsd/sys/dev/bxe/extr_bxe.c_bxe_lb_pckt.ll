; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_lb_pckt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_lb_pckt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@NIG_REG_DEBUG_PACKET_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_lb_pckt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_lb_pckt(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca [3 x i32], align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 1431655765, i32* %4, align 4
  %5 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 1431655765, i32* %5, align 4
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 32, i32* %6, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = load i32, i32* @NIG_REG_DEBUG_PACKET_LB, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %10 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %7, i32 %8, i32* %9, i32 3)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 150994944, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 1431655765, i32* %12, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 16, i32* %13, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = load i32, i32* @NIG_REG_DEBUG_PACKET_LB, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %17 = call i32 @REG_WR_DMAE(%struct.bxe_softc* %14, i32 %15, i32* %16, i32 3)
  ret void
}

declare dso_local i32 @REG_WR_DMAE(%struct.bxe_softc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
