; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_get_sb_dbg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_get_sb_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_sb_info = type { i32 }
%struct.ecore_sb_info_dbg = type { i32*, i8*, i8* }

@ECORE_INVAL = common dso_local global i32 0, align 4
@IGU_REG_PRODUCER_MEMORY = common dso_local global i64 0, align 8
@IGU_REG_CONSUMER_MEM = common dso_local global i64 0, align 8
@PIS_PER_SB_E4 = common dso_local global i32 0, align 4
@CAU_REG_PI_MEMORY = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_get_sb_dbg(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_sb_info* %2, %struct.ecore_sb_info_dbg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_sb_info*, align 8
  %9 = alloca %struct.ecore_sb_info_dbg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_sb_info* %2, %struct.ecore_sb_info** %8, align 8
  store %struct.ecore_sb_info_dbg* %3, %struct.ecore_sb_info_dbg** %9, align 8
  %12 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %8, align 8
  %13 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_VF(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %83

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NUM_OF_SBS(i32 %26)
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %83

31:                                               ; preds = %22
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %33 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %34 = load i64, i64* @IGU_REG_PRODUCER_MEMORY, align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i8* @ecore_rd(%struct.ecore_hwfn* %32, %struct.ecore_ptt* %33, i64 %38)
  %40 = load %struct.ecore_sb_info_dbg*, %struct.ecore_sb_info_dbg** %9, align 8
  %41 = getelementptr inbounds %struct.ecore_sb_info_dbg, %struct.ecore_sb_info_dbg* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %44 = load i64, i64* @IGU_REG_CONSUMER_MEM, align 8
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i8* @ecore_rd(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43, i64 %48)
  %50 = load %struct.ecore_sb_info_dbg*, %struct.ecore_sb_info_dbg** %9, align 8
  %51 = getelementptr inbounds %struct.ecore_sb_info_dbg, %struct.ecore_sb_info_dbg* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %78, %31
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PIS_PER_SB_E4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %58 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %59 = load i64, i64* @CAU_REG_PI_MEMORY, align 8
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 4
  %62 = load i32, i32* @PIS_PER_SB_E4, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %59, %64
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = call i8* @ecore_rd(%struct.ecore_hwfn* %57, %struct.ecore_ptt* %58, i64 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.ecore_sb_info_dbg*, %struct.ecore_sb_info_dbg** %9, align 8
  %73 = getelementptr inbounds %struct.ecore_sb_info_dbg, %struct.ecore_sb_info_dbg* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %56
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %52

81:                                               ; preds = %52
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %29, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @NUM_OF_SBS(i32) #1

declare dso_local i8* @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
