; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_link_softc = type { i32, %struct.link*, i32 }
%struct.link = type { i32, i32, i32, i32*, i64 }

@pci_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%-16.16s  Index  IRQ  Rtd  Ref  IRQs\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"  %-14.14s  %5d  %3d   %c   %3d \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_pci_link_softc*, i32, i8*)* @acpi_pci_link_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_link_dump(%struct.acpi_pci_link_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.acpi_pci_link_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_pci_link_softc* %0, %struct.acpi_pci_link_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @pci_link, align 4
  %12 = call i32 @ACPI_SERIAL_ASSERT(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %17 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @device_get_nameunit(i32 %19)
  %21 = call i32 @snprintf(i8* %16, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %15, %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %25
  %32 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %32, i32 0, i32 1
  %34 = load %struct.link*, %struct.link** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.link, %struct.link* %34, i64 %36
  store %struct.link* %37, %struct.link** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %42 ]
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.link*, %struct.link** %7, align 8
  %47 = getelementptr inbounds %struct.link, %struct.link* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.link*, %struct.link** %7, align 8
  %50 = getelementptr inbounds %struct.link, %struct.link* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 89, i32 78
  %55 = load %struct.link*, %struct.link** %7, align 8
  %56 = getelementptr inbounds %struct.link, %struct.link* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45, i32 %48, i32 %54, i32 %57)
  %59 = load %struct.link*, %struct.link** %7, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %85

65:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.link*, %struct.link** %7, align 8
  %69 = getelementptr inbounds %struct.link, %struct.link* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.link*, %struct.link** %7, align 8
  %74 = getelementptr inbounds %struct.link, %struct.link* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %63
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %25

90:                                               ; preds = %25
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
