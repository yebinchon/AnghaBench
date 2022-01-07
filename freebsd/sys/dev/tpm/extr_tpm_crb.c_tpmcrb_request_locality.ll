; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_request_locality.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@TPM_LOC_STATE_VALID = common dso_local global i32 0, align 4
@TPM_LOC_STATE_ASSIGNED = common dso_local global i32 0, align 4
@TPM_LOC_CTRL = common dso_local global i32 0, align 4
@TPM_LOC_CTRL_REQUEST = common dso_local global i32 0, align 4
@TPM_LOC_STATE = common dso_local global i32 0, align 4
@TPM_TIMEOUT_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i32)* @tpmcrb_request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmcrb_request_locality(%struct.tpm_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @TPM_LOC_STATE_VALID, align 4
  %12 = load i32, i32* @TPM_LOC_STATE_ASSIGNED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %15 = load i32, i32* @TPM_LOC_CTRL, align 4
  %16 = load i32, i32* @TPM_LOC_CTRL_REQUEST, align 4
  %17 = call i32 @OR4(%struct.tpm_sc* %14, i32 %15, i32 %16)
  %18 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %19 = load i32, i32* @TPM_LOC_STATE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TPM_TIMEOUT_C, align 4
  %23 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @OR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @tpm_wait_for_u32(%struct.tpm_sc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
