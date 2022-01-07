; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l138.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l138.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @l138 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l138(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %16

15:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %138

16:                                               ; preds = %14
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %103

22:                                               ; preds = %16
  store i64 -2, i64* %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  br label %26

26:                                               ; preds = %35, %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 4
  %32 = icmp ult %struct.TYPE_7__* %27, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %65

34:                                               ; preds = %26
  br label %38

35:                                               ; preds = %64
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 1
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %4, align 8
  br label %26

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %48, %43
  br label %64

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %5, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %57, %56
  br label %35

65:                                               ; preds = %33
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %102

71:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %77, %71
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %101

76:                                               ; preds = %72
  br label %80

77:                                               ; preds = %100
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %72

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %81, %83
  %85 = and i64 %84, 1
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @l198(%struct.TYPE_7__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87, %80
  br label %100

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %93, %92
  br label %77

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101, %70
  br label %137

103:                                              ; preds = %21
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %131

109:                                              ; preds = %103
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %120, %126
  br label %129

128:                                              ; preds = %109
  br label %129

129:                                              ; preds = %128, %114
  %130 = phi i64 [ %127, %114 ], [ 0, %128 ]
  store i64 %130, i64* %5, align 8
  br label %136

131:                                              ; preds = %108
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = xor i64 %134, -1
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %131, %129
  br label %137

137:                                              ; preds = %136, %102
  br label %138

138:                                              ; preds = %137, %15
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = load i64, i64* %5, align 8
  %141 = and i64 %140, 254
  %142 = trunc i64 %141 to i8
  %143 = call i32 @i(%struct.TYPE_7__* %139, i32 38, i8 zeroext %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = load i64, i64* %5, align 8
  %146 = lshr i64 %145, 8
  %147 = trunc i64 %146 to i8
  %148 = call i32 @i(%struct.TYPE_7__* %144, i32 39, i8 zeroext %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = load i64, i64* %5, align 8
  %151 = lshr i64 %150, 16
  %152 = trunc i64 %151 to i8
  %153 = call i32 @i(%struct.TYPE_7__* %149, i32 40, i8 zeroext %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = load i64, i64* %5, align 8
  %156 = lshr i64 %155, 24
  %157 = trunc i64 %156 to i8
  %158 = call i32 @i(%struct.TYPE_7__* %154, i32 41, i8 zeroext %157)
  ret void
}

declare dso_local i64 @l198(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @i(%struct.TYPE_7__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
