; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlGetPwrCalTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwlGetPwrCalTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_priv = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@PWTAGETRATETABLE20M = common dso_local global i32 0, align 4
@PWTAGETRATETABLE40M = common dso_local global i32 0, align 4
@PWTAGETRATETABLE20M_5G = common dso_local global i32 0, align 4
@PWTAGETRATETABLE40M_5G = common dso_local global i32 0, align 4
@MHF_CALDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_hal_priv*)* @mwlGetPwrCalTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwlGetPwrCalTable(%struct.mwl_hal_priv* %0) #0 {
  %2 = alloca %struct.mwl_hal_priv*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %2, align 8
  %6 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %7 = call i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv* %6)
  %8 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %15 = call i64 @mwlGetCalTable(%struct.mwl_hal_priv* %14, i32 33, i32 0)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  %26 = sub nsw i32 %25, 12
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PWTAGETRATETABLE20M, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @PWTAGETRATETABLE20M, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %33, i32 0, i32 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @get2Ghz(i32* %34, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %41 = call i64 @mwlGetCalTable(%struct.mwl_hal_priv* %40, i32 34, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %46, %50
  %52 = sub nsw i32 %51, 12
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PWTAGETRATETABLE40M, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @PWTAGETRATETABLE40M, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %43
  %59 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %60 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %59, i32 0, i32 3
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @get2Ghz(i32* %61, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %39
  %67 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %68 = call i64 @mwlGetCalTable(%struct.mwl_hal_priv* %67, i32 35, i32 0)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %73, %77
  %79 = sub nsw i32 %78, 20
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @PWTAGETRATETABLE20M_5G, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* @PWTAGETRATETABLE20M_5G, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %70
  %86 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %87 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %86, i32 0, i32 2
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 20
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @get5Ghz(i32* %87, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %66
  %93 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %94 = call i64 @mwlGetCalTable(%struct.mwl_hal_priv* %93, i32 36, i32 0)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = or i32 %99, %103
  %105 = sub nsw i32 %104, 20
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @PWTAGETRATETABLE40M_5G, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* @PWTAGETRATETABLE40M_5G, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %96
  %112 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %113 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %112, i32 0, i32 1
  store i32* %113, i32** %4, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 20
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @get5Ghz(i32* %114, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %92
  %120 = load i32, i32* @MHF_CALDATA, align 4
  %121 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %122 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %2, align 8
  %126 = call i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv* %125)
  ret i32 0
}

declare dso_local i32 @MWL_HAL_LOCK(%struct.mwl_hal_priv*) #1

declare dso_local i64 @mwlGetCalTable(%struct.mwl_hal_priv*, i32, i32) #1

declare dso_local i32 @get2Ghz(i32*, i32*, i32) #1

declare dso_local i32 @get5Ghz(i32*, i32*, i32) #1

declare dso_local i32 @MWL_HAL_UNLOCK(%struct.mwl_hal_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
