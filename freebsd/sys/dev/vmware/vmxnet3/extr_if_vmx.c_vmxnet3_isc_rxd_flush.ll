; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_rxd_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_rxd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_rxqueue* }
%struct.vmxnet3_rxqueue = type { %struct.vmxnet3_rxring* }
%struct.vmxnet3_rxring = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64)* @vmxnet3_isc_rxd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_isc_rxd_flush(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmxnet3_softc*, align 8
  %10 = alloca %struct.vmxnet3_rxqueue*, align 8
  %11 = alloca %struct.vmxnet3_rxring*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.vmxnet3_softc*
  store %struct.vmxnet3_softc* %14, %struct.vmxnet3_softc** %9, align 8
  %15 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %9, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %15, i32 0, i32 0
  %17 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %17, i64 %18
  store %struct.vmxnet3_rxqueue* %19, %struct.vmxnet3_rxqueue** %10, align 8
  %20 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %10, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %20, i32 0, i32 0
  %22 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %22, i64 %23
  store %struct.vmxnet3_rxring* %24, %struct.vmxnet3_rxring** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @VMXNET3_BAR0_RXH1(i64 %28)
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @VMXNET3_BAR0_RXH2(i64 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %11, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc* %42, i32 %43, i64 %44)
  ret void
}

declare dso_local i32 @VMXNET3_BAR0_RXH1(i64) #1

declare dso_local i32 @VMXNET3_BAR0_RXH2(i64) #1

declare dso_local i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
