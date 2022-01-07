; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_txinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_txinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32 }
%struct.vmxnet3_txqueue = type { i32, %struct.vmxnet3_comp_ring, %struct.vmxnet3_txring }
%struct.vmxnet3_comp_ring = type { i8*, i64 }
%struct.vmxnet3_txring = type { i8*, i64 }

@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, %struct.vmxnet3_txqueue*)* @vmxnet3_txinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_txinit(%struct.vmxnet3_softc* %0, %struct.vmxnet3_txqueue* %1) #0 {
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca %struct.vmxnet3_txqueue*, align 8
  %5 = alloca %struct.vmxnet3_txring*, align 8
  %6 = alloca %struct.vmxnet3_comp_ring*, align 8
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  store %struct.vmxnet3_txqueue* %1, %struct.vmxnet3_txqueue** %4, align 8
  %7 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %9, i32 0, i32 2
  store %struct.vmxnet3_txring* %10, %struct.vmxnet3_txring** %5, align 8
  %11 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %5, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %14 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %5, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %16, i32 0, i32 1
  store %struct.vmxnet3_comp_ring* %17, %struct.vmxnet3_comp_ring** %6, align 8
  %18 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %6, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %21 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %6, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
