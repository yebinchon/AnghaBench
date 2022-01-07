; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_go_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_go_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32, i32 }

@TPM_STS_CMD_RDY = common dso_local global i32 0, align 4
@TPM_INT_STS_CMD_RDY = common dso_local global i32 0, align 4
@TPM_STS = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@TPM_TIMEOUT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*)* @tpmtis_go_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_go_ready(%struct.tpm_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_sc*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %3, align 8
  %5 = load i32, i32* @TPM_STS_CMD_RDY, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @TPM_INT_STS_CMD_RDY, align 4
  %7 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %10 = load i32, i32* @TPM_STS, align 4
  %11 = load i32, i32* @TPM_STS_CMD_RDY, align 4
  %12 = call i32 @OR4(%struct.tpm_sc* %9, i32 %10, i32 %11)
  %13 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TPM_STS, align 4
  %17 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %18 = call i32 @bus_barrier(i32 %15, i32 %16, i32 4, i32 %17)
  %19 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %20 = load i32, i32* @TPM_STS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TPM_TIMEOUT_B, align 4
  %24 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %29 = load i32, i32* @TPM_STS, align 4
  %30 = load i32, i32* @TPM_STS_CMD_RDY, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @AND4(%struct.tpm_sc* %28, i32 %29, i32 %31)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @OR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @tpm_wait_for_u32(%struct.tpm_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @AND4(%struct.tpm_sc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
