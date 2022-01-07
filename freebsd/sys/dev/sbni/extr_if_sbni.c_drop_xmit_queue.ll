; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_drop_xmit_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_drop_xmit_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, %struct.TYPE_2__*, i64, i64, i64, %struct.mbuf* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @drop_xmit_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_xmit_queue(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %4 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %4, i32 0, i32 5
  %6 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %7 = icmp ne %struct.mbuf* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %9, i32 0, i32 5
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %12 = call i32 @m_freem(%struct.mbuf* %11)
  %13 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %13, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %19 = call i32 @if_inc_counter(%struct.TYPE_2__* %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %8, %1
  br label %21

21:                                               ; preds = %31, %20
  %22 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = call i32 @IF_DEQUEUE(i32* %25, %struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %39

31:                                               ; preds = %21
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %35 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %38 = call i32 @if_inc_counter(%struct.TYPE_2__* %36, i32 %37, i32 1)
  br label %21

39:                                               ; preds = %30
  %40 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %41 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %43 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %45 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @FL_WAIT_ACK, align 4
  %47 = load i32, i32* @FL_NEED_RESEND, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %51 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %57 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
