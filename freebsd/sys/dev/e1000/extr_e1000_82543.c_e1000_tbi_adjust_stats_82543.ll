; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_tbi_adjust_stats_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_tbi_adjust_stats_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_hw_stats = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_tbi_adjust_stats_82543(%struct.e1000_hw* %0, %struct.e1000_hw_stats* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.e1000_hw_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store %struct.e1000_hw_stats* %1, %struct.e1000_hw_stats** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %12 = call i32 @e1000_tbi_sbp_enabled_82543(%struct.e1000_hw* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %144

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %19 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %45

35:                                               ; preds = %15
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %42 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %56

45:                                               ; preds = %35, %15
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %52 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %62 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %67 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %60, %56
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 64
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %75 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %79 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  br label %143

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 127
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %87 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %91 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %142

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %99 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %103 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  br label %141

106:                                              ; preds = %94
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 511
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %111 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %115 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  br label %140

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 1023
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %123 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %127 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 8
  br label %139

130:                                              ; preds = %118
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 1522
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %7, align 8
  %135 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %133, %130
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %109
  br label %141

141:                                              ; preds = %140, %97
  br label %142

142:                                              ; preds = %141, %85
  br label %143

143:                                              ; preds = %142, %73
  br label %144

144:                                              ; preds = %143, %14
  ret void
}

declare dso_local i32 @e1000_tbi_sbp_enabled_82543(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
