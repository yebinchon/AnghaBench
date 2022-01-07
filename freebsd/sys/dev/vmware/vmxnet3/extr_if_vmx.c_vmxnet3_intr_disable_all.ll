; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_intr_disable_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_intr_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VMXNET3_ICTRL_DISABLE_ALL = common dso_local global i32 0, align 4
@VMXNET3_MAX_INTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vmxnet3_intr_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_intr_disable_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %5)
  store %struct.vmxnet3_softc* %6, %struct.vmxnet3_softc** %3, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @VMXNET3_ICTRL_DISABLE_ALL, align 4
  %13 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VMXNET3_MAX_INTRS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @vmxnet3_disable_intr(%struct.vmxnet3_softc* %25, i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %20

31:                                               ; preds = %20
  ret void
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @vmxnet3_disable_intr(%struct.vmxnet3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
