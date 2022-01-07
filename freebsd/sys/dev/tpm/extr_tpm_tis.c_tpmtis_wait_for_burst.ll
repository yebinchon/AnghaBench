; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_wait_for_burst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_wait_for_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@TPM_TIMEOUT_A = common dso_local global i32 0, align 4
@TPM_STS = common dso_local global i32 0, align 4
@TPM_STS_BURST_MASK = common dso_local global i32 0, align 4
@TPM_STS_BURST_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*)* @tpmtis_wait_for_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_wait_for_burst(%struct.tpm_sc* %0) #0 {
  %2 = alloca %struct.tpm_sc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %2, align 8
  %5 = load i32, i32* @TPM_TIMEOUT_A, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.tpm_sc*, %struct.tpm_sc** %2, align 8
  %12 = load i32, i32* @TPM_STS, align 4
  %13 = call i32 @RD4(%struct.tpm_sc* %11, i32 %12)
  %14 = load i32, i32* @TPM_STS_BURST_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @TPM_STS_BURST_OFFSET, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %10
  %22 = call i32 @DELAY(i32 1)
  br label %6

23:                                               ; preds = %20, %6
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
