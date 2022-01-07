; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-common.c_cvm_oct_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_common_init(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %11 = call i64 @cvm_assign_mac_address(i32* null, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @ETHERMTU, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = call i32 @cvm_oct_mdio_setup_device(%struct.ifnet* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %23 = call i32 @cvm_oct_common_set_mac_address(%struct.ifnet* %21, i32* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @cvm_oct_common_change_mtu(%struct.ifnet* %24, i32 %27)
  %29 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %32 [
  ]

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_attach(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @cvm_assign_mac_address(i32*, i32*) #1

declare dso_local i32 @cvm_oct_mdio_setup_device(%struct.ifnet*) #1

declare dso_local i32 @cvm_oct_common_set_mac_address(%struct.ifnet*, i32*) #1

declare dso_local i32 @cvm_oct_common_change_mtu(%struct.ifnet*, i32) #1

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
