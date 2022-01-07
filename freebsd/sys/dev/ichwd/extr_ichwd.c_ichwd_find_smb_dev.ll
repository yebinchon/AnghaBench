; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_find_smb_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_find_smb_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_device = type { i64, i32* }

@VENDORID_INTEL = common dso_local global i64 0, align 8
@ichwd_smb_devices = common dso_local global %struct.ichwd_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ichwd_device**)* @ichwd_find_smb_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ichwd_find_smb_dev(i32* %0, %struct.ichwd_device** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ichwd_device**, align 8
  %6 = alloca %struct.ichwd_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ichwd_device** %1, %struct.ichwd_device*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @device_get_parent(i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @pci_get_domain(i32* %12)
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @pci_get_bus(i32* %14)
  %16 = call i32* @pci_find_dbsf(i32 %13, i32 %15, i32 31, i32 4)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %54

20:                                               ; preds = %2
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @pci_get_vendor(i32* %21)
  %23 = load i64, i64* @VENDORID_INTEL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %54

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @pci_get_device(i32* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ichwd_device*, %struct.ichwd_device** @ichwd_smb_devices, align 8
  store %struct.ichwd_device* %29, %struct.ichwd_device** %6, align 8
  br label %30

30:                                               ; preds = %50, %26
  %31 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %32 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %38 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.ichwd_device**, %struct.ichwd_device*** %5, align 8
  %43 = icmp ne %struct.ichwd_device** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %46 = load %struct.ichwd_device**, %struct.ichwd_device*** %5, align 8
  store %struct.ichwd_device* %45, %struct.ichwd_device** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %3, align 8
  br label %54

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %52 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %51, i32 1
  store %struct.ichwd_device* %52, %struct.ichwd_device** %6, align 8
  br label %30

53:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %54

54:                                               ; preds = %53, %47, %25, %19
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_domain(i32*) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i64 @pci_get_vendor(i32*) #1

declare dso_local i64 @pci_get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
