; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_print_attn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_print_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.dbg_attn_block_result = type { %struct.dbg_attn_reg_result*, i32 }
%struct.dbg_attn_reg_result = type { i32, i32, i32 }

@DBG_ATTN_BLOCK_RESULT_NUM_REGS = common dso_local global i32 0, align 4
@DBG_ATTN_BLOCK_RESULT_ATTN_TYPE = common dso_local global i32 0, align 4
@ATTN_TYPE_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@DBG_ATTN_REG_RESULT_STS_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: address 0x%08x, status 0x%08x, mask 0x%08x\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_print_attn(%struct.ecore_hwfn* %0, %struct.dbg_attn_block_result* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.dbg_attn_block_result*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dbg_attn_reg_result*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.dbg_attn_block_result* %1, %struct.dbg_attn_block_result** %4, align 8
  %11 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %4, align 8
  %12 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_NUM_REGS, align 4
  %15 = call i8* @GET_FIELD(i32 %13, i32 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %4, align 8
  %18 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_ATTN_TYPE, align 4
  %21 = call i8* @GET_FIELD(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %53, %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %4, align 8
  %29 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %28, i32 0, i32 0
  %30 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %30, i64 %31
  store %struct.dbg_attn_reg_result* %32, %struct.dbg_attn_reg_result** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ATTN_TYPE_INTERRUPT, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %8, align 8
  %39 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DBG_ATTN_REG_RESULT_STS_ADDRESS, align 4
  %42 = call i8* @GET_FIELD(i32 %40, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %8, align 8
  %47 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %8, align 8
  %50 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %27
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* @DBG_STATUS_OK, align 4
  ret i32 %57
}

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
