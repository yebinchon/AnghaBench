; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_measure_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_measure_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_rf_lo = type { i64, i64 }
%struct.bwi_mac = type { i32 }

@bwi_rf_lo_measure_11g.rf_lo_adjust = internal constant [8 x %struct.bwi_rf_lo] [%struct.bwi_rf_lo { i64 1, i64 1 }, %struct.bwi_rf_lo { i64 1, i64 0 }, %struct.bwi_rf_lo { i64 1, i64 -1 }, %struct.bwi_rf_lo { i64 0, i64 -1 }, %struct.bwi_rf_lo { i64 -1, i64 -1 }, %struct.bwi_rf_lo { i64 -1, i64 0 }, %struct.bwi_rf_lo { i64 -1, i64 1 }, %struct.bwi_rf_lo { i64 0, i64 1 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"i %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fin %d\00", align 1
@LO_ADJUST_MAX = common dso_local global i32 0, align 4
@LO_ADJUST_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, %struct.bwi_rf_lo*, %struct.bwi_rf_lo*, i32)* @bwi_rf_lo_measure_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_lo_measure_11g(%struct.bwi_mac* %0, %struct.bwi_rf_lo* %1, %struct.bwi_rf_lo* %2, i32 %3) #0 {
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca %struct.bwi_rf_lo*, align 8
  %7 = alloca %struct.bwi_rf_lo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwi_rf_lo, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bwi_rf_lo, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bwi_rf_lo, align 8
  %18 = alloca i64, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %5, align 8
  store %struct.bwi_rf_lo* %1, %struct.bwi_rf_lo** %6, align 8
  store %struct.bwi_rf_lo* %2, %struct.bwi_rf_lo** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %6, align 8
  %20 = call i32 @bcopy(%struct.bwi_rf_lo* %19, %struct.bwi_rf_lo* %9, i32 16)
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %22 = call i32 @RF_LO_WRITE(%struct.bwi_mac* %21, %struct.bwi_rf_lo* %9)
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  store i32 12, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %148, %4
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  store i32 8, i32* %16, align 4
  br label %45

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %16, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %15, align 4
  %53 = icmp sle i32 %52, 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp sge i32 %55, 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @KASSERT(i32 %59, i8* %62)
  %64 = load i32, i32* %16, align 4
  %65 = icmp sgt i32 %64, 8
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %16, align 4
  %68 = sub nsw i32 %67, 8
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i32, i32* %16, align 4
  %71 = icmp sle i32 %70, 8
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %16, align 4
  %74 = icmp sge i32 %73, 1
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @KASSERT(i32 %77, i8* %80)
  %82 = call i32 @bcopy(%struct.bwi_rf_lo* %9, %struct.bwi_rf_lo* %14, i32 16)
  br label %83

83:                                               ; preds = %139, %75
  %84 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x %struct.bwi_rf_lo], [8 x %struct.bwi_rf_lo]* @bwi_rf_lo_measure_11g.rf_lo_adjust, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 16
  %92 = add nsw i64 %85, %91
  %93 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %17, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %14, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x %struct.bwi_rf_lo], [8 x %struct.bwi_rf_lo]* @bwi_rf_lo_measure_11g.rf_lo_adjust, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %95, %101
  %103 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %17, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %17, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @abs(i64 %105)
  %107 = icmp slt i32 %106, 9
  br i1 %107, label %108, label %127

108:                                              ; preds = %83
  %109 = getelementptr inbounds %struct.bwi_rf_lo, %struct.bwi_rf_lo* %17, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @abs(i64 %110)
  %112 = icmp slt i32 %111, 9
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %115 = call i32 @RF_LO_WRITE(%struct.bwi_mac* %114, %struct.bwi_rf_lo* %17)
  %116 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac* %116, i32 %117)
  store i64 %118, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load i64, i64* %18, align 8
  store i64 %123, i64* %10, align 8
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %13, align 4
  store i32 1, i32* %11, align 4
  %125 = call i32 @bcopy(%struct.bwi_rf_lo* %17, %struct.bwi_rf_lo* %9, i32 16)
  br label %126

126:                                              ; preds = %122, %113
  br label %127

127:                                              ; preds = %126, %108, %83
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %140

132:                                              ; preds = %127
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 8
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* %15, align 4
  br label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %136, %135
  br label %83

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %12, align 4
  %144 = icmp ne i32 %142, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i1 [ false, %141 ], [ %147, %145 ]
  br i1 %149, label %26, label %150

150:                                              ; preds = %148
  %151 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %152 = call i32 @bcopy(%struct.bwi_rf_lo* %9, %struct.bwi_rf_lo* %151, i32 16)
  ret void
}

declare dso_local i32 @bcopy(%struct.bwi_rf_lo*, %struct.bwi_rf_lo*, i32) #1

declare dso_local i32 @RF_LO_WRITE(%struct.bwi_mac*, %struct.bwi_rf_lo*) #1

declare dso_local i64 @bwi_rf_lo_devi_measure(%struct.bwi_mac*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
