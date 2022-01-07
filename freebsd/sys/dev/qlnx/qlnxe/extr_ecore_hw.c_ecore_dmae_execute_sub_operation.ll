; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_execute_sub_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_execute_sub_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64, %struct.dmae_cmd* }
%struct.dmae_cmd = type { i8*, i8*, i32, i8*, i8* }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Wait Failed. source_addr 0x%llx, grc_addr 0x%llx, size_in_dwords 0x%x, intermediate buffer 0x%llx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i32, i32, i32)* @ecore_dmae_execute_sub_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dmae_execute_sub_operation(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dmae_cmd*, align 8
  %18 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.dmae_cmd*, %struct.dmae_cmd** %25, align 8
  store %struct.dmae_cmd* %26, %struct.dmae_cmd** %17, align 8
  %27 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %63 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %40
  ]

29:                                               ; preds = %7, %7
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @DMA_HI(i64 %30)
  %32 = call i8* @OSAL_CPU_TO_LE32(i32 %31)
  %33 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %34 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @DMA_LO(i64 %35)
  %37 = call i8* @OSAL_CPU_TO_LE32(i32 %36)
  %38 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %39 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %65

40:                                               ; preds = %7
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @DMA_HI(i64 %41)
  %43 = call i8* @OSAL_CPU_TO_LE32(i32 %42)
  %44 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %45 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @DMA_LO(i64 %46)
  %48 = call i8* @OSAL_CPU_TO_LE32(i32 %47)
  %49 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %50 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i64, i64* %11, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @OSAL_MEMCPY(i8* %55, i8* %57, i32 %61)
  br label %65

63:                                               ; preds = %7
  %64 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %64, i32* %8, align 4
  br label %180

65:                                               ; preds = %40, %29
  %66 = load i32, i32* %14, align 4
  switch i32 %66, label %89 [
    i32 130, label %67
    i32 129, label %67
    i32 128, label %78
  ]

67:                                               ; preds = %65, %65
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @DMA_HI(i64 %68)
  %70 = call i8* @OSAL_CPU_TO_LE32(i32 %69)
  %71 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %72 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @DMA_LO(i64 %73)
  %75 = call i8* @OSAL_CPU_TO_LE32(i32 %74)
  %76 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %77 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %91

78:                                               ; preds = %65
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @DMA_HI(i64 %79)
  %81 = call i8* @OSAL_CPU_TO_LE32(i32 %80)
  %82 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %83 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @DMA_LO(i64 %84)
  %86 = call i8* @OSAL_CPU_TO_LE32(i32 %85)
  %87 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %88 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  br label %91

89:                                               ; preds = %65
  %90 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %90, i32* %8, align 4
  br label %180

91:                                               ; preds = %78, %67
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @OSAL_CPU_TO_LE16(i32 %92)
  %94 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %95 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %118

101:                                              ; preds = %98, %91
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %103 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %106 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %109 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @HILO_U64(i8* %107, i8* %110)
  %112 = inttoptr i64 %111 to i8*
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @OSAL_DMA_SYNC(i32 %104, i8* %112, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %101, %98
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %120 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %121 = call i32 @ecore_dmae_post_command(%struct.ecore_hwfn* %119, %struct.ecore_ptt* %120)
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %123 = call i32 @ecore_dmae_operation_wait(%struct.ecore_hwfn* %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 129
  br i1 %128, label %129, label %146

129:                                              ; preds = %126, %118
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %131 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %134 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %137 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @HILO_U64(i8* %135, i8* %138)
  %140 = inttoptr i64 %139 to i8*
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i32 @OSAL_DMA_SYNC(i32 %132, i8* %140, i32 %144, i32 1)
  br label %146

146:                                              ; preds = %129, %126
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @ECORE_SUCCESS, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %152 = load i32, i32* @ECORE_MSG_HW, align 4
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %157 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %151, i32 %152, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i64 %153, i64 %154, i32 %155, i64 %159)
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %8, align 4
  br label %180

162:                                              ; preds = %146
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 128
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load i64, i64* %12, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %169 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = call i32 @OSAL_MEMCPY(i8* %167, i8* %172, i32 %176)
  br label %178

178:                                              ; preds = %165, %162
  %179 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %178, %150, %89, %63
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @DMA_HI(i64) #1

declare dso_local i32 @DMA_LO(i64) #1

declare dso_local i32 @OSAL_MEMCPY(i8*, i8*, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @OSAL_DMA_SYNC(i32, i8*, i32, i32) #1

declare dso_local i64 @HILO_U64(i8*, i8*) #1

declare dso_local i32 @ecore_dmae_post_command(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_dmae_operation_wait(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
