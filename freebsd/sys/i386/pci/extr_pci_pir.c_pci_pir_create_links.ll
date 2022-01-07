; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_create_links.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PIR_entry = type { i32, i32, %struct.PIR_intpin* }
%struct.PIR_intpin = type { i32, i32 }
%struct.pci_link = type { i32, i32, i64, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"$PIR: Entry %d.%d.INT%c has different mask for link %#x, merging\0A\00", align 1
@M_PIR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@pci_links = common dso_local global i32 0, align 4
@pl_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PIR_entry*, %struct.PIR_intpin*, i8*)* @pci_pir_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_pir_create_links(%struct.PIR_entry* %0, %struct.PIR_intpin* %1, i8* %2) #0 {
  %4 = alloca %struct.PIR_entry*, align 8
  %5 = alloca %struct.PIR_intpin*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_link*, align 8
  store %struct.PIR_entry* %0, %struct.PIR_entry** %4, align 8
  store %struct.PIR_intpin* %1, %struct.PIR_intpin** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %9 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_link* @pci_pir_find_link(i32 %10)
  store %struct.pci_link* %11, %struct.pci_link** %7, align 8
  %12 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %13 = icmp ne %struct.pci_link* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %16 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %20 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %23 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %14
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %31 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %34 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %37 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %38 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %37, i32 0, i32 2
  %39 = load %struct.PIR_intpin*, %struct.PIR_intpin** %38, align 8
  %40 = ptrtoint %struct.PIR_intpin* %36 to i64
  %41 = ptrtoint %struct.PIR_intpin* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 8
  %44 = add nsw i64 %43, 65
  %45 = trunc i64 %44 to i32
  %46 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %47 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %29, %26
  %51 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %52 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %55 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %14
  br label %83

59:                                               ; preds = %3
  %60 = load i32, i32* @M_PIR, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call %struct.pci_link* @malloc(i32 24, i32 %60, i32 %61)
  store %struct.pci_link* %62, %struct.pci_link** %7, align 8
  %63 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %64 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %67 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %69 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %72 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PCI_INVALID_IRQ, align 4
  %74 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %75 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %77 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %79 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.pci_link*, %struct.pci_link** %7, align 8
  %81 = load i32, i32* @pl_links, align 4
  %82 = call i32 @TAILQ_INSERT_TAIL(i32* @pci_links, %struct.pci_link* %80, i32 %81)
  br label %83

83:                                               ; preds = %59, %58
  ret void
}

declare dso_local %struct.pci_link* @pci_pir_find_link(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.pci_link* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pci_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
