; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_interrupt_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_interrupt_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, %struct.vmxnet3_txqueue*, %struct.vmxnet3_rxqueue*, %struct.TYPE_2__* }
%struct.vmxnet3_txqueue = type { i32, %struct.vmxnet3_txq_shared* }
%struct.vmxnet3_txq_shared = type { i32 }
%struct.vmxnet3_rxqueue = type { i32, %struct.vmxnet3_rxq_shared* }
%struct.vmxnet3_rxq_shared = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_set_interrupt_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_set_interrupt_idx(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.vmxnet3_txqueue*, align 8
  %5 = alloca %struct.vmxnet3_txq_shared*, align 8
  %6 = alloca %struct.vmxnet3_rxqueue*, align 8
  %7 = alloca %struct.vmxnet3_rxq_shared*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %3, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %43, %1
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 2
  %28 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %28, i64 %30
  store %struct.vmxnet3_rxqueue* %31, %struct.vmxnet3_rxqueue** %6, align 8
  %32 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %6, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %32, i32 0, i32 1
  %34 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %33, align 8
  store %struct.vmxnet3_rxq_shared* %34, %struct.vmxnet3_rxq_shared** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %6, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %6, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %7, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %76, %48
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %59, i32 0, i32 1
  %61 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %61, i64 %63
  store %struct.vmxnet3_txqueue* %64, %struct.vmxnet3_txqueue** %4, align 8
  %65 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %65, i32 0, i32 1
  %67 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %66, align 8
  store %struct.vmxnet3_txq_shared* %67, %struct.vmxnet3_txq_shared** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %70 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %4, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %5, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %52

81:                                               ; preds = %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
