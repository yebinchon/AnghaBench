; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_port_qstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_port_qstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hwrm_port_qstats_input = type { i8*, i8*, i32, i32 }

@HWRM_PORT_QSTATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_port_qstats(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_port_qstats_input, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %5 = bitcast %struct.hwrm_port_qstats_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %7 = load i32, i32* @HWRM_PORT_QSTATS, align 4
  %8 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %6, %struct.hwrm_port_qstats_input* %3, i32 %7)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @htole16(i32 %12)
  %14 = getelementptr inbounds %struct.hwrm_port_qstats_input, %struct.hwrm_port_qstats_input* %3, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htole64(i32 %18)
  %20 = getelementptr inbounds %struct.hwrm_port_qstats_input, %struct.hwrm_port_qstats_input* %3, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htole64(i32 %24)
  %26 = getelementptr inbounds %struct.hwrm_port_qstats_input, %struct.hwrm_port_qstats_input* %3, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %28 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %27)
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %30 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %29, %struct.hwrm_port_qstats_input* %3, i32 24)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %32 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_port_qstats_input*, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i8* @htole64(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_port_qstats_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
