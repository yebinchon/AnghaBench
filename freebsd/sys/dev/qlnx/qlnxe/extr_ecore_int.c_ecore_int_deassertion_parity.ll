; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_deassertion_parity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_deassertion_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.aeu_invert_reg_bit = type { i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"%s parity attention is set [address 0x%08x, bit %d]\0A\00", align 1
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@ATTN_TYPE_PARITY = common dso_local global i32 0, align 4
@BLOCK_BTB = common dso_local global i64 0, align 8
@BLOCK_OPTE = common dso_local global i64 0, align 8
@BLOCK_MCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"`%s' - Disabled future parity errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.aeu_invert_reg_bit*, i64, i32)* @ecore_int_deassertion_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_deassertion_parity(%struct.ecore_hwfn* %0, %struct.aeu_invert_reg_bit* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.aeu_invert_reg_bit*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.aeu_invert_reg_bit* %1, %struct.aeu_invert_reg_bit** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %6, align 8
  %13 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %6, align 8
  %19 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DP_NOTICE(i32 %17, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @MAX_BLOCK_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %31 = call i32 @ecore_int_attn_print(%struct.ecore_hwfn* %28, i64 %29, i32 %30, i32 0)
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @BLOCK_BTB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %37 = load i64, i64* @BLOCK_OPTE, align 8
  %38 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %39 = call i32 @ecore_int_attn_print(%struct.ecore_hwfn* %36, i64 %37, i32 %38, i32 0)
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %41 = load i64, i64* @BLOCK_MCP, align 8
  %42 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %43 = call i32 @ecore_int_attn_print(%struct.ecore_hwfn* %40, i64 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %35, %27
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @ecore_rd(%struct.ecore_hwfn* %50, i32 %53, i64 %54)
  store i64 %55, i64* %11, align 8
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = and i64 %61, %62
  %64 = call i32 @ecore_wr(%struct.ecore_hwfn* %56, i32 %59, i64 %60, i64 %63)
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %6, align 8
  %67 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DP_INFO(%struct.ecore_hwfn* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ecore_int_attn_print(%struct.ecore_hwfn*, i64, i32, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, i32, i64, i64) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
