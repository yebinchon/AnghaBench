; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_device_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_allocate_device_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { %struct.lio_dispatch* }
%struct.lio_dispatch = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Error: Unknown PCI Device: 0x%x\0A\00", align 1
@LIO_DISPATCH_LIST_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.octeon_device* (i32)* @lio_allocate_device_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.octeon_device* @lio_allocate_device_mem(i32 %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pci_get_device(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %13 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  store i32 4, i32* %5, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  store %struct.octeon_device* null, %struct.octeon_device** %2, align 8
  br label %61

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 7
  %24 = sub nsw i32 8, %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* @LIO_DISPATCH_LIST_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i32* @malloc(i32 %35, i32 %36, i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store %struct.octeon_device* null, %struct.octeon_device** %2, align 8
  br label %61

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @device_get_softc(i32 %45)
  %47 = inttoptr i64 %46 to %struct.octeon_device*
  store %struct.octeon_device* %47, %struct.octeon_device** %4, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to %struct.lio_dispatch*
  %57 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.lio_dispatch* %56, %struct.lio_dispatch** %59, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  store %struct.octeon_device* %60, %struct.octeon_device** %2, align 8
  br label %61

61:                                               ; preds = %44, %43, %13
  %62 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  ret %struct.octeon_device* %62
}

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
