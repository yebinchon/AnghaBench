; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_type = type { i64, i64, i32* }

@bfe_devs = common dso_local global %struct.bfe_type* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bfe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfe_type*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.bfe_type*, %struct.bfe_type** @bfe_devs, align 8
  store %struct.bfe_type* %5, %struct.bfe_type** %4, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.bfe_type*, %struct.bfe_type** %4, align 8
  %8 = getelementptr inbounds %struct.bfe_type, %struct.bfe_type* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_get_vendor(i32 %12)
  %14 = load %struct.bfe_type*, %struct.bfe_type** %4, align 8
  %15 = getelementptr inbounds %struct.bfe_type, %struct.bfe_type* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @pci_get_device(i32 %19)
  %21 = load %struct.bfe_type*, %struct.bfe_type** %4, align 8
  %22 = getelementptr inbounds %struct.bfe_type, %struct.bfe_type* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.bfe_type*, %struct.bfe_type** %4, align 8
  %28 = getelementptr inbounds %struct.bfe_type, %struct.bfe_type* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @device_set_desc(i32 %26, i32* %29)
  %31 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %18, %11
  %33 = load %struct.bfe_type*, %struct.bfe_type** %4, align 8
  %34 = getelementptr inbounds %struct.bfe_type, %struct.bfe_type* %33, i32 1
  store %struct.bfe_type* %34, %struct.bfe_type** %4, align 8
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
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
