; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_write_pba_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_write_pba_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_pba = type { i64*, i32* }

@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_PBANUM0_PTR = common dso_local global i64 0, align 8
@IXGBE_PBANUM1_PTR = common dso_local global i64 0, align 8
@IXGBE_PBANUM_PTR_GUARD = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_write_pba_raw(%struct.ixgbe_hw* %0, i64* %1, i64 %2, %struct.ixgbe_pba* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_pba*, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ixgbe_pba* %3, %struct.ixgbe_pba** %9, align 8
  %11 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %12 = icmp eq %struct.ixgbe_pba* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %14, i64* %5, align 8
  br label %148

15:                                               ; preds = %4
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.0*
  %26 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %27 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %28 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = bitcast i64* %30 to i32*
  %32 = call i64 %23(%struct.ixgbe_hw.0* %25, i64 %26, i32 2, i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %5, align 8
  br label %148

37:                                               ; preds = %18
  br label %62

38:                                               ; preds = %15
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %44 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %52 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %58, align 8
  br label %61

59:                                               ; preds = %38
  %60 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %60, i64* %5, align 8
  br label %148

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %64 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IXGBE_PBANUM_PTR_GUARD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %146

70:                                               ; preds = %62
  %71 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %72 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %76, i64* %5, align 8
  br label %148

77:                                               ; preds = %70
  %78 = load i64*, i64** %7, align 8
  %79 = icmp eq i64* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %84, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %87 = bitcast %struct.ixgbe_hw* %86 to %struct.ixgbe_hw.0*
  %88 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %89 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %94 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %99 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 %85(%struct.ixgbe_hw.0* %87, i64 %92, i32 %97, i32* %100)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %80
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %5, align 8
  br label %148

106:                                              ; preds = %80
  br label %145

107:                                              ; preds = %77
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %110 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %115 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %113, %119
  %121 = icmp ugt i64 %108, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %107
  %123 = load i64*, i64** %7, align 8
  %124 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %125 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %123, i64 %128
  %130 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %131 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %9, align 8
  %134 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memcpy(i64* %129, i32* %132, i32 %140)
  br label %144

142:                                              ; preds = %107
  %143 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %143, i64* %5, align 8
  br label %148

144:                                              ; preds = %122
  br label %145

145:                                              ; preds = %144, %106
  br label %146

146:                                              ; preds = %145, %62
  %147 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %147, i64* %5, align 8
  br label %148

148:                                              ; preds = %146, %142, %104, %75, %59, %35, %13
  %149 = load i64, i64* %5, align 8
  ret i64 %149
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
