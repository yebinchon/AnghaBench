; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_cleanup_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_cleanup_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@IGU_CMD_INT_ACK_BASE = common dso_local global i32 0, align 4
@IGU_CLEANUP_SLEEP_LENGTH = common dso_local global i32 0, align 4
@IGU_REG_CLEANUP_STATUS_4 = common dso_local global i32 0, align 4
@IGU_REG_CLEANUP_STATUS_0 = common dso_local global i32 0, align 4
@IGU_CLEANUP_CLEANUP_SET = common dso_local global i32 0, align 4
@IGU_CLEANUP_CLEANUP_TYPE = common dso_local global i32 0, align 4
@IGU_CLEANUP_COMMAND_TYPE = common dso_local global i32 0, align 4
@IGU_COMMAND_TYPE_SET = common dso_local global i32 0, align 4
@IGU_CTRL_REG_PXP_ADDR = common dso_local global i32 0, align 4
@IGU_CTRL_REG_FID = common dso_local global i32 0, align 4
@IGU_CTRL_REG_TYPE = common dso_local global i32 0, align 4
@IGU_CTRL_CMD_TYPE_WR = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_32LSB_DATA = common dso_local global i32 0, align 4
@IGU_REG_COMMAND_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Timeout waiting for clear status 0x%08x [for sb %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32)* @ecore_int_igu_cleanup_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_igu_cleanup_sb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @IGU_CMD_INT_ACK_BASE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @IGU_CLEANUP_SLEEP_LENGTH, align 4
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* @IGU_REG_CLEANUP_STATUS_4, align 4
  %24 = load i32, i32* @IGU_REG_CLEANUP_STATUS_0, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp ne i32 %25, 512
  %27 = zext i1 %26 to i32
  %28 = call i32 @OSAL_BUILD_BUG_ON(i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @IGU_CLEANUP_CLEANUP_SET, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = call i32 @SET_FIELD(i32 %29, i32 %30, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @IGU_CLEANUP_CLEANUP_TYPE, align 4
  %38 = load i32, i32* %18, align 4
  %39 = call i32 @SET_FIELD(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @IGU_CLEANUP_COMMAND_TYPE, align 4
  %42 = load i32, i32* @IGU_COMMAND_TYPE_SET, align 4
  %43 = call i32 @SET_FIELD(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IGU_CTRL_REG_PXP_ADDR, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @SET_FIELD(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IGU_CTRL_REG_FID, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @SET_FIELD(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @IGU_CTRL_REG_TYPE, align 4
  %54 = load i32, i32* @IGU_CTRL_CMD_TYPE_WR, align 4
  %55 = call i32 @SET_FIELD(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %58 = load i32, i32* @IGU_REG_COMMAND_REG_32LSB_DATA, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ecore_wr(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %58, i32 %59)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OSAL_BARRIER(i32 %63)
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %66 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %67 = load i32, i32* @IGU_REG_COMMAND_REG_CTRL, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ecore_wr(%struct.ecore_hwfn* %65, %struct.ecore_ptt* %66, i32 %67, i32 %68)
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OSAL_MMIOWB(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = srem i32 %74, 32
  %76 = shl i32 1, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sdiv i32 %77, 32
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* @IGU_REG_CLEANUP_STATUS_0, align 4
  %83 = load i32, i32* %18, align 4
  %84 = mul nsw i32 128, %83
  %85 = add nsw i32 %82, %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %109, %5
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %94 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @ecore_rd(%struct.ecore_hwfn* %93, %struct.ecore_ptt* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  br label %105

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = icmp eq i32 %99, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %111

109:                                              ; preds = %105
  %110 = call i32 @OSAL_MSLEEP(i32 5)
  br label %88

111:                                              ; preds = %108, %88
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %115, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %111
  ret void
}

declare dso_local i32 @OSAL_BUILD_BUG_ON(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_BARRIER(i32) #1

declare dso_local i32 @OSAL_MMIOWB(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
