; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_running.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.secasindex = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipsec_softc*)* @ipsec_set_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_set_running(%struct.ipsec_softc* %0) #0 {
  %2 = alloca %struct.ipsec_softc*, align 8
  %3 = alloca %struct.secasindex*, align 8
  %4 = alloca i32, align 4
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %2, align 8
  %5 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %6 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %7 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc* %5, i32 %6, i32 %9)
  store %struct.secasindex* %10, %struct.secasindex** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %14 [
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %18
  store i32 %24, i32* %22, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %17
  ret void
}

declare dso_local %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
