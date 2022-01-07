; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_vpd.h_ocs_find_vpd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_vpd.h_ocs_find_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i64, i32 }

@VPD_SMALL_RESOURCE_TYPE_END_TAG = common dso_local global i32 0, align 4
@VPD_LARGE_RESOURCE_TYPE_R_TAG = common dso_local global i32 0, align 4
@VPD_LARGE_RESOURCE_TYPE_W_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"checksum error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*)* @ocs_find_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ocs_find_vpd(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %138, %3
  %36 = call i32 @vpddone(%struct.TYPE_5__* %8)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @VPD_SMALL_RESOURCE_TYPE_END_TAG, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %139

45:                                               ; preds = %39
  %46 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %46, i32* %13, align 4
  %47 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = shl i32 %49, 8
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @VPD_LARGE_RESOURCE_TYPE_R_TAG, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @VPD_LARGE_RESOURCE_TYPE_W_TAG, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %126, %59
  %61 = load i32, i32* %15, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %60
  %64 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %64, i32* %17, align 4
  %65 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %65, i32* %18, align 4
  %66 = call i32* @vpdref(%struct.TYPE_5__* %8)
  store i32* %66, i32** %20, align 8
  %67 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, 3
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32*, i32** %20, align 8
  store i32* %80, i32** %9, align 8
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %87, %79
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %81

90:                                               ; preds = %81
  br label %126

91:                                               ; preds = %75, %63
  %92 = load i32, i32* %17, align 4
  %93 = icmp eq i32 82, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load i32, i32* %18, align 4
  %96 = icmp eq i32 86, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %104, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %98

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @ocs_log_test(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %141

113:                                              ; preds = %107
  br label %125

114:                                              ; preds = %94, %91
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %121, %114
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  br label %121

121:                                              ; preds = %119
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %115

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %90
  br label %60

127:                                              ; preds = %60
  br label %128

128:                                              ; preds = %127, %55
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %135, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = call i32 @vpdnext(%struct.TYPE_5__* %8)
  br label %135

135:                                              ; preds = %133
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %129

138:                                              ; preds = %129
  br label %35

139:                                              ; preds = %44, %35
  %140 = load i32*, i32** %9, align 8
  store i32* %140, i32** %4, align 8
  br label %141

141:                                              ; preds = %139, %111
  %142 = load i32*, i32** %4, align 8
  ret i32* %142
}

declare dso_local i32 @vpddone(%struct.TYPE_5__*) #1

declare dso_local i32 @vpdnext(%struct.TYPE_5__*) #1

declare dso_local i32* @vpdref(%struct.TYPE_5__*) #1

declare dso_local i32 @ocs_log_test(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
