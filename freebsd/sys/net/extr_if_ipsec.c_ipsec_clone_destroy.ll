; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ipsec_softc* }
%struct.ipsec_softc = type { i64 }

@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@idhash = common dso_local global i32 0, align 4
@M_IPSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ipsec_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ipsec_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = call i32 @sx_xlock(i32* @ipsec_ioctl_sx)
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.ipsec_softc*, %struct.ipsec_softc** %6, align 8
  store %struct.ipsec_softc* %7, %struct.ipsec_softc** %3, align 8
  %8 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %9 = call i32 @ipsec_delete_tunnel(%struct.ipsec_softc* %8)
  %10 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %16 = load i32, i32* @idhash, align 4
  %17 = call i32 @CK_LIST_REMOVE(%struct.ipsec_softc* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = call i32 @bpfdetach(%struct.ifnet* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = call i32 @if_detach(%struct.ifnet* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  store %struct.ipsec_softc* null, %struct.ipsec_softc** %24, align 8
  %25 = call i32 @sx_xunlock(i32* @ipsec_ioctl_sx)
  %26 = call i32 (...) @IPSEC_WAIT()
  %27 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %28 = call i32 @if_free(%struct.ifnet* %27)
  %29 = load %struct.ipsec_softc*, %struct.ipsec_softc** %3, align 8
  %30 = load i32, i32* @M_IPSEC, align 4
  %31 = call i32 @free(%struct.ipsec_softc* %29, i32 %30)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ipsec_delete_tunnel(%struct.ipsec_softc*) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.ipsec_softc*, i32) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @IPSEC_WAIT(...) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free(%struct.ipsec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
