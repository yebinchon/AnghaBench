; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_grc_dumpsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_grc_dumpsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ecore_ptt_acquire failed\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ecore_dbg_grc_get_dump_buf_size failed[0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @qlnx_grc_dumpsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_grc_dumpsize(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = call i32 (...) @ecore_dbg_get_fw_func_ver()
  %12 = call i32 @ecore_dbg_set_app_ver(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i64 %18
  store %struct.ecore_hwfn* %19, %struct.ecore_hwfn** %9, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %21 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %20)
  store %struct.ecore_ptt* %21, %struct.ecore_ptt** %10, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %23 = icmp ne %struct.ecore_ptt* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ecore_dbg_grc_get_dump_buf_size(%struct.ecore_hwfn* %29, %struct.ecore_ptt* %30, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DBG_STATUS_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %44 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ecore_dbg_set_app_ver(i32) #1

declare dso_local i32 @ecore_dbg_get_fw_func_ver(...) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @ecore_dbg_grc_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
