; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_initial_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_initial_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PIR_entry = type { i32, i32, i32 }
%struct.PIR_intpin = type { i32 }
%struct.pci_link = type { i64, i32, i32 }

@PCI_INVALID_IRQ = common dso_local global i64 0, align 8
@NUM_ISA_INTERRUPTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"$PIR: Ignoring invalid BIOS IRQ %d from %d.%d.INT%c for link %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"$PIR: Using invalid BIOS IRQ %d from %d.%d.INT%c for link %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"$PIR: BIOS IRQ %d for %d.%d.INT%c is not valid for link %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"$PIR: Preferring valid BIOS IRQ %d from %d.%d.INT%c for link %#x to IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"$PIR: BIOS IRQ %d for %d.%d.INT%c does not match link %#x irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PIR_entry*, %struct.PIR_intpin*, i8*)* @pci_pir_initial_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_pir_initial_irqs(%struct.PIR_entry* %0, %struct.PIR_intpin* %1, i8* %2) #0 {
  %4 = alloca %struct.PIR_entry*, align 8
  %5 = alloca %struct.PIR_intpin*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_link*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.PIR_entry* %0, %struct.PIR_entry** %4, align 8
  store %struct.PIR_intpin* %1, %struct.PIR_intpin** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %11 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %12 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %10, i64 %15
  %17 = ptrtoint %struct.PIR_intpin* %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %19 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_link* @pci_pir_find_link(i32 %20)
  store %struct.pci_link* %21, %struct.pci_link** %7, align 8
  %22 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %23 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %26 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @pci_pir_search_irq(i32 %24, i32 %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %36 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %3
  br label %155

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @NUM_ISA_INTERRUPTS, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %47 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %50 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 65
  %54 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %55 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i64, i32, i32, i64, i32, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %48, i32 %51, i64 %53, i32 %56)
  br label %155

58:                                               ; preds = %40
  %59 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %60 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCI_INVALID_IRQ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @pci_pir_valid_irq(%struct.pci_link* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %72 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %75 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, 65
  %79 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %80 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i64, i32, i32, i64, i32, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %73, i32 %76, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %69, %64
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %86 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %88 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  br label %155

89:                                               ; preds = %58
  %90 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @pci_pir_valid_irq(%struct.pci_link* %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %97 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %100 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 65
  %104 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %105 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, i64, i32, i32, i64, i32, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %98, i32 %101, i64 %103, i32 %106)
  br label %155

108:                                              ; preds = %89
  %109 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %110 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %111 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @pci_pir_valid_irq(%struct.pci_link* %109, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %108
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %118 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %121 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %9, align 8
  %124 = add nsw i64 %123, 65
  %125 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %126 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %129 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, i64, i32, i32, i64, i32, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %116, i32 %119, i32 %122, i64 %124, i32 %127, i64 %130)
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %134 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %136 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %135, i32 0, i32 2
  store i32 1, i32* %136, align 4
  br label %154

137:                                              ; preds = %108
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %140 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %143 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %145, 65
  %147 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %148 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %151 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, i64, i32, i32, i64, i32, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %138, i32 %141, i32 %144, i64 %146, i32 %149, i64 %152)
  br label %154

154:                                              ; preds = %137, %115
  br label %155

155:                                              ; preds = %39, %44, %83, %154, %94
  ret void
}

declare dso_local %struct.pci_link* @pci_pir_find_link(i32) #1

declare dso_local i64 @pci_pir_search_irq(i32, i32, i64) #1

declare dso_local i32 @printf(i8*, i64, i32, i32, i64, i32, ...) #1

declare dso_local i32 @pci_pir_valid_irq(%struct.pci_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
