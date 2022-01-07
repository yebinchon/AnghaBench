; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_free_resources(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %4 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @rman_get_rid(i32* %16)
  %18 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_release_resource(i32 %12, i32 %13, i32 %17, i32* %20)
  %22 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_rid(i32* %34)
  %36 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %35, i32* %38)
  %40 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
