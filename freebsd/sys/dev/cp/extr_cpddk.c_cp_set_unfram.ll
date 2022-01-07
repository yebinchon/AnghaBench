; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_unfram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_unfram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_set_unfram(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  br label %170

12:                                               ; preds = %10
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, 32
  store i32 %37, i32* %35, align 8
  br label %43

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, -33
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @l(%struct.TYPE_15__* %46, i32 %49, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %43
  br label %115

59:                                               ; preds = %43
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @cp_set_dir(%struct.TYPE_16__* %60, i64 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %5, align 8
  br label %70

70:                                               ; preds = %81, %59
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 4
  %78 = icmp ult %struct.TYPE_16__* %71, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %114

80:                                               ; preds = %70
  br label %84

81:                                               ; preds = %113
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 1
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %5, align 8
  br label %70

84:                                               ; preds = %80
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 6
  br i1 %93, label %94, label %106

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = icmp ne %struct.TYPE_16__* %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %94, %89
  br label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @cp_set_dir(%struct.TYPE_16__* %108, i64 %111)
  br label %113

113:                                              ; preds = %107, %106
  br label %81

114:                                              ; preds = %79
  br label %139

115:                                              ; preds = %58
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** %5, align 8
  br label %121

121:                                              ; preds = %132, %115
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 4
  %129 = icmp ult %struct.TYPE_16__* %122, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  br label %138

131:                                              ; preds = %121
  br label %135

132:                                              ; preds = %135
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 1
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %5, align 8
  br label %121

135:                                              ; preds = %131
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = call i32 @l157(%struct.TYPE_16__* %136)
  br label %132

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = call i32 @l173(%struct.TYPE_16__* %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = call i32 @l206(%struct.TYPE_16__* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = call i32 @l162(%struct.TYPE_16__* %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %147 = call i32 @l227(%struct.TYPE_16__* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = call i32 @l225(%struct.TYPE_16__* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = call i32 @l202(%struct.TYPE_16__* %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = call i32 @l138(%struct.TYPE_16__* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cp_set_baud(%struct.TYPE_16__* %154, i32 %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %139
  br label %170

164:                                              ; preds = %139
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @cp_set_gsyn(%struct.TYPE_16__* %165, i32 %168)
  br label %170

170:                                              ; preds = %11, %164, %163
  ret void
}

declare dso_local i32 @l(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @cp_set_dir(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @l157(%struct.TYPE_16__*) #1

declare dso_local i32 @l173(%struct.TYPE_16__*) #1

declare dso_local i32 @l206(%struct.TYPE_16__*) #1

declare dso_local i32 @l162(%struct.TYPE_16__*) #1

declare dso_local i32 @l227(%struct.TYPE_16__*) #1

declare dso_local i32 @l225(%struct.TYPE_16__*) #1

declare dso_local i32 @l202(%struct.TYPE_16__*) #1

declare dso_local i32 @l138(%struct.TYPE_16__*) #1

declare dso_local i32 @cp_set_baud(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @cp_set_gsyn(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
