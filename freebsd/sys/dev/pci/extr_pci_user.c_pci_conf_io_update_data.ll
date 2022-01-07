; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_io_update_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_io_update_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf_io = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_conf_io*, i64, i32)* @pci_conf_io_update_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_conf_io_update_data(%struct.pci_conf_io* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_conf_io*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_conf_io*, align 8
  store %struct.pci_conf_io* %0, %struct.pci_conf_io** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %32 [
    i32 131, label %9
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.pci_conf_io*
  store %struct.pci_conf_io* %11, %struct.pci_conf_io** %7, align 8
  %12 = load %struct.pci_conf_io*, %struct.pci_conf_io** %4, align 8
  %13 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_conf_io*, %struct.pci_conf_io** %7, align 8
  %16 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pci_conf_io*, %struct.pci_conf_io** %4, align 8
  %18 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pci_conf_io*, %struct.pci_conf_io** %7, align 8
  %21 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pci_conf_io*, %struct.pci_conf_io** %4, align 8
  %23 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pci_conf_io*, %struct.pci_conf_io** %7, align 8
  %26 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pci_conf_io*, %struct.pci_conf_io** %4, align 8
  %28 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pci_conf_io*, %struct.pci_conf_io** %7, align 8
  %31 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
