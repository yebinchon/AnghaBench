; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_init_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, %struct.TYPE_2__*, %struct.vmxnet3_rxqueue* }
%struct.TYPE_2__ = type { i32* }
%struct.vmxnet3_rxqueue = type { i32, %struct.vmxnet3_rxring*, %struct.vmxnet3_softc*, i32, %struct.vmxnet3_comp_ring }
%struct.vmxnet3_rxring = type { i32 }
%struct.vmxnet3_comp_ring = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s-rx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, i32, i32)* @vmxnet3_init_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_init_rxq(%struct.vmxnet3_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmxnet3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmxnet3_rxqueue*, align 8
  %8 = alloca %struct.vmxnet3_comp_ring*, align 8
  %9 = alloca %struct.vmxnet3_rxring*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %12, i32 0, i32 2
  %14 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %14, i64 %16
  store %struct.vmxnet3_rxqueue* %17, %struct.vmxnet3_rxqueue** %7, align 8
  %18 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %7, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %18, i32 0, i32 4
  store %struct.vmxnet3_comp_ring* %19, %struct.vmxnet3_comp_ring** %8, align 8
  %20 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %10, align 8
  %23 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %7, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @device_get_nameunit(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %33 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %7, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %33, i32 0, i32 2
  store %struct.vmxnet3_softc* %32, %struct.vmxnet3_softc** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %7, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %8, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %67, %3
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %7, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %51, i32 0, i32 1
  %53 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %53, i64 %55
  store %struct.vmxnet3_rxring* %56, %struct.vmxnet3_rxring** %9, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %9, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %45

70:                                               ; preds = %45
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
