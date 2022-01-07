; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pci_pir_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_link_lookup = type { i32, i32, i32, %struct.pci_link** }
%struct.pci_link = type { i32, i64, i32 }

@pci_route_table = common dso_local global %struct.TYPE_4__* null, align 8
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@pci_pir_find_link_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"$PIR: No matching entry for %d.%d.INT%c\0A\00", align 1
@pir_bios_irqs = common dso_local global i32 0, align 4
@pci_irq_override_mask = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"$PIR: Failed to route interrupt for %d:%d INT%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"$PIR: ROUTE_INTERRUPT failed.\0A\00", align 1
@pir_device = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"missing pir device\00", align 1
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"$PIR: %d:%d INT%c routed to irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_pir_route_interrupt(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_link_lookup, align 8
  %11 = alloca %struct.pci_link*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pci_route_table, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %17, i32* %5, align 4
  br label %162

18:                                               ; preds = %4
  store %struct.pci_link* null, %struct.pci_link** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %10, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.pci_link_lookup, %struct.pci_link_lookup* %10, i32 0, i32 3
  store %struct.pci_link** %11, %struct.pci_link*** %26, align 8
  %27 = load i32, i32* @pci_pir_find_link_handler, align 4
  %28 = call i32 @pci_pir_walk_table(i32 %27, %struct.pci_link_lookup* %10)
  %29 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %30 = icmp eq %struct.pci_link* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = add nsw i32 %35, 65
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %38, i32* %5, align 4
  br label %162

39:                                               ; preds = %18
  %40 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %41 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PCI_INTERRUPT_VALID(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %39
  %46 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %47 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %52 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @powerof2(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %58 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ffs(i64 %59)
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %69

62:                                               ; preds = %50, %45
  %63 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pci_route_table, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_pir_choose_irq(%struct.pci_link* %63, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @PCI_INTERRUPT_VALID(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %75 = load i32, i32* @pir_bios_irqs, align 4
  %76 = call i32 @pci_pir_choose_irq(%struct.pci_link* %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @PCI_INTERRUPT_VALID(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %83 = load i32, i32* @pci_irq_override_mask, align 4
  %84 = call i32 @pci_pir_choose_irq(%struct.pci_link* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @PCI_INTERRUPT_VALID(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @bootverbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = add nsw i32 %96, 65
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %92, %89
  %100 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %100, i32* %5, align 4
  br label %162

101:                                              ; preds = %85
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %104 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %39
  %106 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %107 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %117 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pci_pir_biosroute(i32 %111, i32 %112, i32 %113, i32 %115, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %110
  %123 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %124 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @powerof2(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %130, i32* %5, align 4
  br label %162

131:                                              ; preds = %122, %110
  %132 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %133 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  %134 = load i32*, i32** @pir_device, align 8
  %135 = icmp ne i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 @KASSERT(i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32*, i32** @pir_device, align 8
  %139 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %140 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %143 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %144 = call i32 @BUS_CONFIG_INTR(i32* %138, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %131, %105
  %146 = load i64, i64* @bootverbose, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 1
  %153 = add nsw i32 %152, 65
  %154 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %155 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %148, %145
  %159 = load %struct.pci_link*, %struct.pci_link** %11, align 8
  %160 = getelementptr inbounds %struct.pci_link, %struct.pci_link* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %158, %128, %99, %31, %16
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @pci_pir_walk_table(i32, %struct.pci_link_lookup*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i64 @powerof2(i64) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @pci_pir_choose_irq(%struct.pci_link*, i32) #1

declare dso_local i32 @pci_pir_biosroute(i32, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BUS_CONFIG_INTR(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
