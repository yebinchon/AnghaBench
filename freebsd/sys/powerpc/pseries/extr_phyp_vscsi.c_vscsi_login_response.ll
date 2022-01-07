; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_login_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_vscsi.c_vscsi_login_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsi_xfer = type { i64, %struct.vscsi_softc* }
%struct.vscsi_softc = type { i32, i32, i32, i64 }
%struct.vscsi_crq = type { i32 }
%struct.srp_login_rsp = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Both direct and indirect buffers supported\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Queue depth %d commands\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsi_xfer*, %struct.vscsi_crq*)* @vscsi_login_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vscsi_login_response(%struct.vscsi_xfer* %0, %struct.vscsi_crq* %1) #0 {
  %3 = alloca %struct.vscsi_xfer*, align 8
  %4 = alloca %struct.vscsi_crq*, align 8
  %5 = alloca %struct.vscsi_softc*, align 8
  %6 = alloca %struct.srp_login_rsp*, align 8
  store %struct.vscsi_xfer* %0, %struct.vscsi_xfer** %3, align 8
  store %struct.vscsi_crq* %1, %struct.vscsi_crq** %4, align 8
  %7 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %7, i32 0, i32 1
  %9 = load %struct.vscsi_softc*, %struct.vscsi_softc** %8, align 8
  store %struct.vscsi_softc* %9, %struct.vscsi_softc** %5, align 8
  %10 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %11 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load %struct.vscsi_xfer*, %struct.vscsi_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.vscsi_xfer, %struct.vscsi_xfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = bitcast i32* %17 to %struct.srp_login_rsp*
  store %struct.srp_login_rsp* %18, %struct.srp_login_rsp** %6, align 8
  %19 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %20 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be16toh(i32 %21)
  %23 = and i32 %22, 3
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %26 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32toh(i32 %27)
  %29 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %32 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %35 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.vscsi_softc*, %struct.vscsi_softc** %5, align 8
  %39 = getelementptr inbounds %struct.vscsi_softc, %struct.vscsi_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
