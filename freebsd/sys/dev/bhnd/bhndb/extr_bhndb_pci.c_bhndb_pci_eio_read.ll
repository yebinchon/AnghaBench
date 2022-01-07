; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_eio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_eio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhndb_pci_eio = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"no active mapping\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid offset %#jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i64, i64)* @bhndb_pci_eio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_eio_read(%struct.bhnd_erom_io* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bhnd_erom_io*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bhndb_pci_eio*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %4, align 8
  %9 = bitcast %struct.bhnd_erom_io* %8 to %struct.bhndb_pci_eio*
  store %struct.bhndb_pci_eio* %9, %struct.bhndb_pci_eio** %7, align 8
  %10 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %11 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %19 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %25 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %30 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %22, %16
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %41 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bhndb_pci_eio*, %struct.bhndb_pci_eio** %7, align 8
  %44 = getelementptr inbounds %struct.bhndb_pci_eio, %struct.bhndb_pci_eio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @bhndb_pci_probe_read(i32 %42, i32 %45, i64 %46, i64 %47)
  ret i32 %48
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @bhndb_pci_probe_read(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
