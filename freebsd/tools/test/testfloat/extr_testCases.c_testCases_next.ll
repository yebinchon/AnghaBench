; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_testCases_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_testCases_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }

@level = common dso_local global i32 0, align 4
@sequenceType = common dso_local global i32 0, align 4
@subcase = common dso_local global i32 0, align 4
@testCases_a_int32 = common dso_local global i32 0, align 4
@sequenceA = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@testCases_done = common dso_local global i32 0, align 4
@testCases_a_float32 = common dso_local global i8* null, align 8
@sequenceB = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@FALSE = common dso_local global i8* null, align 8
@current_a_float32 = common dso_local global i8* null, align 8
@current_b_float32 = common dso_local global i8* null, align 8
@testCases_b_float32 = common dso_local global i8* null, align 8
@testCases_a_float64 = common dso_local global i8* null, align 8
@current_a_float64 = common dso_local global i8* null, align 8
@current_b_float64 = common dso_local global i8* null, align 8
@testCases_b_float64 = common dso_local global i8* null, align 8
@current_a_float128 = common dso_local global i8* null, align 8
@current_a_floatx80 = common dso_local global i8* null, align 8
@current_b_float128 = common dso_local global i8* null, align 8
@current_b_floatx80 = common dso_local global i8* null, align 8
@testCases_a_float128 = common dso_local global i8* null, align 8
@testCases_a_floatx80 = common dso_local global i8* null, align 8
@testCases_a_int64 = common dso_local global i32 0, align 4
@testCases_b_float128 = common dso_local global i8* null, align 8
@testCases_b_floatx80 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testCases_next() #0 {
  %1 = load i32, i32* @level, align 4
  switch i32 %1, label %173 [
    i32 1, label %2
    i32 2, label %95
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @sequenceType, align 4
  switch i32 %3, label %94 [
    i32 133, label %4
    i32 136, label %16
    i32 130, label %26
    i32 135, label %55
    i32 129, label %65
  ]

4:                                                ; preds = %2
  %5 = load i32, i32* @subcase, align 4
  switch i32 %5, label %13 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
  ]

6:                                                ; preds = %4
  %7 = call i32 (...) @int32RandomP3()
  store i32 %7, i32* @testCases_a_int32, align 4
  br label %13

8:                                                ; preds = %4
  %9 = call i32 (...) @int32RandomPInf()
  store i32 %9, i32* @testCases_a_int32, align 4
  br label %13

10:                                               ; preds = %4
  %11 = call i32 @int32NextP1(%struct.TYPE_23__* @sequenceA)
  store i32 %11, i32* @testCases_a_int32, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %12, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %13

13:                                               ; preds = %4, %10, %8, %6
  %14 = load i32, i32* @subcase, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @subcase, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load i32, i32* @subcase, align 4
  switch i32 %17, label %23 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %20
  ]

18:                                               ; preds = %16, %16
  %19 = call i8* (...) @float32Random()
  store i8* %19, i8** @testCases_a_float32, align 8
  br label %23

20:                                               ; preds = %16
  %21 = call i8* @float32NextQOutP1(%struct.TYPE_23__* @sequenceA)
  store i8* %21, i8** @testCases_a_float32, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %22, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %23

23:                                               ; preds = %16, %20, %18
  %24 = load i32, i32* @subcase, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @subcase, align 4
  br label %94

