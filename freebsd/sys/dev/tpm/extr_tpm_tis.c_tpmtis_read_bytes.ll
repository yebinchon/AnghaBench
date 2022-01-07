; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@TPM_DATA_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i64, i32*)* @tpmtis_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_read_bytes(%struct.tpm_sc* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_sc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.tpm_sc* %0, %struct.tpm_sc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %14 = call i64 @tpmtis_wait_for_burst(%struct.tpm_sc* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @MIN(i64 %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %29, %18
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %8, align 8
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %31 = load i32, i32* @TPM_DATA_FIFO, align 4
  %32 = call i32 @RD1(%struct.tpm_sc* %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %25

35:                                               ; preds = %25
  br label %9

36:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @tpmtis_wait_for_burst(%struct.tpm_sc*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @RD1(%struct.tpm_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
