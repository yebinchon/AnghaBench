; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpm_wait_for_u32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpm_wait_for_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32, i64 }

@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TPM WITH INTERRUPTS\00", align 1
@tick = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"TPM POLLING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i32, i32, i32, i32)* @tpm_wait_for_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_wait_for_u32(%struct.tpm_sc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
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
  br label %66

20:                                               ; preds = %5
  %21 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %22 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %27 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %32 = load i32, i32* @PWAIT, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @tick, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @tsleep(%struct.tpm_sc* %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %38 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @RD4(%struct.tpm_sc* %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %25, %20
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.tpm_sc*, %struct.tpm_sc** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @RD4(%struct.tpm_sc* %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %66

60:                                               ; preds = %51
  %61 = call i32 @pause(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %62 = load i32, i32* @tick, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %59, %30, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @tsleep(%struct.tpm_sc*, i32, i8*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
