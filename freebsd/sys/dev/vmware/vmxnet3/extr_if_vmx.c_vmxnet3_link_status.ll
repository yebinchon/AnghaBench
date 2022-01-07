; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i64, i32 }

@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_link_status(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %10 = call i32 @vmxnet3_link_is_up(%struct.vmxnet3_softc* %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @IF_Gbps(i32 10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %20, i32 0, i32 0
  store i64 1, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LINK_STATE_UP, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @iflib_link_state_change(i32 %22, i32 %23, i32 %24)
  br label %42

26:                                               ; preds = %14, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @LINK_STATE_DOWN, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @iflib_link_state_change(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29, %26
  br label %42

42:                                               ; preds = %41, %19
  ret void
}

declare dso_local i32 @vmxnet3_link_is_up(%struct.vmxnet3_softc*) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
