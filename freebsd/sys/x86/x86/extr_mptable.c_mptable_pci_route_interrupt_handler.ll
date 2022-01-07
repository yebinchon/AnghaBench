; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_route_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_pci_route_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_route_interrupt_args = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@MPCT_ENTRY_INT = common dso_local global i64 0, align 8
@ioapics = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"No I/O APIC %d to route interrupt to\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Multiple IRQs for PCI interrupt %d.%d.INT%c: %d and %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @mptable_pci_route_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_pci_route_interrupt_handler(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_route_interrupt_args*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MPCT_ENTRY_INT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %92

13:                                               ; preds = %2
  %14 = load i64*, i64** %3, align 8
  %15 = bitcast i64* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.pci_route_interrupt_args*
  store %struct.pci_route_interrupt_args* %17, %struct.pci_route_interrupt_args** %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %22 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %13
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %30 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %13
  br label %92

34:                                               ; preds = %25
  %35 = load i32**, i32*** @ioapics, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %42, i8* %46)
  %48 = load i32**, i32*** @ioapics, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ioapic_get_vector(i32* %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %59 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %34
  br label %92

64:                                               ; preds = %34
  %65 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %66 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  %70 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %71 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %74 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 2
  %77 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %78 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 3
  %81 = add nsw i32 65, %80
  %82 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %83 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %69, i8* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.pci_route_interrupt_args*, %struct.pci_route_interrupt_args** %5, align 8
  %91 = getelementptr inbounds %struct.pci_route_interrupt_args, %struct.pci_route_interrupt_args* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %64, %63, %33, %12
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ioapic_get_vector(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
