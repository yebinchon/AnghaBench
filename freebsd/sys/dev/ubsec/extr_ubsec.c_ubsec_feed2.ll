; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_feed2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_feed2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32, i32, i32 }
%struct.ubsec_q2 = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BS_STAT = common dso_local global i32 0, align 4
@BS_STAT_MCR2_FULL = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BS_MCR2 = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubsec_softc*)* @ubsec_feed2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_feed2(%struct.ubsec_softc* %0) #0 {
  %2 = alloca %struct.ubsec_softc*, align 8
  %3 = alloca %struct.ubsec_q2*, align 8
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %2, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %5, i32 0, i32 2
  %7 = call i32 @SIMPLEQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  %11 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %12 = load i32, i32* @BS_STAT, align 4
  %13 = call i32 @READ_REG(%struct.ubsec_softc* %11, i32 %12)
  %14 = load i32, i32* @BS_STAT_MCR2_FULL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %52

18:                                               ; preds = %10
  %19 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %19, i32 0, i32 2
  %21 = call %struct.ubsec_q2* @SIMPLEQ_FIRST(i32* %20)
  store %struct.ubsec_q2* %21, %struct.ubsec_q2** %3, align 8
  %22 = load %struct.ubsec_q2*, %struct.ubsec_q2** %3, align 8
  %23 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %22, i32 0, i32 0
  %24 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %25 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ubsec_dma_sync(%struct.TYPE_2__* %23, i32 %26)
  %28 = load %struct.ubsec_q2*, %struct.ubsec_q2** %3, align 8
  %29 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %28, i32 0, i32 1
  %30 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %31 = call i32 @ubsec_dma_sync(%struct.TYPE_2__* %29, i32 %30)
  %32 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %33 = load i32, i32* @BS_MCR2, align 4
  %34 = load %struct.ubsec_q2*, %struct.ubsec_q2** %3, align 8
  %35 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WRITE_REG(%struct.ubsec_softc* %32, i32 %33, i32 %37)
  %39 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %39, i32 0, i32 2
  %41 = load i32, i32* @q_next, align 4
  %42 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %40, i32 %41)
  %43 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %47, i32 0, i32 0
  %49 = load %struct.ubsec_q2*, %struct.ubsec_q2** %3, align 8
  %50 = load i32, i32* @q_next, align 4
  %51 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %48, %struct.ubsec_q2* %49, i32 %50)
  br label %4

52:                                               ; preds = %17, %4
  ret i32 0
}

declare dso_local i32 @SIMPLEQ_EMPTY(i32*) #1

declare dso_local i32 @READ_REG(%struct.ubsec_softc*, i32) #1

declare dso_local %struct.ubsec_q2* @SIMPLEQ_FIRST(i32*) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.ubsec_softc*, i32, i32) #1

declare dso_local i32 @SIMPLEQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.ubsec_q2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
