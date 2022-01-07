; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_add_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_add_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i32, i32, i32, i64, i32 }

@PCIB_IVAR_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to read PCI bus number\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"PCI bridge without a bus number\00", align 1
@pci_link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"apparently invalid index %d\0A\00", align 1
@pci_link_interrupt_weights = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"BIOS IRQ %u for %d.%d.INT%c is invalid\0A\00", align 1
@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@pci_link_bios_isa_irqs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"BIOS IRQ %u does not match initial IRQ %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"BIOS IRQ %u for %d.%d.INT%c does not match previous BIOS IRQ %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_pci_link_add_reference(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.link*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PCIB_IVAR_BUS, align 4
  %16 = call i64 @BUS_READ_IVAR(i32 %14, i32* null, i32 %15, i64* %13)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %5
  %23 = load i32, i32* @pci_link, align 4
  %24 = call i32 @ACPI_SERIAL_BEGIN(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.link* @acpi_pci_link_lookup(i32 %25, i32 %26)
  store %struct.link* %27, %struct.link** %11, align 8
  %28 = load %struct.link*, %struct.link** %11, align 8
  %29 = icmp eq %struct.link* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @pci_link, align 4
  %35 = call i32 @ACPI_SERIAL_END(i32 %34)
  br label %147

36:                                               ; preds = %22
  %37 = load %struct.link*, %struct.link** %11, align 8
  %38 = getelementptr inbounds %struct.link, %struct.link* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.link*, %struct.link** %11, align 8
  %42 = getelementptr inbounds %struct.link, %struct.link* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load i32*, i32** @pci_link_interrupt_weights, align 8
  %47 = load %struct.link*, %struct.link** %11, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %45, %36
  %54 = load %struct.link*, %struct.link** %11, align 8
  %55 = getelementptr inbounds %struct.link, %struct.link* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @pci_link, align 4
  %60 = call i32 @ACPI_SERIAL_END(i32 %59)
  br label %147

61:                                               ; preds = %53
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @acpi_pci_link_search_irq(i64 %62, i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @PCI_INTERRUPT_VALID(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @pci_link, align 4
  %71 = call i32 @ACPI_SERIAL_END(i32 %70)
  br label %147

72:                                               ; preds = %61
  %73 = load %struct.link*, %struct.link** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @link_valid_irq(%struct.link* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 65
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %81, i32 %82, i32 %84)
  br label %144

86:                                               ; preds = %72
  %87 = load %struct.link*, %struct.link** %11, align 8
  %88 = getelementptr inbounds %struct.link, %struct.link* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @PCI_INTERRUPT_VALID(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.link*, %struct.link** %11, align 8
  %95 = getelementptr inbounds %struct.link, %struct.link* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* @pci_link_bios_isa_irqs, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* @pci_link_bios_isa_irqs, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.link*, %struct.link** %11, align 8
  %107 = getelementptr inbounds %struct.link, %struct.link* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.link*, %struct.link** %11, align 8
  %112 = getelementptr inbounds %struct.link, %struct.link* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @PCI_INTERRUPT_VALID(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.link*, %struct.link** %11, align 8
  %120 = getelementptr inbounds %struct.link, %struct.link* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %116, %110, %104
  br label %143

124:                                              ; preds = %86
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.link*, %struct.link** %11, align 8
  %127 = getelementptr inbounds %struct.link, %struct.link* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i64, i64* %13, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 65
  %138 = load %struct.link*, %struct.link** %11, align 8
  %139 = getelementptr inbounds %struct.link, %struct.link* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %134, i32 %135, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %130, %124
  br label %143

143:                                              ; preds = %142, %123
  br label %144

144:                                              ; preds = %143, %77
  %145 = load i32, i32* @pci_link, align 4
  %146 = call i32 @ACPI_SERIAL_END(i32 %145)
  br label %147

147:                                              ; preds = %144, %69, %58, %30
  ret void
}

declare dso_local i64 @BUS_READ_IVAR(i32, i32*, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local %struct.link* @acpi_pci_link_lookup(i32, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @acpi_pci_link_search_irq(i64, i32, i32) #1

declare dso_local i64 @PCI_INTERRUPT_VALID(i32) #1

declare dso_local i32 @link_valid_irq(%struct.link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
