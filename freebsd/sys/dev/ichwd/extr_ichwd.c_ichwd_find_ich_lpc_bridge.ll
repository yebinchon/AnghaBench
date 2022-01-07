; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_find_ich_lpc_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_find_ich_lpc_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_device = type { i64, i32* }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@VENDORID_INTEL = common dso_local global i64 0, align 8
@ichwd_devices = common dso_local global %struct.ichwd_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ichwd_device**)* @ichwd_find_ich_lpc_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ichwd_find_ich_lpc_bridge(i32* %0, %struct.ichwd_device** %1) #0 {
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
  %13 = call i32* @device_get_parent(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @device_get_devclass(i32* %17)
  %19 = call i64 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32* null, i32** %3, align 8
  br label %56

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @pci_get_vendor(i32* %23)
  %25 = load i64, i64* @VENDORID_INTEL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %56

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @pci_get_device(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.ichwd_device*, %struct.ichwd_device** @ichwd_devices, align 8
  store %struct.ichwd_device* %31, %struct.ichwd_device** %6, align 8
  br label %32

32:                                               ; preds = %52, %28
  %33 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %34 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %40 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.ichwd_device**, %struct.ichwd_device*** %5, align 8
  %45 = icmp ne %struct.ichwd_device** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %48 = load %struct.ichwd_device**, %struct.ichwd_device*** %5, align 8
  store %struct.ichwd_device* %47, %struct.ichwd_device** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %7, align 8
  store i32* %50, i32** %3, align 8
  br label %56

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.ichwd_device*, %struct.ichwd_device** %6, align 8
  %54 = getelementptr inbounds %struct.ichwd_device, %struct.ichwd_device* %53, i32 1
  store %struct.ichwd_device* %54, %struct.ichwd_device** %6, align 8
  br label %32

55:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %56

56:                                               ; preds = %55, %49, %27, %21
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local i64 @devclass_find(i8*) #1

declare dso_local i64 @pci_get_vendor(i32*) #1

declare dso_local i64 @pci_get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
