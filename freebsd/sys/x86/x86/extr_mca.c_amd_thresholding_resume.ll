; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_amd_thresholding_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_et_state = type { i32, i64 }

@mca_banks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CPU %d has more MC banks\00", align 1
@cpuid = common dso_local global i32 0, align 4
@cmci_mask = common dso_local global i32 0, align 4
@amd_et_state = common dso_local global %struct.amd_et_state** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @amd_thresholding_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_thresholding_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_et_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @mca_banks, align 4
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @cpuid, align 4
  %9 = call i64 @PCPU_GET(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @KASSERT(i32 %7, i8* %10)
  %12 = load i32, i32* @cmci_mask, align 4
  %13 = call i64 @PCPU_GET(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = and i64 %13, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.amd_et_state**, %struct.amd_et_state*** @amd_et_state, align 8
  %22 = load i32, i32* @cpuid, align 4
  %23 = call i64 @PCPU_GET(i32 %22)
  %24 = getelementptr inbounds %struct.amd_et_state*, %struct.amd_et_state** %21, i64 %23
  %25 = load %struct.amd_et_state*, %struct.amd_et_state** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %25, i64 %27
  store %struct.amd_et_state* %28, %struct.amd_et_state** %3, align 8
  %29 = load %struct.amd_et_state*, %struct.amd_et_state** %3, align 8
  %30 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.amd_et_state*, %struct.amd_et_state** %3, align 8
  %32 = getelementptr inbounds %struct.amd_et_state, %struct.amd_et_state* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.amd_et_state*, %struct.amd_et_state** %3, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @amd_thresholding_start(%struct.amd_et_state* %33, i32 %34)
  br label %36

36:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @amd_thresholding_start(%struct.amd_et_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
