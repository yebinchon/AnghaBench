; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_mode_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_mode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32* }

@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_MODE_TREE = common dso_local global i64 0, align 8
@MAX_INIT_MODE_OPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32*)* @ecore_is_mode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_is_mode_match(%struct.ecore_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  store %struct.dbg_tools_data* %11, %struct.dbg_tools_data** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %13 = load i64, i64* @BIN_BUF_DBG_MODE_TREE, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %61 [
    i32 129, label %25
    i32 128, label %32
    i32 130, label %32
  ]

25:                                               ; preds = %2
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %2, %2
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %33, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %36, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ true, %41 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  br label %59

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i32 [ %49, %47 ], [ %58, %56 ]
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %2
  %62 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %63 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MAX_INIT_MODE_OPS, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %59, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
