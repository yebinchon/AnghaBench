; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_enable_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VMXNET3_CMD_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"device enable command failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_softc*)* @vmxnet3_enable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_enable_device(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %10 = load i32, i32* @VMXNET3_CMD_ENABLE, align 4
  %11 = call i64 @vmxnet3_read_cmd(%struct.vmxnet3_softc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @VMXNET3_BAR0_RXH1(i32 %27)
  %29 = call i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc* %26, i32 %28, i32 0)
  %30 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VMXNET3_BAR0_RXH2(i32 %31)
  %33 = call i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc* %30, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @vmxnet3_read_cmd(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vmxnet3_write_bar0(%struct.vmxnet3_softc*, i32, i32) #1

declare dso_local i32 @VMXNET3_BAR0_RXH1(i32) #1

declare dso_local i32 @VMXNET3_BAR0_RXH2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
