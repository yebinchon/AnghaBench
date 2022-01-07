; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv_free_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32 }
%struct.fwohci_dbch = type { %struct.fwohcidb_tr*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fwohcidb_tr = type { %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, %struct.fwohci_dbch*, %struct.fwohcidb_tr*, i32, i32)* @fwohci_arcv_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_arcv_free_buf(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1, %struct.fwohcidb_tr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fwohci_softc*, align 8
  %7 = alloca %struct.fwohci_dbch*, align 8
  %8 = alloca %struct.fwohcidb_tr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fwohcidb*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %6, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %7, align 8
  store %struct.fwohcidb_tr* %2, %struct.fwohcidb_tr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %13 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %12, i32 0, i32 0
  %14 = load %struct.fwohcidb*, %struct.fwohcidb** %13, align 8
  %15 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %14, i64 0
  store %struct.fwohcidb* %15, %struct.fwohcidb** %11, align 8
  %16 = load %struct.fwohcidb*, %struct.fwohcidb** %11, align 8
  %17 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FWOHCI_DMA_CLEAR(i32 %20, i32 15)
  %22 = load %struct.fwohcidb*, %struct.fwohcidb** %11, align 8
  %23 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %7, align 8
  %28 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FWOHCI_DMA_WRITE(i32 %26, i32 %30)
  %32 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %7, align 8
  %33 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %32, i32 0, i32 0
  %34 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %33, align 8
  %35 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %34, i32 0, i32 0
  %36 = load %struct.fwohcidb*, %struct.fwohcidb** %35, align 8
  %37 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %36, i64 0
  %38 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FWOHCI_DMA_SET(i32 %41, i32 1)
  %43 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %7, align 8
  %44 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %47 = call i32 @fwdma_sync_multiseg_all(i32 %45, i32 %46)
  %48 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %49 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %7, align 8
  %50 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %49, i32 0, i32 0
  store %struct.fwohcidb_tr* %48, %struct.fwohcidb_tr** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %5
  %54 = load %struct.fwohci_softc*, %struct.fwohci_softc** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @OHCI_DMACTL(i32 %55)
  %57 = load i32, i32* @OHCI_CNTL_DMA_WAKE, align 4
  %58 = call i32 @OWRITE(%struct.fwohci_softc* %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %5
  ret void
}

declare dso_local i32 @FWOHCI_DMA_CLEAR(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_DMACTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
