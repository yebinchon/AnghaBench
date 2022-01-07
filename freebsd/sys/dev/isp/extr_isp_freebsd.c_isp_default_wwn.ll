; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_default_wwn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_default_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.isp_fc = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_default_wwn(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.isp_fc*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_6__* %12, i32 %13)
  store %struct.isp_fc* %14, %struct.isp_fc** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %19 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.isp_fc*, %struct.isp_fc** %11, align 8
  %23 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %137

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.TYPE_7__* @FCPARAM(%struct.TYPE_6__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %49

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.TYPE_7__* @FCPARAM(%struct.TYPE_6__* %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %42, %37 ], [ %48, %43 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %137

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_6__* %63, i32 0)
  %65 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_6__* %68, i32 0)
  %70 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %66, %62 ], [ %71, %67 ]
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = call %struct.TYPE_7__* @FCPARAM(%struct.TYPE_6__* %80, i32 0)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %89

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = call %struct.TYPE_7__* @FCPARAM(%struct.TYPE_6__* %85, i32 0)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i32 [ %83, %79 ], [ %88, %84 ]
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %72
  br label %92

92:                                               ; preds = %91, %56
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_get_unit(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = add i64 4611686020558094336, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = xor i64 %107, 72057594037927936
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %105, %95
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = xor i64 %119, 72057594037927936
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = and i32 %123, 15
  %125 = shl i32 %124, 56
  %126 = load i32, i32* %10, align 4
  %127 = xor i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  %130 = ashr i32 %129, 4
  %131 = and i32 %130, 15
  %132 = shl i32 %131, 52
  %133 = load i32, i32* %10, align 4
  %134 = xor i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %117, %114, %111
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %53, %29
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_7__* @FCPARAM(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
