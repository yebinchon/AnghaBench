; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_disable_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32*, i64, i32 }

@ENA_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_disable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_disable_msix(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %3 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %4 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %5 = call i64 @ENA_FLAG_ISSET(i32 %3, %struct.ena_adapter* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %10 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %8, %struct.ena_adapter* %9)
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pci_release_msi(i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
