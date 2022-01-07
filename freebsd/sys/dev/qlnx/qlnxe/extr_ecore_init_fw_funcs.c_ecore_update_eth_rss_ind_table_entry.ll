; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_update_eth_rss_ind_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_update_eth_rss_ind_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@RSS_IND_TABLE_ENTRY_PER_LINE = common dso_local global i32 0, align 4
@RSS_IND_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@RSS_IND_TABLE_VPORT_SIZE = common dso_local global i32 0, align 4
@RSS_REG_RSS_RAM_ADDR = common dso_local global i64 0, align 8
@RSS_REG_RSS_RAM_MASK = common dso_local global i64 0, align 8
@RSS_REG_RSS_RAM_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_update_eth_rss_ind_table_entry(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @RSS_IND_TABLE_ENTRY_PER_LINE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @RSS_IND_TABLE_ENTRY_PER_LINE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %24 = load i32, i32* @RSS_IND_TABLE_BASE_ADDR, align 4
  %25 = load i32, i32* @RSS_IND_TABLE_VPORT_SIZE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RSS_IND_TABLE_ENTRY_PER_LINE, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @RSS_IND_TABLE_ENTRY_PER_LINE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, %33
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %60, %5
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @RSS_IND_TABLE_ENTRY_PER_LINE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %20, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %23, i64 %50
  store i32 65535, i32* %51, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %20, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %23, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %66 = load i64, i64* @RSS_REG_RSS_RAM_ADDR, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ecore_wr(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65, i64 %66, i32 %67)
  store i32* %23, i32** %13, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %71 = load i64, i64* @RSS_REG_RSS_RAM_MASK, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ecore_wr(%struct.ecore_hwfn* %69, %struct.ecore_ptt* %70, i64 %71, i32 %74)
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %78 = load i64, i64* @RSS_REG_RSS_RAM_MASK, align 8
  %79 = add nsw i64 %78, 4
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ecore_wr(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i64 %79, i32 %82)
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %85 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %86 = load i64, i64* @RSS_REG_RSS_RAM_MASK, align 8
  %87 = add nsw i64 %86, 8
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ecore_wr(%struct.ecore_hwfn* %84, %struct.ecore_ptt* %85, i64 %87, i32 %90)
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %93 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %94 = load i64, i64* @RSS_REG_RSS_RAM_MASK, align 8
  %95 = add nsw i64 %94, 12
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ecore_wr(%struct.ecore_hwfn* %92, %struct.ecore_ptt* %93, i64 %95, i32 %98)
  store i32* %20, i32** %13, align 8
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %101 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %102 = load i64, i64* @RSS_REG_RSS_RAM_DATA, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ecore_wr(%struct.ecore_hwfn* %100, %struct.ecore_ptt* %101, i64 %102, i32 %105)
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %108 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %109 = load i64, i64* @RSS_REG_RSS_RAM_DATA, align 8
  %110 = add nsw i64 %109, 4
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ecore_wr(%struct.ecore_hwfn* %107, %struct.ecore_ptt* %108, i64 %110, i32 %113)
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %116 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %117 = load i64, i64* @RSS_REG_RSS_RAM_DATA, align 8
  %118 = add nsw i64 %117, 8
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ecore_wr(%struct.ecore_hwfn* %115, %struct.ecore_ptt* %116, i64 %118, i32 %121)
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %124 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %125 = load i64, i64* @RSS_REG_RSS_RAM_DATA, align 8
  %126 = add nsw i64 %125, 12
  %127 = load i32*, i32** %13, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ecore_wr(%struct.ecore_hwfn* %123, %struct.ecore_ptt* %124, i64 %126, i32 %129)
  %131 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
