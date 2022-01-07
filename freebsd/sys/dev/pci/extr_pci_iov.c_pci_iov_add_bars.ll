; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_add_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_add_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcicfg_iov = type { %struct.pci_iov_bar* }
%struct.pci_iov_bar = type { i32, i32, i32* }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcicfg_iov*, %struct.pci_devinfo*)* @pci_iov_add_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_iov_add_bars(%struct.pcicfg_iov* %0, %struct.pci_devinfo* %1) #0 {
  %3 = alloca %struct.pcicfg_iov*, align 8
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca %struct.pci_iov_bar*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pcicfg_iov* %0, %struct.pcicfg_iov** %3, align 8
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %3, align 8
  %14 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %13, i32 0, i32 0
  %15 = load %struct.pci_iov_bar*, %struct.pci_iov_bar** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pci_iov_bar, %struct.pci_iov_bar* %15, i64 %17
  store %struct.pci_iov_bar* %18, %struct.pci_iov_bar** %5, align 8
  %19 = load %struct.pci_iov_bar*, %struct.pci_iov_bar** %5, align 8
  %20 = getelementptr inbounds %struct.pci_iov_bar, %struct.pci_iov_bar* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %12
  %24 = load %struct.pci_iov_bar*, %struct.pci_iov_bar** %5, align 8
  %25 = getelementptr inbounds %struct.pci_iov_bar, %struct.pci_iov_bar* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @rman_get_start(i32* %26)
  %28 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pci_iov_bar*, %struct.pci_iov_bar** %5, align 8
  %34 = getelementptr inbounds %struct.pci_iov_bar, %struct.pci_iov_bar* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %27, %37
  store i64 %38, i64* %6, align 8
  %39 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %40 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @PCIR_BAR(i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.pci_iov_bar*, %struct.pci_iov_bar** %5, align 8
  %47 = getelementptr inbounds %struct.pci_iov_bar, %struct.pci_iov_bar* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_add_bar(i32 %42, i32 %44, i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %23, %12
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %8
  ret void
}

declare dso_local i64 @rman_get_start(i32*) #1

declare dso_local i32 @pci_add_bar(i32, i32, i64, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
