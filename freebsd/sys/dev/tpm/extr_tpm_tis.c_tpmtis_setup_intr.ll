; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@TPM_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_INT_ENABLE_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@TPM_INT_ENABLE_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_INT_ENABLE_LOC_CHANGE = common dso_local global i32 0, align 4
@TPM_INT_ENABLE_CMD_RDY = common dso_local global i32 0, align 4
@TPM_INT_ENABLE_STS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@tpmtis_get_SIRQ_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*)* @tpmtis_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_setup_intr(%struct.tpm_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_sc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %3, align 8
  %7 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @acpi_get_handle(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %12 = call i32 @tpmtis_request_locality(%struct.tpm_sc* %11, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %17 = load i32, i32* @TPM_INT_ENABLE, align 4
  %18 = call i32 @RD4(%struct.tpm_sc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @TPM_INT_ENABLE_GLOBAL_ENABLE, align 4
  %20 = load i32, i32* @TPM_INT_ENABLE_DATA_AVAIL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TPM_INT_ENABLE_LOC_CHANGE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TPM_INT_ENABLE_CMD_RDY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TPM_INT_ENABLE_STS_VALID, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %31 = load i32, i32* @TPM_INT_ENABLE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @WR4(%struct.tpm_sc* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @tpmtis_get_SIRQ_channel, align 4
  %36 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %37 = bitcast %struct.tpm_sc* %36 to i8*
  %38 = call i32 @AcpiWalkResources(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %40 = call i32 @tpmtis_relinquish_locality(%struct.tpm_sc* %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ACPI_SUCCESS(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @tpmtis_request_locality(%struct.tpm_sc*, i32) #1

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @WR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @AcpiWalkResources(i32, i8*, i32, i8*) #1

declare dso_local i32 @tpmtis_relinquish_locality(%struct.tpm_sc*) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
