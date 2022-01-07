; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_lladdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32* }

@VMXNET3_BAR1_MACL = common dso_local global i32 0, align 4
@VMXNET3_BAR1_MACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_set_lladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_set_lladdr(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %5 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %35 = load i32, i32* @VMXNET3_BAR1_MACL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %52 = load i32, i32* @VMXNET3_BAR1_MACH, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
