; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_get_trace_cmd_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_get_trace_cmd_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ecore_ptt_acquire [%d, 0x%x]failed\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cmd = 0x%x failed [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @qlnx_get_trace_cmd_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_get_trace_cmd_size(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i64 %17
  store %struct.ecore_hwfn* %18, %struct.ecore_hwfn** %9, align 8
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %20 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %19)
  store %struct.ecore_ptt* %20, %struct.ecore_ptt** %10, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %22 = icmp ne %struct.ecore_ptt* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @QL_DPRINT1(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 0, i32* %4, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %50 [
    i32 130, label %30
    i32 128, label %34
    i32 131, label %38
    i32 129, label %42
    i32 132, label %46
  ]

30:                                               ; preds = %28
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %33 = call i32 @ecore_dbg_mcp_trace_get_dump_buf_size(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i32* %11)
  store i32 %33, i32* %8, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %37 = call i32 @ecore_dbg_reg_fifo_get_dump_buf_size(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, i32* %11)
  store i32 %37, i32* %8, align 4
  br label %50

38:                                               ; preds = %28
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %41 = call i32 @ecore_dbg_igu_fifo_get_dump_buf_size(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i32* %11)
  store i32 %41, i32* %8, align 4
  br label %50

42:                                               ; preds = %28
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %45 = call i32 @ecore_dbg_protection_override_get_dump_buf_size(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, i32* %11)
  store i32 %45, i32* %8, align 4
  br label %50

46:                                               ; preds = %28
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %49 = call i32 @ecore_dbg_fw_asserts_get_dump_buf_size(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32* %11)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %28, %46, %42, %38, %34, %30
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DBG_STATUS_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @QL_DPRINT1(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %62 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @ecore_dbg_mcp_trace_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_dbg_reg_fifo_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_dbg_igu_fifo_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_dbg_protection_override_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_dbg_fw_asserts_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
