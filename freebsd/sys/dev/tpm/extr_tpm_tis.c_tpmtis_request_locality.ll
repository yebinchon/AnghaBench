; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_request_locality.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i64, i32, i32 }

@TPM_ACCESS_LOC_ACTIVE = common dso_local global i32 0, align 4
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@TPM_TIMEOUT_A = common dso_local global i32 0, align 4
@TPM_INT_STS_LOC_CHANGE = common dso_local global i32 0, align 4
@TPM_ACCESS = common dso_local global i32 0, align 4
@TPM_ACCESS_LOC_REQ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TPMLOCREQUEST with INTR\00", align 1
@tick = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"TPMLOCREQUEST POLLING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i32)* @tpmtis_request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_request_locality(%struct.tpm_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

11:                                               ; preds = %2
  %12 = load i32, i32* @TPM_ACCESS_LOC_ACTIVE, align 4
  %13 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @TPM_TIMEOUT_A, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TPM_INT_STS_LOC_CHANGE, align 4
  %17 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %18 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %20 = load i32, i32* @TPM_ACCESS, align 4
  %21 = load i32, i32* @TPM_ACCESS_LOC_REQ, align 4
  %22 = call i32 @WR1(%struct.tpm_sc* %19, i32 %20, i32 %21)
  %23 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %24 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TPM_ACCESS, align 4
  %27 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %28 = call i32 @bus_barrier(i32 %25, i32 %26, i32 1, i32 %27)
  %29 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %30 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %11
  %34 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %35 = load i32, i32* @PWAIT, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @tick, align 4
  %38 = sdiv i32 %36, %37
  %39 = call i32 @tsleep(%struct.tpm_sc* %34, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %41 = load i32, i32* @TPM_ACCESS, align 4
  %42 = call i32 @RD1(%struct.tpm_sc* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %54 = load i32, i32* @TPM_ACCESS, align 4
  %55 = call i32 @RD1(%struct.tpm_sc* %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %68

61:                                               ; preds = %52
  %62 = call i32 @pause(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %63 = load i32, i32* @tick, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %49

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %60, %33, %10
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @WR1(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @tsleep(%struct.tpm_sc*, i32, i8*, i32) #1

declare dso_local i32 @RD1(%struct.tpm_sc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
