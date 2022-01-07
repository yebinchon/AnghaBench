; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_compare.c_fpu_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_compare.c_fpu_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32, %struct.fpn, %struct.fpn, %struct.fpn }
%struct.fpn = type { i64, i64 }

@FPSCR_FU = common dso_local global i32 0, align 4
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@FPSCR_VE = common dso_local global i32 0, align 4
@FPSCR_VXVC = common dso_local global i32 0, align 4
@FPSCR_FE = common dso_local global i32 0, align 4
@FPSCR_FL = common dso_local global i32 0, align 4
@FPSCR_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_compare(%struct.fpemu* %0, i32 %1) #0 {
  %3 = alloca %struct.fpemu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca %struct.fpn*, align 8
  %8 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %10 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %9, i32 0, i32 4
  store %struct.fpn* %10, %struct.fpn** %5, align 8
  %11 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %12 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %11, i32 0, i32 3
  store %struct.fpn* %12, %struct.fpn** %6, align 8
  %13 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %14 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %13, i32 0, i32 2
  store %struct.fpn* %14, %struct.fpn** %7, align 8
  %15 = load %struct.fpn*, %struct.fpn** %5, align 8
  %16 = call i64 @ISNAN(%struct.fpn* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.fpn*, %struct.fpn** %6, align 8
  %20 = call i64 @ISNAN(%struct.fpn* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @FPSCR_FU, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fpn*, %struct.fpn** %5, align 8
  %25 = call i64 @ISSNAN(%struct.fpn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.fpn*, %struct.fpn** %6, align 8
  %29 = call i64 @ISSNAN(%struct.fpn* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @FPSCR_VXSNAN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %40 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FPSCR_VE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.fpn*, %struct.fpn** %5, align 8
  %47 = call i64 @ISQNAN(%struct.fpn* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.fpn*, %struct.fpn** %6, align 8
  %51 = call i64 @ISQNAN(%struct.fpn* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45, %38
  %54 = load i32, i32* @FPSCR_VXVC, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %35
  br label %169

59:                                               ; preds = %18
  %60 = load %struct.fpn*, %struct.fpn** %5, align 8
  %61 = call i64 @ISZERO(%struct.fpn* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.fpn*, %struct.fpn** %6, align 8
  %65 = call i64 @ISZERO(%struct.fpn* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @FPSCR_FE, align 4
  store i32 %68, i32* %8, align 4
  br label %169

69:                                               ; preds = %63, %59
  %70 = load %struct.fpn*, %struct.fpn** %5, align 8
  %71 = getelementptr inbounds %struct.fpn, %struct.fpn* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.fpn*, %struct.fpn** %6, align 8
  %76 = getelementptr inbounds %struct.fpn, %struct.fpn* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @FPSCR_FL, align 4
  store i32 %80, i32* %8, align 4
  br label %169

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %69
  %83 = load %struct.fpn*, %struct.fpn** %6, align 8
  %84 = getelementptr inbounds %struct.fpn, %struct.fpn* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @FPSCR_FG, align 4
  store i32 %88, i32* %8, align 4
  br label %169

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81
  %91 = load %struct.fpn*, %struct.fpn** %5, align 8
  %92 = getelementptr inbounds %struct.fpn, %struct.fpn* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.fpn*, %struct.fpn** %6, align 8
  %95 = getelementptr inbounds %struct.fpn, %struct.fpn* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %90
  %99 = load %struct.fpn*, %struct.fpn** %5, align 8
  %100 = getelementptr inbounds %struct.fpn, %struct.fpn* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i32, i32* @FPSCR_FL, align 4
  %105 = load i32, i32* @FPSCR_FL, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @FPSCR_FG, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @FPSCR_FL, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  br label %115

113:                                              ; preds = %98
  %114 = load i32, i32* @FPSCR_FL, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %8, align 4
  br label %169

117:                                              ; preds = %90
  %118 = load %struct.fpn*, %struct.fpn** %5, align 8
  %119 = getelementptr inbounds %struct.fpn, %struct.fpn* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.fpn*, %struct.fpn** %6, align 8
  %122 = getelementptr inbounds %struct.fpn, %struct.fpn* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %117
  %126 = load %struct.fpn*, %struct.fpn** %5, align 8
  %127 = getelementptr inbounds %struct.fpn, %struct.fpn* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load i32, i32* @FPSCR_FG, align 4
  %132 = load i32, i32* @FPSCR_FL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @FPSCR_FG, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @FPSCR_FL, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  br label %142

140:                                              ; preds = %125
  %141 = load i32, i32* @FPSCR_FG, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %8, align 4
  br label %169

144:                                              ; preds = %117
  %145 = load %struct.fpn*, %struct.fpn** %5, align 8
  %146 = call i64 @ISINF(%struct.fpn* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @FPSCR_FE, align 4
  store i32 %149, i32* %8, align 4
  br label %169

150:                                              ; preds = %144
  %151 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %152 = call i32 @fpu_sub(%struct.fpemu* %151)
  %153 = load %struct.fpn*, %struct.fpn** %7, align 8
  %154 = call i64 @ISZERO(%struct.fpn* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @FPSCR_FE, align 4
  store i32 %157, i32* %8, align 4
  br label %168

158:                                              ; preds = %150
  %159 = load %struct.fpn*, %struct.fpn** %7, align 8
  %160 = getelementptr inbounds %struct.fpn, %struct.fpn* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @FPSCR_FL, align 4
  store i32 %164, i32* %8, align 4
  br label %167

165:                                              ; preds = %158
  %166 = load i32, i32* @FPSCR_FG, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %163
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168, %148, %142, %115, %87, %79, %67, %58
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %172 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  ret void
}

declare dso_local i64 @ISNAN(%struct.fpn*) #1

declare dso_local i64 @ISSNAN(%struct.fpn*) #1

declare dso_local i64 @ISQNAN(%struct.fpn*) #1

declare dso_local i64 @ISZERO(%struct.fpn*) #1

declare dso_local i64 @ISINF(%struct.fpn*) #1

declare dso_local i32 @fpu_sub(%struct.fpemu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
