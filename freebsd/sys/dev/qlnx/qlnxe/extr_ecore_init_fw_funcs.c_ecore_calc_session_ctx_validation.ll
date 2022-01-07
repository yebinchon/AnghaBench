; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_calc_session_ctx_validation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_calc_session_ctx_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@con_region_offsets = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_calc_session_ctx_validation(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %12, align 8
  %15 = load i64*, i64** %12, align 8
  %16 = load i64**, i64*** @con_region_offsets, align 8
  %17 = getelementptr inbounds i64*, i64** %16, i64 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %15, i64 %21
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64**, i64*** @con_region_offsets, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %23, i64 %29
  store i64* %30, i64** %10, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i64**, i64*** @con_region_offsets, align 8
  %33 = getelementptr inbounds i64*, i64** %32, i64 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %31, i64 %37
  store i64* %38, i64** %11, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @OSAL_MEMSET(i64* %39, i32 0, i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ecore_calc_cdu_validation_byte(i64 %42, i32 3, i32 %43)
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ecore_calc_cdu_validation_byte(i64 %46, i32 4, i32 %47)
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @ecore_calc_cdu_validation_byte(i64 %50, i32 5, i32 %51)
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  ret void
}

declare dso_local i32 @OSAL_MEMSET(i64*, i32, i32) #1

declare dso_local i64 @ecore_calc_cdu_validation_byte(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
