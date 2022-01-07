; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: Rx interrupt: invalid qid=%d\0A\00", align 1
@RT_DEBUG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Rx interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*, i32)* @rt_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_rx_intr(%struct.rt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %15, i8* %22)
  %24 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %25 = load i32, i32* @RT_DEBUG_INTR, align 4
  %26 = call i32 @RT_DPRINTF(%struct.rt_softc* %24, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %36 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %35)
  %37 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %41 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %13
  %48 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %49 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @rt_intr_disable(%struct.rt_softc* %48, i32 %53)
  %55 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %59 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %58, i32 0, i32 4
  %60 = call i32 @taskqueue_enqueue(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %47, %13
  %62 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %68 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %72 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %71)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

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
