; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_cancel_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_cancel_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@TPM_CRB_CTRL_CANCEL = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_CANCEL_CMD = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_START = common dso_local global i32 0, align 4
@TPM_TIMEOUT_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Device failed to cancel command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*)* @tpmcrb_cancel_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmcrb_cancel_cmd(%struct.tpm_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_sc*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %3, align 8
  store i32 -1, i32* %4, align 4
  %5 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %6 = load i32, i32* @TPM_CRB_CTRL_CANCEL, align 4
  %7 = load i32, i32* @TPM_CRB_CTRL_CANCEL_CMD, align 4
  %8 = call i32 @WR4(%struct.tpm_sc* %5, i32 %6, i32 %7)
  %9 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %10 = load i32, i32* @TPM_CRB_CTRL_START, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @TPM_TIMEOUT_B, align 4
  %15 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %9, i32 %10, i32 %11, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %19 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.tpm_sc*, %struct.tpm_sc** %3, align 8
  %24 = load i32, i32* @TPM_CRB_CTRL_CANCEL, align 4
  %25 = load i32, i32* @TPM_CRB_CTRL_CANCEL_CMD, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WR4(%struct.tpm_sc* %23, i32 %24, i32 %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @WR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @tpm_wait_for_u32(%struct.tpm_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
