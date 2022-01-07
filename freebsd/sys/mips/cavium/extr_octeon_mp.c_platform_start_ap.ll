; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_mp.c_platform_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_mp.c_platform_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_CIU_PP_RST = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"AP #%d still in reset\0A\00", align 1
@octeon_ap_boot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Waiting for cpu%d to start\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CVMX_CIU_PP_RST, align 4
  %6 = call i64 @cvmx_read_csr(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = and i64 %7, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* @CVMX_CIU_PP_RST, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @cvmx_write_csr(i32 %26, i64 %27)
  %29 = call i32 @DELAY(i32 2000)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @atomic_cmpset_32(i32* @octeon_ap_boot, i32 -1, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %44

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %41, %35
  %37 = call i32 @DELAY(i32 1000)
  %38 = call i64 @atomic_cmpset_32(i32* @octeon_ap_boot, i32 0, i32 -1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %36

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
