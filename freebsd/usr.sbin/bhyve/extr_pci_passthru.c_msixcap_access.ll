; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msixcap_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msixcap_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passthru_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSIX_CAPLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passthru_softc*, i32)* @msixcap_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msixcap_access(%struct.passthru_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passthru_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.passthru_softc* %0, %struct.passthru_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.passthru_softc*, %struct.passthru_softc** %4, align 8
  %7 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.passthru_softc*, %struct.passthru_softc** %4, align 8
  %15 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.passthru_softc*, %struct.passthru_softc** %4, align 8
  %22 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSIX_CAPLEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %20, %26
  br label %28

28:                                               ; preds = %19, %12
  %29 = phi i1 [ false, %12 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
