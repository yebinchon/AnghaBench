; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spicds_info = type { i64, i32, i32 (i32, i32, i32, i32)*, i64, i32 }

@SPICDS_TYPE_WM8770 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4381 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4396 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spicds_info*, i32, i32)* @spicds_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spicds_wrcd(%struct.spicds_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spicds_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spicds_info* %0, %struct.spicds_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %9 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %14 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %13, i32 0, i32 2
  %15 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %14, align 8
  %16 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %17 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18, i32 1, i32 1, i32 0)
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %22 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %21, i32 0, i32 2
  %23 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %22, align 8
  %24 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %25 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26, i32 0, i32 1, i32 0)
  br label %28

28:                                               ; preds = %20, %12
  %29 = call i32 @DELAY(i32 1)
  %30 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %31 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPICDS_TYPE_WM8770, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %28
  %36 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %37 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPICDS_TYPE_AK4381, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %43 = call i32 @spicds_wrbit(%struct.spicds_info* %42, i32 0)
  %44 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %45 = call i32 @spicds_wrbit(%struct.spicds_info* %44, i32 1)
  br label %63

46:                                               ; preds = %35
  %47 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %48 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPICDS_TYPE_AK4396, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %54 = call i32 @spicds_wrbit(%struct.spicds_info* %53, i32 0)
  %55 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %56 = call i32 @spicds_wrbit(%struct.spicds_info* %55, i32 0)
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %59 = call i32 @spicds_wrbit(%struct.spicds_info* %58, i32 1)
  %60 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %61 = call i32 @spicds_wrbit(%struct.spicds_info* %60, i32 0)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %65 = call i32 @spicds_wrbit(%struct.spicds_info* %64, i32 1)
  store i32 16, i32* %7, align 4
  br label %66

66:                                               ; preds = %75, %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @spicds_wrbit(%struct.spicds_info* %70, i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %66

78:                                               ; preds = %66
  store i32 128, i32* %7, align 4
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @spicds_wrbit(%struct.spicds_info* %83, i32 %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %79

91:                                               ; preds = %79
  %92 = call i32 @DELAY(i32 1)
  br label %121

93:                                               ; preds = %28
  store i32 64, i32* %7, align 4
  br label %94

94:                                               ; preds = %103, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @spicds_wrbit(%struct.spicds_info* %98, i32 %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = ashr i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %94

106:                                              ; preds = %94
  store i32 256, i32* %7, align 4
  br label %107

107:                                              ; preds = %116, %106
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @spicds_wrbit(%struct.spicds_info* %111, i32 %114)
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = ashr i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %107

119:                                              ; preds = %107
  %120 = call i32 @DELAY(i32 1)
  br label %121

121:                                              ; preds = %119, %91
  %122 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %123 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %128 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %127, i32 0, i32 2
  %129 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %128, align 8
  %130 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %131 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %129(i32 %132, i32 0, i32 1, i32 0)
  %134 = call i32 @DELAY(i32 1)
  %135 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %136 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %135, i32 0, i32 2
  %137 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %136, align 8
  %138 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %139 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %137(i32 %140, i32 1, i32 1, i32 0)
  br label %150

142:                                              ; preds = %121
  %143 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %144 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %143, i32 0, i32 2
  %145 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %144, align 8
  %146 = load %struct.spicds_info*, %struct.spicds_info** %4, align 8
  %147 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 %145(i32 %148, i32 1, i32 1, i32 0)
  br label %150

150:                                              ; preds = %142, %126
  ret void
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @spicds_wrbit(%struct.spicds_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
