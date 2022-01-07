; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_handle_apic.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_acpi.c_acpi_handle_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIsdt = type { i64, i64 }
%struct.MADTbody = type { i64 }
%struct.MADT_APIC = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.MADT_local_sapic, %struct.MADT_local_apic }
%struct.MADT_local_sapic = type { i32, i32 }
%struct.MADT_local_apic = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"MADT: Found CPU APIC ID %d %s\00", align 1
@ACPI_MADT_APIC_LOCAL_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@ncpu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"MADT: Found CPU SAPIC ID %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ACPIsdt*)* @acpi_handle_apic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_handle_apic(%struct.ACPIsdt* %0) #0 {
  %2 = alloca %struct.ACPIsdt*, align 8
  %3 = alloca %struct.MADTbody*, align 8
  %4 = alloca %struct.MADT_APIC*, align 8
  %5 = alloca %struct.MADT_local_apic*, align 8
  %6 = alloca %struct.MADT_local_sapic*, align 8
  store %struct.ACPIsdt* %0, %struct.ACPIsdt** %2, align 8
  %7 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %8 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.MADTbody*
  store %struct.MADTbody* %10, %struct.MADTbody** %3, align 8
  %11 = load %struct.MADTbody*, %struct.MADTbody** %3, align 8
  %12 = getelementptr inbounds %struct.MADTbody, %struct.MADTbody* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.MADT_APIC*
  store %struct.MADT_APIC* %14, %struct.MADT_APIC** %4, align 8
  br label %15

15:                                               ; preds = %82, %1
  %16 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %17 = ptrtoint %struct.MADT_APIC* %16 to i64
  %18 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %19 = ptrtoint %struct.ACPIsdt* %18 to i64
  %20 = sub i64 %17, %19
  %21 = load %struct.ACPIsdt*, %struct.ACPIsdt** %2, align 8
  %22 = getelementptr inbounds %struct.ACPIsdt, %struct.ACPIsdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %15
  %26 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %27 = getelementptr inbounds %struct.MADT_APIC, %struct.MADT_APIC* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %81 [
    i32 129, label %29
    i32 128, label %55
  ]

29:                                               ; preds = %25
  %30 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %31 = getelementptr inbounds %struct.MADT_APIC, %struct.MADT_APIC* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.MADT_local_apic* %32, %struct.MADT_local_apic** %5, align 8
  %33 = load %struct.MADT_local_apic*, %struct.MADT_local_apic** %5, align 8
  %34 = getelementptr inbounds %struct.MADT_local_apic, %struct.MADT_local_apic* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.MADT_local_apic*, %struct.MADT_local_apic** %5, align 8
  %37 = getelementptr inbounds %struct.MADT_local_apic, %struct.MADT_local_apic* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_MADT_APIC_LOCAL_FLAG_ENABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %43)
  %45 = load %struct.MADT_local_apic*, %struct.MADT_local_apic** %5, align 8
  %46 = getelementptr inbounds %struct.MADT_local_apic, %struct.MADT_local_apic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ACPI_MADT_APIC_LOCAL_FLAG_ENABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @ncpu, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @ncpu, align 4
  br label %54

54:                                               ; preds = %51, %29
  br label %82

55:                                               ; preds = %25
  %56 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %57 = getelementptr inbounds %struct.MADT_APIC, %struct.MADT_APIC* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.MADT_local_sapic* %58, %struct.MADT_local_sapic** %6, align 8
  %59 = load %struct.MADT_local_sapic*, %struct.MADT_local_sapic** %6, align 8
  %60 = getelementptr inbounds %struct.MADT_local_sapic, %struct.MADT_local_sapic* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.MADT_local_sapic*, %struct.MADT_local_sapic** %6, align 8
  %63 = getelementptr inbounds %struct.MADT_local_sapic, %struct.MADT_local_sapic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ACPI_MADT_APIC_LOCAL_FLAG_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %61, i8* %69)
  %71 = load %struct.MADT_local_sapic*, %struct.MADT_local_sapic** %6, align 8
  %72 = getelementptr inbounds %struct.MADT_local_sapic, %struct.MADT_local_sapic* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ACPI_MADT_APIC_LOCAL_FLAG_ENABLED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %55
  %78 = load i32, i32* @ncpu, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @ncpu, align 4
  br label %80

80:                                               ; preds = %77, %55
  br label %82

81:                                               ; preds = %25
  br label %82

82:                                               ; preds = %81, %80, %54
  %83 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %84 = bitcast %struct.MADT_APIC* %83 to i8*
  %85 = load %struct.MADT_APIC*, %struct.MADT_APIC** %4, align 8
  %86 = getelementptr inbounds %struct.MADT_APIC, %struct.MADT_APIC* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = bitcast i8* %89 to %struct.MADT_APIC*
  store %struct.MADT_APIC* %90, %struct.MADT_APIC** %4, align 8
  br label %15

91:                                               ; preds = %15
  ret void
}

declare dso_local i32 @warnx(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
