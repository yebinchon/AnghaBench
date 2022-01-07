; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_queues_shared_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_queues_shared_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cannot alloc queue shared memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_softc*)* @vmxnet3_queues_shared_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_queues_shared_alloc(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %14, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 1
  %28 = call i32 @iflib_dma_alloc_align(i32 %24, i32 %25, i32 128, i32* %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @iflib_dma_alloc_align(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
