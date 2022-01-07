; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_read_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_read_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"no PCI register window mapping %#jx+%#x: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid width: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*, i64, i32)* @bhndb_pci_read_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_read_core(%struct.bhndb_pci_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_pci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @bhndb_pci_get_core_regs(%struct.bhndb_pci_softc* %11, i64 %12, i32 %13, %struct.resource** %8, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %37 [
    i32 1, label %25
    i32 2, label %29
    i32 4, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @bus_read_1(%struct.resource* %26, i64 %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %23
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @bus_read_2(%struct.resource* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @bus_read_4(%struct.resource* %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %25, %29, %33, %37
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @bhndb_pci_get_core_regs(%struct.bhndb_pci_softc*, i64, i32, %struct.resource**, i64*) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i64) #1

declare dso_local i32 @bus_read_2(%struct.resource*, i64) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
