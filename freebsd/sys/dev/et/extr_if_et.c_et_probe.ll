; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_dev = type { i64, i64, i32* }

@et_devices = common dso_local global %struct.et_dev* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @et_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.et_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_vendor(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.et_dev*, %struct.et_dev** @et_devices, align 8
  store %struct.et_dev* %11, %struct.et_dev** %4, align 8
  br label %12

12:                                               ; preds = %37, %1
  %13 = load %struct.et_dev*, %struct.et_dev** %4, align 8
  %14 = getelementptr inbounds %struct.et_dev, %struct.et_dev* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.et_dev*, %struct.et_dev** %4, align 8
  %20 = getelementptr inbounds %struct.et_dev, %struct.et_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.et_dev*, %struct.et_dev** %4, align 8
  %26 = getelementptr inbounds %struct.et_dev, %struct.et_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.et_dev*, %struct.et_dev** %4, align 8
  %32 = getelementptr inbounds %struct.et_dev, %struct.et_dev* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @device_set_desc(i32 %30, i32* %33)
  %35 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %23, %17
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.et_dev*, %struct.et_dev** %4, align 8
  %39 = getelementptr inbounds %struct.et_dev, %struct.et_dev* %38, i32 1
  store %struct.et_dev* %39, %struct.et_dev** %4, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
