; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_softc = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, %struct.mbuf*)* }
%struct.mbuf = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }

@GXEMUL_ETHER_DEV_STATUS = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_STATUS_RX_MORE = common dso_local global i64 0, align 8
@GXEMUL_ETHER_DEV_COMMAND = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_COMMAND_RX = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_STATUS_RX_OK = common dso_local global i64 0, align 8
@GXEMUL_ETHER_DEV_LENGTH = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i64 0, align 8
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no memory for receive mbuf.\0A\00", align 1
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_BUFFER = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gx_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_rx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gx_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.gx_softc*
  store %struct.gx_softc* %8, %struct.gx_softc** %3, align 8
  %9 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %10 = call i32 @GXEMUL_ETHER_LOCK(%struct.gx_softc* %9)
  br label %11

11:                                               ; preds = %59, %34, %17, %1
  %12 = load i32, i32* @GXEMUL_ETHER_DEV_STATUS, align 4
  %13 = call i64 @GXEMUL_ETHER_DEV_READ(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @GXEMUL_ETHER_DEV_STATUS_RX_MORE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @GXEMUL_ETHER_DEV_COMMAND, align 4
  %19 = load i32, i32* @GXEMUL_ETHER_DEV_COMMAND_RX, align 4
  %20 = call i32 @GXEMUL_ETHER_DEV_WRITE(i32 %18, i32 %19)
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @GXEMUL_ETHER_DEV_STATUS_RX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %106

26:                                               ; preds = %21
  %27 = load i32, i32* @GXEMUL_ETHER_DEV_LENGTH, align 4
  %28 = call i64 @GXEMUL_ETHER_DEV_READ(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MCLBYTES, align 8
  %31 = load i64, i64* @ETHER_ALIGN, align 8
  %32 = sub nsw i64 %30, %31
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %36 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %39 = call i32 @if_inc_counter(%struct.TYPE_5__* %37, i32 %38, i32 1)
  br label %11

40:                                               ; preds = %26
  %41 = load i32, i32* @M_NOWAIT, align 4
  %42 = load i32, i32* @MT_DATA, align 4
  %43 = load i32, i32* @M_PKTHDR, align 4
  %44 = call %struct.mbuf* @m_getcl(i32 %41, i32 %42, i32 %43)
  store %struct.mbuf* %44, %struct.mbuf** %6, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %49 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %53 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %56 = call i32 @if_inc_counter(%struct.TYPE_5__* %54, i32 %55, i32 1)
  %57 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %58 = call i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc* %57)
  br label %109

59:                                               ; preds = %40
  %60 = load i64, i64* @ETHER_ALIGN, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GXEMUL_ETHER_DEV_BUFFER, align 4
  %71 = call i64 @GXEMUL_ETHER_DEV_FUNCTION(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @memcpy(i32 %69, i8* %72, i64 %73)
  %75 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %76 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  %87 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %88 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %91 = call i32 @if_inc_counter(%struct.TYPE_5__* %89, i32 %90, i32 1)
  %92 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %93 = call i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc* %92)
  %94 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %95 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_5__*, %struct.mbuf*)*, i32 (%struct.TYPE_5__*, %struct.mbuf*)** %97, align 8
  %99 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %100 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = call i32 %98(%struct.TYPE_5__* %101, %struct.mbuf* %102)
  %104 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %105 = call i32 @GXEMUL_ETHER_LOCK(%struct.gx_softc* %104)
  br label %11

106:                                              ; preds = %25
  %107 = load %struct.gx_softc*, %struct.gx_softc** %3, align 8
  %108 = call i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc* %107)
  br label %109

109:                                              ; preds = %106, %47
  ret void
}

declare dso_local i32 @GXEMUL_ETHER_LOCK(%struct.gx_softc*) #1

declare dso_local i64 @GXEMUL_ETHER_DEV_READ(i32) #1

declare dso_local i32 @GXEMUL_ETHER_DEV_WRITE(i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @GXEMUL_ETHER_UNLOCK(%struct.gx_softc*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @GXEMUL_ETHER_DEV_FUNCTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
