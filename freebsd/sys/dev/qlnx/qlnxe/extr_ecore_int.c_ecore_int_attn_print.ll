; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_attn_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_attn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.dbg_attn_block_result = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to parse attention information [status: %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32, i32, i32)* @ecore_int_attn_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_attn_print(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_attn_block_result, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 @OSAL_MEMSET(%struct.dbg_attn_block_result* %9, i32 0, i32 4)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ecore_dbg_read_attn(%struct.ecore_hwfn* %12, i32 %15, i32 %16, i32 %17, i32 %18, %struct.dbg_attn_block_result* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DBG_STATUS_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %24, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %30

27:                                               ; preds = %4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = call i32 @ecore_dbg_print_attn(%struct.ecore_hwfn* %28, %struct.dbg_attn_block_result* %9)
  br label %30

30:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.dbg_attn_block_result*, i32, i32) #1

declare dso_local i32 @ecore_dbg_read_attn(%struct.ecore_hwfn*, i32, i32, i32, i32, %struct.dbg_attn_block_result*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dbg_print_attn(%struct.ecore_hwfn*, %struct.dbg_attn_block_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