26:                                               ; preds = %2
  %27 = load i32, i32* @subcase, align 4
  switch i32 %27, label %52 [
    i32 0, label %28
    i32 2, label %37
    i32 4, label %37
    i32 1, label %40
    i32 3, label %43
    i32 5, label %46
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** @FALSE, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %34 = call i8* @float32NextQInP1(%struct.TYPE_23__* @sequenceA)
  store i8* %34, i8** @current_a_float32, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = call i8* @float32NextQInP1(%struct.TYPE_23__* @sequenceB)
  store i8* %36, i8** @current_b_float32, align 8
  br label %37

37:                                               ; preds = %26, %26, %35
  %38 = call i8* (...) @float32Random()
  store i8* %38, i8** @testCases_a_float32, align 8
  %39 = call i8* (...) @float32Random()
  store i8* %39, i8** @testCases_b_float32, align 8
  br label %52

40:                                               ; preds = %26
  %41 = load i8*, i8** @current_a_float32, align 8
  store i8* %41, i8** @testCases_a_float32, align 8
  %42 = call i8* (...) @float32Random()
  store i8* %42, i8** @testCases_b_float32, align 8
  br label %52

43:                                               ; preds = %26
  %44 = call i8* (...) @float32Random()
  store i8* %44, i8** @testCases_a_float32, align 8
  %45 = load i8*, i8** @current_b_float32, align 8
  store i8* %45, i8** @testCases_b_float32, align 8
  br label %52

46:                                               ; preds = %26
  %47 = load i8*, i8** @current_a_float32, align 8
  store i8* %47, i8** @testCases_a_float32, align 8
  %48 = load i8*, i8** @current_b_float32, align 8
  store i8* %48, i8** @testCases_b_float32, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %52

52:                                               ; preds = %26, %46, %43, %40, %37
  %53 = load i32, i32* @subcase, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @subcase, align 4
  br label %94

55:                                               ; preds = %2
  %56 = load i32, i32* @subcase, align 4
  switch i32 %56, label %62 [
    i32 0, label %57
    i32 1, label %57
    i32 2, label %59
  ]

57:                                               ; preds = %55, %55
  %58 = call i8* (...) @float64Random()
  store i8* %58, i8** @testCases_a_float64, align 8
  br label %62

59:                                               ; preds = %55
  %60 = call i8* @float64NextQOutP1(%struct.TYPE_23__* @sequenceA)
  store i8* %60, i8** @testCases_a_float64, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %61, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %62

62:                                               ; preds = %55, %59, %57
  %63 = load i32, i32* @subcase, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @subcase, align 4
  br label %94

65:                                               ; preds = %2
  %66 = load i32, i32* @subcase, align 4
  switch i32 %66, label %91 [
    i32 0, label %67
    i32 2, label %76
    i32 4, label %76
    i32 1, label %79
    i32 3, label %82
    i32 5, label %85
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** @FALSE, align 8
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %73 = call i8* @float64NextQInP1(%struct.TYPE_23__* @sequenceA)
  store i8* %73, i8** @current_a_float64, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = call i8* @float64NextQInP1(%struct.TYPE_23__* @sequenceB)
  store i8* %75, i8** @current_b_float64, align 8
  br label %76

76:                                               ; preds = %65, %65, %74
  %77 = call i8* (...) @float64Random()
  store i8* %77, i8** @testCases_a_float64, align 8
  %78 = call i8* (...) @float64Random()
  store i8* %78, i8** @testCases_b_float64, align 8
  br label %91

79:                                               ; preds = %65
  %80 = load i8*, i8** @current_a_float64, align 8
  store i8* %80, i8** @testCases_a_float64, align 8
  %81 = call i8* (...) @float64Random()
  store i8* %81, i8** @testCases_b_float64, align 8
  br label %91

82:                                               ; preds = %65
  %83 = call i8* (...) @float64Random()
  store i8* %83, i8** @testCases_a_float64, align 8
  %84 = load i8*, i8** @current_b_float64, align 8
  store i8* %84, i8** @testCases_b_float64, align 8
  br label %91

85:                                               ; preds = %65
  %86 = load i8*, i8** @current_a_float64, align 8
  store i8* %86, i8** @testCases_a_float64, align 8
  %87 = load i8*, i8** @current_b_float64, align 8
  store i8* %87, i8** @testCases_b_float64, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %91

91:                                               ; preds = %65, %85, %82, %79, %76
  %92 = load i32, i32* @subcase, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @subcase, align 4
  br label %94

94:                                               ; preds = %2, %91, %62, %52, %23, %13
  br label %173

95:                                               ; preds = %0
  %96 = load i32, i32* @sequenceType, align 4
  switch i32 %96, label %172 [
    i32 133, label %97
    i32 136, label %110
    i32 130, label %120
    i32 135, label %141
    i32 129, label %151
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @subcase, align 4
  switch i32 %98, label %107 [
    i32 0, label %99
    i32 2, label %101
    i32 3, label %103
    i32 1, label %104
  ]

99:                                               ; preds = %97
  %100 = call i32 (...) @int32RandomP3()
  store i32 %100, i32* @testCases_a_int32, align 4
  br label %107

101:                                              ; preds = %97
  %102 = call i32 (...) @int32RandomPInf()
  store i32 %102, i32* @testCases_a_int32, align 4
  br label %107

103:                                              ; preds = %97
  store i32 -1, i32* @subcase, align 4
  br label %104

104:                                              ; preds = %97, %103
  %105 = call i32 @int32NextP2(%struct.TYPE_23__* @sequenceA)
  store i32 %105, i32* @testCases_a_int32, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %106, i32* @testCases_done, align 4
  br label %107

107:                                              ; preds = %97, %104, %101, %99
  %108 = load i32, i32* @subcase, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @subcase, align 4
  br label %172

110:                                              ; preds = %95
  %111 = load i32, i32* @subcase, align 4
  switch i32 %111, label %117 [
    i32 0, label %112
    i32 1, label %114
  ]

112:                                              ; preds = %110
  %113 = call i8* (...) @float32Random()
  store i8* %113, i8** @testCases_a_float32, align 8
  br label %117

114:                                              ; preds = %110
  %115 = call i8* @float32NextQOutP2(%struct.TYPE_23__* @sequenceA)
  store i8* %115, i8** @testCases_a_float32, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %116, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %117

117:                                              ; preds = %110, %114, %112
  %118 = load i32, i32* @subcase, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @subcase, align 4
  br label %172

120:                                              ; preds = %95
  %121 = load i32, i32* @subcase, align 4
  switch i32 %121, label %138 [
    i32 0, label %122
    i32 1, label %125
  ]

122:                                              ; preds = %120
  %123 = call i8* (...) @float32Random()
  store i8* %123, i8** @testCases_a_float32, align 8
  %124 = call i8* (...) @float32Random()
  store i8* %124, i8** @testCases_b_float32, align 8
  br label %138

125:                                              ; preds = %120
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i8*, i8** @FALSE, align 8
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %131 = call i8* @float32NextQInP2(%struct.TYPE_23__* @sequenceA)
  store i8* %131, i8** @current_a_float32, align 8
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i8*, i8** @current_a_float32, align 8
  store i8* %133, i8** @testCases_a_float32, align 8
  %134 = call i8* @float32NextQInP2(%struct.TYPE_23__* @sequenceB)
  store i8* %134, i8** @testCases_b_float32, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %137 = and i32 %135, %136
  store i32 %137, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %138

138:                                              ; preds = %120, %132, %122
  %139 = load i32, i32* @subcase, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @subcase, align 4
  br label %172

141:                                              ; preds = %95
  %142 = load i32, i32* @subcase, align 4
  switch i32 %142, label %148 [
    i32 0, label %143
    i32 1, label %145
  ]

143:                                              ; preds = %141
  %144 = call i8* (...) @float64Random()
  store i8* %144, i8** @testCases_a_float64, align 8
  br label %148

145:                                              ; preds = %141
  %146 = call i8* @float64NextQOutP2(%struct.TYPE_23__* @sequenceA)
  store i8* %146, i8** @testCases_a_float64, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  store i32 %147, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %148

148:                                              ; preds = %141, %145, %143
  %149 = load i32, i32* @subcase, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @subcase, align 4
  br label %172

151:                                              ; preds = %95
  %152 = load i32, i32* @subcase, align 4
  switch i32 %152, label %169 [
    i32 0, label %153
    i32 1, label %156
  ]

153:                                              ; preds = %151
  %154 = call i8* (...) @float64Random()
  store i8* %154, i8** @testCases_a_float64, align 8
  %155 = call i8* (...) @float64Random()
  store i8* %155, i8** @testCases_b_float64, align 8
  br label %169

156:                                              ; preds = %151
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i8*, i8** @FALSE, align 8
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %162 = call i8* @float64NextQInP2(%struct.TYPE_23__* @sequenceA)
  store i8* %162, i8** @current_a_float64, align 8
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i8*, i8** @current_a_float64, align 8
  store i8* %164, i8** @testCases_a_float64, align 8
  %165 = call i8* @float64NextQInP2(%struct.TYPE_23__* @sequenceB)
  store i8* %165, i8** @testCases_b_float64, align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceA, i32 0, i32 0), align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sequenceB, i32 0, i32 0), align 4
  %168 = and i32 %166, %167
  store i32 %168, i32* @testCases_done, align 4
  store i32 -1, i32* @subcase, align 4
  br label %169

169:                                              ; preds = %151, %163, %153
  %170 = load i32, i32* @subcase, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @subcase, align 4
  br label %172

172:                                              ; preds = %95, %169, %148, %138, %117, %107
  br label %173

173:                                              ; preds = %0, %172, %94
  ret void
}

declare dso_local i32 @int32RandomP3(...) #1

declare dso_local i32 @int32RandomPInf(...) #1

declare dso_local i32 @int32NextP1(%struct.TYPE_23__*) #1

declare dso_local i8* @float32Random(...) #1

declare dso_local i8* @float32NextQOutP1(%struct.TYPE_23__*) #1

declare dso_local i8* @float32NextQInP1(%struct.TYPE_23__*) #1

declare dso_local i8* @float64Random(...) #1

declare dso_local i8* @float64NextQOutP1(%struct.TYPE_23__*) #1

declare dso_local i8* @float64NextQInP1(%struct.TYPE_23__*) #1

declare dso_local i32 @int32NextP2(%struct.TYPE_23__*) #1

declare dso_local i8* @float32NextQOutP2(%struct.TYPE_23__*) #1

declare dso_local i8* @float32NextQInP2(%struct.TYPE_23__*) #1

declare dso_local i8* @float64NextQOutP2(%struct.TYPE_23__*) #1

declare dso_local i8* @float64NextQInP2(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
