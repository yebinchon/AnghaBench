; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_read_attn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_read_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.dbg_attn_block_result = type { i64, i32, i32, %struct.dbg_attn_reg_result* }
%struct.dbg_attn_reg_result = type { i64, i8*, i32, i32 }
%struct.dbg_attn_reg = type { i64, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@s_dbg_arrays = common dso_local global %struct.TYPE_5__* null, align 8
@BIN_BUF_DBG_MODE_TREE = common dso_local global i64 0, align 8
@BIN_BUF_DBG_ATTN_BLOCKS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_ATTN_REGS = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_ARRAY_NOT_SET = common dso_local global i32 0, align 4
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_ATTN_REG_STS_ADDRESS = common dso_local global i32 0, align 4
@DBG_ATTN_REG_RESULT_STS_ADDRESS = common dso_local global i32 0, align 4
@DBG_ATTN_REG_RESULT_NUM_REG_ATTN = common dso_local global i32 0, align 4
@DBG_ATTN_REG_NUM_REG_ATTN = common dso_local global i32 0, align 4
@DBG_ATTN_BLOCK_RESULT_ATTN_TYPE = common dso_local global i32 0, align 4
@DBG_ATTN_BLOCK_RESULT_NUM_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_read_attn(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, %struct.dbg_attn_block_result* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dbg_attn_block_result*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.dbg_attn_reg*, align 8
  %19 = alloca %struct.dbg_attn_reg*, align 8
  %20 = alloca %struct.dbg_attn_reg_result*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dbg_attn_block_result* %5, %struct.dbg_attn_block_result** %13, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %27 = call i32 @ecore_dbg_dev_init(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26)
  store i32 %27, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @DBG_STATUS_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %183

33:                                               ; preds = %6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_dbg_arrays, align 8
  %35 = load i64, i64* @BIN_BUF_DBG_MODE_TREE, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_dbg_arrays, align 8
  %42 = load i64, i64* @BIN_BUF_DBG_ATTN_BLOCKS, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_dbg_arrays, align 8
  %49 = load i64, i64* @BIN_BUF_DBG_ATTN_REGS, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47, %40, %33
  %55 = load i32, i32* @DBG_STATUS_DBG_ARRAY_NOT_SET, align 4
  store i32 %55, i32* %7, align 4
  br label %183

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.dbg_attn_reg* @ecore_get_block_attn_regs(i32 %57, i32 %58, i64* %16)
  store %struct.dbg_attn_reg* %59, %struct.dbg_attn_reg** %18, align 8
  store i64 0, i64* %15, align 8
  br label %60

60:                                               ; preds = %154, %56
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %16, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %157

64:                                               ; preds = %60
  %65 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %18, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %65, i64 %66
  store %struct.dbg_attn_reg* %67, %struct.dbg_attn_reg** %19, align 8
  %68 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %69 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %73 = call i64 @GET_FIELD(i32 %71, i32 %72)
  %74 = icmp ugt i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %24, align 4
  %76 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %77 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %81 = call i64 @GET_FIELD(i32 %79, i32 %80)
  store i64 %81, i64* %23, align 8
  %82 = load i32, i32* %24, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %86 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %85, i64* %23)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %154

89:                                               ; preds = %84, %64
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %94 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  br label %102

96:                                               ; preds = %89
  %97 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %98 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DBG_ATTN_REG_STS_ADDRESS, align 4
  %101 = call i64 @GET_FIELD(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi i64 [ %95, %92 ], [ %101, %96 ]
  %104 = call i64 @DWORDS_TO_BYTES(i64 %103)
  store i64 %104, i64* %21, align 8
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %106 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %107 = load i64, i64* %21, align 8
  %108 = call i8* @ecore_rd(%struct.ecore_hwfn* %105, %struct.ecore_ptt* %106, i64 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %22, align 8
  %110 = load i64, i64* %22, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %154

113:                                              ; preds = %102
  %114 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %13, align 8
  %115 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %114, i32 0, i32 3
  %116 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %116, i64 %117
  store %struct.dbg_attn_reg_result* %118, %struct.dbg_attn_reg_result** %20, align 8
  %119 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %20, align 8
  %120 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DBG_ATTN_REG_RESULT_STS_ADDRESS, align 4
  %123 = load i64, i64* %21, align 8
  %124 = call i32 @SET_FIELD(i32 %121, i32 %122, i64 %123)
  %125 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %20, align 8
  %126 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DBG_ATTN_REG_RESULT_NUM_REG_ATTN, align 4
  %129 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %130 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DBG_ATTN_REG_NUM_REG_ATTN, align 4
  %133 = call i64 @GET_FIELD(i32 %131, i32 %132)
  %134 = call i32 @SET_FIELD(i32 %127, i32 %128, i64 %133)
  %135 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %136 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %20, align 8
  %139 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %22, align 8
  %141 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %20, align 8
  %142 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %144 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %145 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %19, align 8
  %146 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @DWORDS_TO_BYTES(i64 %147)
  %149 = call i8* @ecore_rd(%struct.ecore_hwfn* %143, %struct.ecore_ptt* %144, i64 %148)
  %150 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %20, align 8
  %151 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* %17, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %154

154:                                              ; preds = %113, %112, %88
  %155 = load i64, i64* %15, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %15, align 8
  br label %60

157:                                              ; preds = %60
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %13, align 8
  %161 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call %struct.TYPE_6__* @ecore_get_block_attn_data(i32 %162, i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %13, align 8
  %168 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  %169 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %13, align 8
  %170 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_ATTN_TYPE, align 4
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = call i32 @SET_FIELD(i32 %171, i32 %172, i64 %174)
  %176 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %13, align 8
  %177 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_NUM_REGS, align 4
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @SET_FIELD(i32 %178, i32 %179, i64 %180)
  %182 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %157, %54, %31
  %184 = load i32, i32* %7, align 4
  ret i32 %184
}

declare dso_local i32 @ecore_dbg_dev_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local %struct.dbg_attn_reg* @ecore_get_block_attn_regs(i32, i32, i64*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_is_mode_match(%struct.ecore_hwfn*, i64*) #1

declare dso_local i64 @DWORDS_TO_BYTES(i64) #1

declare dso_local i8* @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @SET_FIELD(i32, i32, i64) #1

declare dso_local %struct.TYPE_6__* @ecore_get_block_attn_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
