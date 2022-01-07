; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_post_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_post_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dmae_cmd* }
%struct.dmae_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"source or destination address 0 idx_cmd=%d\0Aopcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Posting DMAE command [idx %d]: opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", align 1
@DMAE_CMD_SIZE = common dso_local global i32 0, align 4
@DMAE_CMD_SIZE_TO_FILL = common dso_local global i32 0, align 4
@DMAE_REG_CMD_MEM = common dso_local global i64 0, align 8
@DMAE_GO_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_dmae_post_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dmae_post_command(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dmae_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.dmae_cmd*, %struct.dmae_cmd** %13, align 8
  store %struct.dmae_cmd* %14, %struct.dmae_cmd** %6, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %2
  %30 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %29
  %35 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OSAL_LE32_TO_CPU(i32 %44)
  %46 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OSAL_LE16_TO_CPU(i32 %48)
  %50 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSAL_LE16_TO_CPU(i32 %52)
  %54 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OSAL_LE32_TO_CPU(i32 %56)
  %58 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @OSAL_LE32_TO_CPU(i32 %60)
  %62 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OSAL_LE32_TO_CPU(i32 %64)
  %66 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OSAL_LE32_TO_CPU(i32 %68)
  %70 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %40, i32 1, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %61, i32 %65, i32 %69)
  %71 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %71, i32* %3, align 4
  br label %149

72:                                               ; preds = %34, %29
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %74 = load i32, i32* @ECORE_MSG_HW, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @OSAL_LE32_TO_CPU(i32 %78)
  %80 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @OSAL_LE16_TO_CPU(i32 %82)
  %84 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %85 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @OSAL_LE16_TO_CPU(i32 %86)
  %88 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @OSAL_LE32_TO_CPU(i32 %90)
  %92 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %93 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @OSAL_LE32_TO_CPU(i32 %94)
  %96 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OSAL_LE32_TO_CPU(i32 %98)
  %100 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @OSAL_LE32_TO_CPU(i32 %102)
  %104 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %73, i32 %74, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %79, i32 %83, i32 %87, i32 %91, i32 %95, i32 %99, i32 %103)
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %138, %72
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @DMAE_CMD_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DMAE_CMD_SIZE_TO_FILL, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %115 = bitcast %struct.dmae_cmd* %114 to i32*
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %113
  %122 = phi i32 [ %119, %113 ], [ 0, %120 ]
  store i32 %122, i32* %10, align 4
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %124 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %125 = load i64, i64* @DMAE_REG_CMD_MEM, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @DMAE_CMD_SIZE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = add i64 %125, %130
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = add i64 %131, %134
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @ecore_wr(%struct.ecore_hwfn* %123, %struct.ecore_ptt* %124, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %105

141:                                              ; preds = %105
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %143 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i64 @ecore_dmae_idx_to_go_cmd(i32 %144)
  %146 = load i32, i32* @DMAE_GO_VALUE, align 4
  %147 = call i32 @ecore_wr(%struct.ecore_hwfn* %142, %struct.ecore_ptt* %143, i64 %145, i32 %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %141, %39
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @OSAL_LE16_TO_CPU(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i64 @ecore_dmae_idx_to_go_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
