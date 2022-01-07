; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_subr.c_fpu_norm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_subr.c_fpu_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i32, i32*, i32 }

@FPC_ZERO = common dso_local global i32 0, align 4
@FP_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_norm(%struct.fpn* %0) #0 {
  %2 = alloca %struct.fpn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fpn* %0, %struct.fpn** %2, align 8
  %13 = load %struct.fpn*, %struct.fpn** %2, align 8
  %14 = getelementptr inbounds %struct.fpn, %struct.fpn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.fpn*, %struct.fpn** %2, align 8
  %17 = getelementptr inbounds %struct.fpn, %struct.fpn* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.fpn*, %struct.fpn** %2, align 8
  %22 = getelementptr inbounds %struct.fpn, %struct.fpn* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.fpn*, %struct.fpn** %2, align 8
  %27 = getelementptr inbounds %struct.fpn, %struct.fpn* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fpn*, %struct.fpn** %2, align 8
  %32 = getelementptr inbounds %struct.fpn, %struct.fpn* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %45, 32
  store i32 %46, i32* %12, align 4
  br label %68

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 64
  store i32 %54, i32* %12, align 4
  br label %67

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 96
  store i32 %61, i32* %12, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @FPC_ZERO, align 4
  %64 = load %struct.fpn*, %struct.fpn** %2, align 8
  %65 = getelementptr inbounds %struct.fpn, %struct.fpn* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %183

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %1
  %70 = load i32, i32* @FP_1, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  %77 = load i32, i32* %3, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %86, %76
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %79

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 32, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %95, %96
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %100, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %108, %109
  %111 = or i32 %107, %110
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %159

113:                                              ; preds = %69
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  store i32 1, i32* %10, align 4
  %118 = load i32, i32* %3, align 4
  %119 = shl i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %127, %117
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = shl i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %120

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 32, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %11, align 4
  %139 = ashr i32 %137, %138
  %140 = or i32 %136, %139
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %10, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %11, align 4
  %146 = ashr i32 %144, %145
  %147 = or i32 %143, %146
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %10, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %11, align 4
  %153 = ashr i32 %151, %152
  %154 = or i32 %150, %153
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %6, align 4
  %157 = shl i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %130, %113
  br label %159

159:                                              ; preds = %158, %89
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.fpn*, %struct.fpn** %2, align 8
  %162 = getelementptr inbounds %struct.fpn, %struct.fpn* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.fpn*, %struct.fpn** %2, align 8
  %165 = getelementptr inbounds %struct.fpn, %struct.fpn* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.fpn*, %struct.fpn** %2, align 8
  %170 = getelementptr inbounds %struct.fpn, %struct.fpn* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.fpn*, %struct.fpn** %2, align 8
  %175 = getelementptr inbounds %struct.fpn, %struct.fpn* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.fpn*, %struct.fpn** %2, align 8
  %180 = getelementptr inbounds %struct.fpn, %struct.fpn* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %159, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
