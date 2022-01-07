; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_isci_remote_device_get_bitrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_isci_remote_device_get_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REMOTE_DEVICE = type { %struct.ISCI_DOMAIN* }
%struct.ISCI_DOMAIN = type { i32, %struct.ISCI_CONTROLLER* }
%struct.ISCI_CONTROLLER = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_remote_device_get_bitrate(%struct.ISCI_REMOTE_DEVICE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %4 = alloca %struct.ISCI_DOMAIN*, align 8
  %5 = alloca %struct.ISCI_CONTROLLER*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  store %struct.ISCI_REMOTE_DEVICE* %0, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %11 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %12 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %11, i32 0, i32 0
  %13 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %12, align 8
  store %struct.ISCI_DOMAIN* %13, %struct.ISCI_DOMAIN** %4, align 8
  %14 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %4, align 8
  %15 = getelementptr inbounds %struct.ISCI_DOMAIN, %struct.ISCI_DOMAIN* %14, i32 0, i32 1
  %16 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %15, align 8
  store %struct.ISCI_CONTROLLER* %16, %struct.ISCI_CONTROLLER** %5, align 8
  %17 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %4, align 8
  %18 = getelementptr inbounds %struct.ISCI_DOMAIN, %struct.ISCI_DOMAIN* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @scif_domain_get_scic_port_handle(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @scic_port_get_properties(i32 %21, %struct.TYPE_5__* %7)
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %35, %1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %23

41:                                               ; preds = %33
  %42 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %43 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scif_controller_get_scic_handle(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @scic_controller_get_phy_handle(i32 %45, i64 %46, i32* %9)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @scic_phy_get_properties(i32 %48, %struct.TYPE_6__* %10)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %55 [
    i32 130, label %52
    i32 129, label %53
    i32 128, label %54
  ]

52:                                               ; preds = %41
  store i32 150000, i32* %2, align 4
  br label %56

53:                                               ; preds = %41
  store i32 300000, i32* %2, align 4
  br label %56

54:                                               ; preds = %41
  store i32 600000, i32* %2, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %53, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @scif_domain_get_scic_port_handle(i32) #1

declare dso_local i32 @scic_port_get_properties(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @scic_controller_get_phy_handle(i32, i64, i32*) #1

declare dso_local i32 @scif_controller_get_scic_handle(i32) #1

declare dso_local i32 @scic_phy_get_properties(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
