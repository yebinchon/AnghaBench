; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_txd_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_txd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_txqueue* }
%struct.vmxnet3_txqueue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @vmxnet3_isc_txd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_isc_txd_flush(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmxnet3_softc*, align 8
  %8 = alloca %struct.vmxnet3_txqueue*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.vmxnet3_softc*
  store %struct.vmxnet3_softc* %10, %struct.vmxnet3_softc** %7, align 8
  %11 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %7, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %11, i32 0, i32 0
  %13 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %13, i64 %14
  store %struct.vmxnet3_txqueue* %15, %struct.vmxnet3_txqueue** %8, align 8
  %16 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %8, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %8, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %7, align 8
  %27 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %8, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @VMXNET3_BAR0_TXH(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc* %26, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc*, i32, i32) #1

declare dso_local i32 @VMXNET3_BAR0_TXH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
