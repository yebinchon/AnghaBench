; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpm_wait_for_u32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpm_wait_for_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"TPM in polling mode\00", align 1
@tick = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i32, i32, i32, i64)* @tpm_wait_for_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_wait_for_u32(%struct.tpm_sc* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tpm_sc* %0, %struct.tpm_sc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @RD4(%struct.tpm_sc* %12, i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %39

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i64, i64* %11, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @RD4(%struct.tpm_sc* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %39

33:                                               ; preds = %24
  %34 = call i32 @pause(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1)
  %35 = load i64, i64* @tick, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %11, align 8
  br label %21

38:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %32, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
