; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_get_other_octeon_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_get_other_octeon_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.octeon_device* (%struct.octeon_device*)* @lio_get_other_octeon_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.octeon_device* @lio_get_other_octeon_device(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call %struct.octeon_device* @lio_get_device(i64 %12)
  store %struct.octeon_device* %13, %struct.octeon_device** %4, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = icmp ne %struct.octeon_device* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pci_get_bus(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pci_get_bus(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %21
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pci_get_slot(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pci_get_slot(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  store %struct.octeon_device* %46, %struct.octeon_device** %2, align 8
  br label %50

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %21
  br label %49

49:                                               ; preds = %48, %16, %1
  store %struct.octeon_device* null, %struct.octeon_device** %2, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  ret %struct.octeon_device* %51
}

declare dso_local %struct.octeon_device* @lio_get_device(i64) #1

declare dso_local i32 @pci_get_bus(i64) #1

declare dso_local i32 @pci_get_slot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
