; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_iov.c_t4iov_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_iov.c_t4iov_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@PCI_VENDOR_ID_CHELSIO = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@t4iov_pciids = common dso_local global %struct.TYPE_3__* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t4iov_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4iov_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_vendor(i32 %6)
  %8 = load i64, i64* @PCI_VENDOR_ID_CHELSIO, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_device(i32 %13)
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %40, %12
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t4iov_pciids, align 8
  %18 = call i64 @nitems(%struct.TYPE_3__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t4iov_pciids, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t4iov_pciids, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_set_desc(i32 %29, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_quiet(i32 %36)
  %38 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %15

43:                                               ; preds = %15
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %28, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
