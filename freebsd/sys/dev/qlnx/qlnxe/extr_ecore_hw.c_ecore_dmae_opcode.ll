; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_dmae_params = type { i32, i32, i32, i32, i32 }

@DMAE_CMD_SRC_MASK_GRC = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_MASK_PCIE = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_SHIFT = common dso_local global i32 0, align 4
@PF_SRC = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_PF_ID_MASK = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_PF_ID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_DST_MASK_GRC = common dso_local global i32 0, align 4
@DMAE_CMD_DST_MASK_PCIE = common dso_local global i32 0, align 4
@DMAE_CMD_DST_SHIFT = common dso_local global i32 0, align 4
@PF_DST = common dso_local global i32 0, align 4
@DMAE_CMD_DST_PF_ID_MASK = common dso_local global i32 0, align 4
@DMAE_CMD_DST_PF_ID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_COMP_WORD_EN_MASK = common dso_local global i32 0, align 4
@DMAE_CMD_COMP_WORD_EN_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_ADDR_RESET_MASK = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_ADDR_RESET_SHIFT = common dso_local global i32 0, align 4
@COMPLETION_DST = common dso_local global i32 0, align 4
@DMAE_CMD_COMP_FUNC_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_ENDIANITY = common dso_local global i32 0, align 4
@DMAE_CMD_ENDIANITY_MODE_SHIFT = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@DMAE_CMD_PORT_ID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_DST_ADDR_RESET_MASK = common dso_local global i32 0, align 4
@DMAE_CMD_DST_ADDR_RESET_SHIFT = common dso_local global i32 0, align 4
@VF_SRC = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_VF_ID_VALID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_VF_ID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_SRC_VF_ID_MASK = common dso_local global i32 0, align 4
@VF_DST = common dso_local global i32 0, align 4
@DMAE_CMD_DST_VF_ID_VALID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_DST_VF_ID_SHIFT = common dso_local global i32 0, align 4
@DMAE_CMD_DST_VF_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32, i32, %struct.ecore_dmae_params*)* @ecore_dmae_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dmae_opcode(%struct.ecore_hwfn* %0, i32 %1, i32 %2, %struct.ecore_dmae_params* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dmae_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ecore_dmae_params* %3, %struct.ecore_dmae_params** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @DMAE_CMD_SRC_MASK_GRC, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @DMAE_CMD_SRC_MASK_PCIE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* @DMAE_CMD_SRC_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %27 = load i32, i32* @PF_SRC, align 4
  %28 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %32 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @DMAE_CMD_SRC_PF_ID_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @DMAE_CMD_SRC_PF_ID_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @DMAE_CMD_DST_MASK_GRC, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @DMAE_CMD_DST_MASK_PCIE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* @DMAE_CMD_DST_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %60 = load i32, i32* @PF_DST, align 4
  %61 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %65 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %69 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DMAE_CMD_DST_PF_ID_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @DMAE_CMD_DST_PF_ID_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @DMAE_CMD_COMP_WORD_EN_MASK, align 4
  %81 = load i32, i32* @DMAE_CMD_COMP_WORD_EN_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @DMAE_CMD_SRC_ADDR_RESET_MASK, align 4
  %86 = load i32, i32* @DMAE_CMD_SRC_ADDR_RESET_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %91 = load i32, i32* @COMPLETION_DST, align 4
  %92 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %71
  %95 = load i32, i32* @DMAE_CMD_COMP_FUNC_SHIFT, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %94, %71
  %100 = load i32, i32* @DMAE_CMD_ENDIANITY, align 4
  %101 = load i32, i32* @DMAE_CMD_ENDIANITY_MODE_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %106 = load i32, i32* @PORT, align 4
  %107 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %111 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  br label %117

113:                                              ; preds = %99
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %115 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %112, %109 ], [ %116, %113 ]
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @DMAE_CMD_PORT_ID_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* @DMAE_CMD_SRC_ADDR_RESET_MASK, align 4
  %125 = load i32, i32* @DMAE_CMD_SRC_ADDR_RESET_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* @DMAE_CMD_DST_ADDR_RESET_MASK, align 4
  %130 = load i32, i32* @DMAE_CMD_DST_ADDR_RESET_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %135 = load i32, i32* @VF_SRC, align 4
  %136 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %117
  %139 = load i32, i32* @DMAE_CMD_SRC_VF_ID_VALID_SHIFT, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %13, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %144 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @DMAE_CMD_SRC_VF_ID_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %12, align 4
  br label %156

150:                                              ; preds = %117
  %151 = load i32, i32* @DMAE_CMD_SRC_VF_ID_MASK, align 4
  %152 = load i32, i32* @DMAE_CMD_SRC_VF_ID_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %150, %138
  %157 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %158 = load i32, i32* @VF_DST, align 4
  %159 = call i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = load i32, i32* @DMAE_CMD_DST_VF_ID_VALID_SHIFT, align 4
  %163 = shl i32 1, %162
  %164 = load i32, i32* %13, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %13, align 4
  %166 = load %struct.ecore_dmae_params*, %struct.ecore_dmae_params** %8, align 8
  %167 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DMAE_CMD_DST_VF_ID_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %179

173:                                              ; preds = %156
  %174 = load i32, i32* @DMAE_CMD_DST_VF_ID_MASK, align 4
  %175 = load i32, i32* @DMAE_CMD_DST_VF_ID_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %12, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %173, %161
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @OSAL_CPU_TO_LE32(i32 %180)
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %183 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 %181, i32* %186, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @OSAL_CPU_TO_LE16(i32 %187)
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %190 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 %188, i32* %193, align 4
  ret void
}

declare dso_local i64 @ECORE_DMAE_FLAGS_IS_SET(%struct.ecore_dmae_params*, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
