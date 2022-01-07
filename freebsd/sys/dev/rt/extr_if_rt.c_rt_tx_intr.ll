; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i32, i32, i32, i32*, i32 }

@RT_SOFTC_TX_RING_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Tx interrupt: invalid qid=%d\0A\00", align 1
@RT_DEBUG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Tx interrupt: qid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*, i32)* @rt_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_tx_intr(%struct.rt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_get_nameunit(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %13, i8* %20)
  %22 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %23 = load i32, i32* @RT_DEBUG_INTR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @RT_DPRINTF(%struct.rt_softc* %22, i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %35 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %34)
  %36 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %11
  %47 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %48 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %49 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %50, %51
  %53 = call i32 @rt_intr_disable(%struct.rt_softc* %47, i32 %52)
  %54 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %57, i32 0, i32 3
  %59 = call i32 @taskqueue_enqueue(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %46, %11
  %61 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %67 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %71 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %70)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*, i32) #1

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @rt_intr_disable(%struct.rt_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
