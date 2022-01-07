; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_update_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_update_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, i32, i32)* @vmxnet3_update_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_update_vlan_filter(%struct.vmxnet3_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmxnet3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 4095
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %46

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 5
  %18 = and i32 %17, 127
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 31
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  br label %46

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %14, %34, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
