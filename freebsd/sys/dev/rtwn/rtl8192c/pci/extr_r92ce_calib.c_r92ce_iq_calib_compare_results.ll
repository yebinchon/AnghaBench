; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_calib.c_r92ce_iq_calib_compare_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_calib.c_r92ce_iq_calib_compare_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@RTWN_IQ_CAL_MAX_TOLERANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, [2 x i32]*, [2 x i32]*, [2 x i32]*, [2 x i32]*)* @r92ce_iq_calib_compare_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r92ce_iq_calib_compare_results(%struct.rtwn_softc* %0, [2 x i32]* %1, [2 x i32]* %2, [2 x i32]* %3, [2 x i32]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtwn_softc*, align 8
  %8 = alloca [2 x i32]*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca [2 x i32]*, align 8
  %11 = alloca [2 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %7, align 8
  store [2 x i32]* %1, [2 x i32]** %8, align 8
  store [2 x i32]* %2, [2 x i32]** %9, align 8
  store [2 x i32]* %3, [2 x i32]** %10, align 8
  store [2 x i32]* %4, [2 x i32]** %11, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %124, %5
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %120, %26
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %123

30:                                               ; preds = %27
  %31 = load [2 x i32]*, [2 x i32]** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 %33
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %70, label %40

40:                                               ; preds = %30
  %41 = load [2 x i32]*, [2 x i32]** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 %43
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %70, label %50

50:                                               ; preds = %40
  %51 = load [2 x i32]*, [2 x i32]** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 %53
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = load [2 x i32]*, [2 x i32]** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 %63
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %60, %50, %40, %30
  br label %120

71:                                               ; preds = %60
  %72 = load [2 x i32]*, [2 x i32]** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 %74
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load [2 x i32]*, [2 x i32]** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 %82
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %79, %87
  %89 = call i64 @abs(i32 %88)
  %90 = load i64, i64* @RTWN_IQ_CAL_MAX_TOLERANCE, align 8
  %91 = icmp sle i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load [2 x i32]*, [2 x i32]** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i64 %98
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load [2 x i32]*, [2 x i32]** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 %106
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %103, %111
  %113 = call i64 @abs(i32 %112)
  %114 = load i64, i64* @RTWN_IQ_CAL_MAX_TOLERANCE, align 8
  %115 = icmp sle i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %118
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %71, %70
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %27

123:                                              ; preds = %27
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %20

127:                                              ; preds = %20
  %128 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %129 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %132
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %144, %140, %136, %132
  %149 = phi i1 [ false, %140 ], [ false, %136 ], [ false, %132 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %6, align 4
  br label %162

151:                                              ; preds = %127
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i1 [ false, %151 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %159, %148
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
