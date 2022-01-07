; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_setup_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_setup_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@lapics = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"local APICs not initialized\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"MADT: ACPI Startup failed with %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Try disabling either ACPI or apic support.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Using MADT but ACPI doesn't work\00", align 1
@IOAPIC_MAX_ID = common dso_local global i32 0, align 4
@M_MADT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ioapics = common dso_local global %struct.TYPE_6__* null, align 8
@madt_parse_apics = common dso_local global i32 0, align 4
@madt_parse_ints = common dso_local global i32 0, align 4
@madt_found_sci_override = common dso_local global i32 0, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"MADT: Could not find APIC for SCI IRQ %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"MADT: Forcing active-low polarity and level trigger for SCI\0A\00", align 1
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@ACPI_INTR_APIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @madt_setup_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madt_setup_io() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lapics, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @acpi_Startup()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @AcpiFormatException(i32 %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %12, %0
  %19 = load i32, i32* @IOAPIC_MAX_ID, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_MADT, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.TYPE_6__* @malloc(i32 %23, i32 %24, i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** @ioapics, align 8
  %29 = load i32, i32* @madt_parse_apics, align 4
  %30 = call i32 @madt_walk_table(i32 %29, i32* null)
  %31 = load i32, i32* @madt_parse_ints, align 4
  %32 = call i32 @madt_walk_table(i32 %31, i32* null)
  %33 = load i32, i32* @madt_found_sci_override, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %18
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %37 = call i64 @madt_find_interrupt(i32 %36, i8** %1, i32* %2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %52

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i8*, i8** %1, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %47 = call i32 @ioapic_set_polarity(i8* %44, i32 %45, i32 %46)
  %48 = load i8*, i8** %1, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %51 = call i32 @ioapic_set_triggermode(i8* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %39
  br label %53

53:                                               ; preds = %52, %18
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @IOAPIC_MAX_ID, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ioapics, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ioapics, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ioapic_register(i32* %72)
  br label %74

74:                                               ; preds = %66, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* @ACPI_INTR_APIC, align 4
  %80 = call i32 @acpi_SetDefaultIntrModel(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ioapics, align 8
  %82 = load i32, i32* @M_MADT, align 4
  %83 = call i32 @free(%struct.TYPE_6__* %81, i32 %82)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @ioapics, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lapics, align 8
  %85 = load i32, i32* @M_MADT, align 4
  %86 = call i32 @free(%struct.TYPE_6__* %84, i32 %85)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @lapics, align 8
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @acpi_Startup(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @AcpiFormatException(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @madt_walk_table(i32, i32*) #1

declare dso_local i64 @madt_find_interrupt(i32, i8**, i32*) #1

declare dso_local i32 @ioapic_set_polarity(i8*, i32, i32) #1

declare dso_local i32 @ioapic_set_triggermode(i8*, i32, i32) #1

declare dso_local i32 @ioapic_register(i32*) #1

declare dso_local i32 @acpi_SetDefaultIntrModel(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
