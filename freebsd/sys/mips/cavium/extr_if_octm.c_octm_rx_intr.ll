; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octm_softc = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"stray interrupt.\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no memory for receive mbuf.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @octm_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octm_rx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.octm_softc*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.octm_softc*
  store %struct.octm_softc* %8, %struct.octm_softc** %3, align 8
  %9 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %10 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CVMX_MIXX_ISR(i32 %11)
  %13 = call i32 @cvmx_read_csr(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %21 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %101

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %82, %48, %24
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @MT_DATA, align 4
  %28 = load i32, i32* @M_PKTHDR, align 4
  %29 = call %struct.mbuf* @m_getcl(i32 %26, i32 %27, i32 %28)
  store %struct.mbuf* %29, %struct.mbuf** %6, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %34 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %101

37:                                               ; preds = %25
  %38 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %39 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MCLBYTES, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cvmx_mgmt_port_receive(i32 %40, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %37
  %49 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %50 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 8
  %61 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %62 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %65 = call i32 @if_inc_counter(%struct.TYPE_9__* %63, i32 %64, i32 1)
  %66 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %67 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_9__*, %struct.mbuf*)*, i32 (%struct.TYPE_9__*, %struct.mbuf*)** %69, align 8
  %71 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %72 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = call i32 %70(%struct.TYPE_9__* %73, %struct.mbuf* %74)
  br label %25

76:                                               ; preds = %37
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = call i32 @m_freem(%struct.mbuf* %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %88

82:                                               ; preds = %76
  %83 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %84 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %87 = call i32 @if_inc_counter(%struct.TYPE_9__* %85, i32 %86, i32 1)
  br label %25

88:                                               ; preds = %81
  %89 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %90 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @CVMX_MIXX_ISR(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cvmx_write_csr(i32 %92, i32 %94)
  %96 = load %struct.octm_softc*, %struct.octm_softc** %3, align 8
  %97 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CVMX_MIXX_ISR(i32 %98)
  %100 = call i32 @cvmx_read_csr(i32 %99)
  br label %101

101:                                              ; preds = %88, %32, %19
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIXX_ISR(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @cvmx_mgmt_port_receive(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
