; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_rxinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_rxinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vmxnet3_rxqueue = type { %struct.vmxnet3_comp_ring, %struct.vmxnet3_rxring* }
%struct.vmxnet3_comp_ring = type { i8*, i64 }
%struct.vmxnet3_rxring = type { i32, i32, i8* }

@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@VMXNET3_RXRINGS_PERQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, %struct.vmxnet3_rxqueue*)* @vmxnet3_rxinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rxinit(%struct.vmxnet3_softc* %0, %struct.vmxnet3_rxqueue* %1) #0 {
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca %struct.vmxnet3_rxqueue*, align 8
  %5 = alloca %struct.vmxnet3_rxring*, align 8
  %6 = alloca %struct.vmxnet3_comp_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  store %struct.vmxnet3_rxqueue* %1, %struct.vmxnet3_rxqueue** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %4, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %18, i32 0, i32 1
  %20 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %20, i64 %22
  store %struct.vmxnet3_rxring* %23, %struct.vmxnet3_rxring** %5, align 8
  %24 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %25 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %5, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @VMXNET3_RXRINGS_PERQ, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %4, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %36, i32 0, i32 1
  %38 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %38, i64 %40
  store %struct.vmxnet3_rxring* %41, %struct.vmxnet3_rxring** %5, align 8
  %42 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %5, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %42, i32 0, i32 2
  store i8* null, i8** %43, align 8
  %44 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %5, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %5, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @bzero(i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %4, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %58, i32 0, i32 0
  store %struct.vmxnet3_comp_ring* %59, %struct.vmxnet3_comp_ring** %6, align 8
  %60 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %6, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %63 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %6, align 8
  %64 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
