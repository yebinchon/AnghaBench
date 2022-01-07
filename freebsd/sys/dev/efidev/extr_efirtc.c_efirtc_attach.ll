; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirtc.c_efirtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirtc.c_efirtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.efi_tmcap = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"cannot get EFI time capabilities\00", align 1
@us_per_s = common dso_local global i64 0, align 8
@ns_per_us = common dso_local global i64 0, align 8
@efirtc_resadj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@efirtc_zeroes_subseconds = common dso_local global i64 0, align 8
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@ns_per_s = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @efirtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efirtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.efi_tmcap, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @bzero(%struct.efi_tmcap* %4, i32 16)
  %8 = call i32 @efi_get_time_capabilities(%struct.efi_tmcap* %4)
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.efi_tmcap, %struct.efi_tmcap* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @us_per_s, align 8
  store i64 %19, i64* %5, align 8
  br label %32

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.efi_tmcap, %struct.efi_tmcap* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @us_per_s, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i64 1, i64* %5, align 8
  br label %31

26:                                               ; preds = %20
  %27 = load i64, i64* @us_per_s, align 8
  %28 = getelementptr inbounds %struct.efi_tmcap, %struct.efi_tmcap* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %27, %29
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %26, %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ns_per_us, align 8
  %35 = mul nsw i64 %33, %34
  %36 = sdiv i64 %35, 2
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efirtc_resadj, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.efi_tmcap, %struct.efi_tmcap* %4, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @efirtc_zeroes_subseconds, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %42 = call i32 @clock_register_flags(i32 %39, i64 %40, i32 %41)
  %43 = load i64, i64* @efirtc_zeroes_subseconds, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* @ns_per_s, align 8
  %48 = load i64, i64* @ns_per_us, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i32 @clock_schedule(i32 %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %32
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bzero(%struct.efi_tmcap*, i32) #1

declare dso_local i32 @efi_get_time_capabilities(%struct.efi_tmcap*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_register_flags(i32, i64, i32) #1

declare dso_local i32 @clock_schedule(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
