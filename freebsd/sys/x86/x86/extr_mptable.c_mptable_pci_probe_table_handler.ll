; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_probe_table_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_probe_table_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pci_probe_table_args = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@MPCT_ENTRY_INT = common dso_local global i64 0, align 8
@mptable_maxbusid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bus %d is too big\00", align 1
@busses = common dso_local global %struct.TYPE_4__* null, align 8
@PCI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"probing for non-PCI bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @mptable_pci_probe_table_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_pci_probe_table_handler(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_probe_table_args*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MPCT_ENTRY_INT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load i64*, i64** %3, align 8
  %14 = bitcast i64* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.pci_probe_table_args*
  store %struct.pci_probe_table_args* %16, %struct.pci_probe_table_args** %5, align 8
  %17 = load %struct.pci_probe_table_args*, %struct.pci_probe_table_args** %5, align 8
  %18 = getelementptr inbounds %struct.pci_probe_table_args, %struct.pci_probe_table_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @mptable_maxbusid, align 8
  %21 = icmp ule i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.pci_probe_table_args*, %struct.pci_probe_table_args** %5, align 8
  %24 = getelementptr inbounds %struct.pci_probe_table_args, %struct.pci_probe_table_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @busses, align 8
  %29 = load %struct.pci_probe_table_args*, %struct.pci_probe_table_args** %5, align 8
  %30 = getelementptr inbounds %struct.pci_probe_table_args, %struct.pci_probe_table_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pci_probe_table_args*, %struct.pci_probe_table_args** %5, align 8
  %43 = getelementptr inbounds %struct.pci_probe_table_args, %struct.pci_probe_table_args* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %12
  %47 = load %struct.pci_probe_table_args*, %struct.pci_probe_table_args** %5, align 8
  %48 = getelementptr inbounds %struct.pci_probe_table_args, %struct.pci_probe_table_args* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %11, %46, %12
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
