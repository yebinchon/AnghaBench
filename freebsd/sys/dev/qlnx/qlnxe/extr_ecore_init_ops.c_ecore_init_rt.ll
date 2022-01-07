; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_rt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64* }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i64, i32)* @ecore_init_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_init_rt(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** %14, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %31, i32* %18, align 4
  store i64 0, i64* %16, align 8
  br label %32

32:                                               ; preds = %101, %6
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load i32*, i32** %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %101

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %16, align 8
  %51 = shl i64 %50, 2
  %52 = add i64 %49, %51
  %53 = load i64*, i64** %14, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ecore_wr(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i64 %52, i64 %56)
  br label %101

58:                                               ; preds = %43
  store i64 1, i64* %17, align 8
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32*, i32** %15, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  br label %78

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %17, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %17, align 8
  br label %59

78:                                               ; preds = %73, %59
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = ptrtoint i64* %83 to i32
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %16, align 8
  %87 = shl i64 %86, 2
  %88 = add i64 %85, %87
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* @OSAL_NULL, align 4
  %91 = call i32 @ecore_dmae_host2grc(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, i32 %84, i64 %88, i64 %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @ECORE_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %7, align 4
  br label %106

97:                                               ; preds = %78
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %16, align 8
  br label %101

101:                                              ; preds = %97, %46, %42
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %32

104:                                              ; preds = %32
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %95
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i32 @ecore_dmae_host2grc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
