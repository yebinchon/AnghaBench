; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_free_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, i32, %struct.vmxnet3_rxqueue*, %struct.TYPE_2__* }
%struct.vmxnet3_rxqueue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_free_irqs(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.vmxnet3_rxqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %16, i32 0, i32 2
  %18 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %18, i64 %20
  store %struct.vmxnet3_rxqueue* %21, %struct.vmxnet3_rxqueue** %4, align 8
  %22 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %4, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %25, i32 0, i32 0
  %27 = call i32 @iflib_irq_free(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %35, i32 0, i32 0
  %37 = call i32 @iflib_irq_free(i32 %34, i32* %36)
  ret void
}

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
