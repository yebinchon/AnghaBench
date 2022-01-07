; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_aeu_translate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_aeu_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aeu_invert_reg_bit = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ATTENTION_BB_DIFFERENT = common dso_local global i32 0, align 4
@aeu_descs_special = common dso_local global %struct.aeu_invert_reg_bit* null, align 8
@ATTENTION_BB_MASK = common dso_local global i64 0, align 8
@ATTENTION_BB_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aeu_invert_reg_bit* (%struct.ecore_hwfn*, %struct.aeu_invert_reg_bit*)* @ecore_int_aeu_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aeu_invert_reg_bit* @ecore_int_aeu_translate(%struct.ecore_hwfn* %0, %struct.aeu_invert_reg_bit* %1) #0 {
  %3 = alloca %struct.aeu_invert_reg_bit*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.aeu_invert_reg_bit*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.aeu_invert_reg_bit* %1, %struct.aeu_invert_reg_bit** %5, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ECORE_IS_BB(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %5, align 8
  store %struct.aeu_invert_reg_bit* %12, %struct.aeu_invert_reg_bit** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %5, align 8
  %15 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATTENTION_BB_DIFFERENT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %5, align 8
  store %struct.aeu_invert_reg_bit* %21, %struct.aeu_invert_reg_bit** %3, align 8
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** @aeu_descs_special, align 8
  %24 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %5, align 8
  %25 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @ATTENTION_BB_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @ATTENTION_BB_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %23, i64 %31
  store %struct.aeu_invert_reg_bit* %32, %struct.aeu_invert_reg_bit** %3, align 8
  br label %33

33:                                               ; preds = %22, %20, %11
  %34 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %3, align 8
  ret %struct.aeu_invert_reg_bit* %34
}

declare dso_local i32 @ECORE_IS_BB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
