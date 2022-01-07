; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_pba = type { i32*, i32* }

@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@IXGBE_PBANUM0_PTR = common dso_local global i64 0, align 8
@IXGBE_PBANUM1_PTR = common dso_local global i64 0, align 8
@IXGBE_PBANUM_PTR_GUARD = common dso_local global i64 0, align 8
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_pba_raw(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i32 %3, %struct.ixgbe_pba* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_pba*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ixgbe_pba* %4, %struct.ixgbe_pba** %11, align 8
  %14 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %15 = icmp eq %struct.ixgbe_pba* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %17, i64* %6, align 8
  br label %156

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.0*
  %29 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %30 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %31 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 %26(%struct.ixgbe_hw.0* %28, i64 %29, i32 2, i32* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %6, align 8
  br label %156

39:                                               ; preds = %21
  br label %64

40:                                               ; preds = %18
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* @IXGBE_PBANUM0_PTR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %50 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* @IXGBE_PBANUM1_PTR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %58 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  br label %63

61:                                               ; preds = %40
  %62 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %62, i64* %6, align 8
  br label %156

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %66 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @IXGBE_PBANUM_PTR_GUARD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %154

73:                                               ; preds = %64
  %74 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %75 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %79, i64* %6, align 8
  br label %156

80:                                               ; preds = %73
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @ixgbe_get_pba_block_size(%struct.ixgbe_hw* %81, i32* %82, i64 %83, i32* %13)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %6, align 8
  br label %156

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %94, i64* %6, align 8
  br label %156

95:                                               ; preds = %89
  %96 = load i32*, i32** %8, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.0*
  %106 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %107 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %114 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 %103(%struct.ixgbe_hw.0* %105, i64 %111, i32 %112, i32* %115)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %98
  %120 = load i64, i64* %12, align 8
  store i64 %120, i64* %6, align 8
  br label %156

121:                                              ; preds = %98
  br label %153

122:                                              ; preds = %95
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %125 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = icmp ugt i64 %123, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %122
  %134 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %135 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.ixgbe_pba*, %struct.ixgbe_pba** %11, align 8
  %139 = getelementptr inbounds %struct.ixgbe_pba, %struct.ixgbe_pba* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32 @memcpy(i32* %136, i32* %144, i32 %148)
  br label %152

150:                                              ; preds = %122
  %151 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %151, i64* %6, align 8
  br label %156

152:                                              ; preds = %133
  br label %153

153:                                              ; preds = %152, %121
  br label %154

154:                                              ; preds = %153, %64
  %155 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %154, %150, %119, %93, %87, %78, %61, %37, %16
  %157 = load i64, i64* %6, align 8
  ret i64 %157
}

declare dso_local i64 @ixgbe_get_pba_block_size(%struct.ixgbe_hw*, i32*, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
