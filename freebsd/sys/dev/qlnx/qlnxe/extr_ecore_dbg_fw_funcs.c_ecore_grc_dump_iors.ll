; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_iors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_iors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32, i64 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@__const.ecore_grc_dump_iors.buf = private unnamed_addr constant [10 x i8] c"IOR_SET_?\00", align 1
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@NUM_IOR_SETS = common dso_local global i64 0, align 8
@SEM_FAST_REG_STORM_REG_FILE = common dso_local global i64 0, align 8
@IORS_PER_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_grc_dump_iors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_iors(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.storm_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.ecore_grc_dump_iors.buf, i32 0, i32 0), i64 10, i1 false)
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %73, %4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @MAX_DBG_STORMS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %21, i64 %22
  store %struct.storm_defs* %23, %struct.storm_defs** %14, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load i64, i64* %12, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn* %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %73

30:                                               ; preds = %20
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @NUM_IOR_SETS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load %struct.storm_defs*, %struct.storm_defs** %14, align 8
  %37 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SEM_FAST_REG_STORM_REG_FILE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @BYTES_TO_DWORDS(i64 %40)
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @IOR_SET_OFFSET(i64 %42)
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %13, align 8
  %46 = add i64 48, %45
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %49 = call i32 @OSAL_STRLEN(i8* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 %51
  store i8 %47, i8* %52, align 1
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @IORS_PER_SET, align 4
  %63 = load %struct.storm_defs*, %struct.storm_defs** %14, align 8
  %64 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ecore_grc_dump_mem(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32* %58, i32 %59, i8* %60, i32 %61, i32 %62, i32 0, i32 32, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %35
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %31

72:                                               ; preds = %31
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %12, align 8
  br label %16

76:                                               ; preds = %16
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn*, i32) #2

declare dso_local i32 @BYTES_TO_DWORDS(i64) #2

declare dso_local i32 @IOR_SET_OFFSET(i64) #2

declare dso_local i32 @OSAL_STRLEN(i8*) #2

declare dso_local i32 @ecore_grc_dump_mem(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
