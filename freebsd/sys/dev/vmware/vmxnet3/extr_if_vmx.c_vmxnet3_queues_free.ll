; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_queues_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_queues_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vmxnet3_queues_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_queues_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %4)
  store %struct.vmxnet3_softc* %5, %struct.vmxnet3_softc** %3, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %12, i32 0, i32 2
  %14 = call i32 @iflib_dma_free(%struct.TYPE_2__* %13)
  %15 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = call i32 @free(i32* %26, i32 %27)
  %29 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = call i32 @free(i32* %39, i32 %40)
  %42 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_dma_free(%struct.TYPE_2__*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
