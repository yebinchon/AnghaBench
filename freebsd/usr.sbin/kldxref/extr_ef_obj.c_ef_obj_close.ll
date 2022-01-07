; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_obj.c_ef_obj_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef_obj.c_ef_obj_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ef_obj_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef_obj_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 16
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @close(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 15
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 15
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i32 @free(%struct.TYPE_6__* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @free(%struct.TYPE_6__* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 13
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @free(%struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 12
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_6__* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 11
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 10
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 11
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @free(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %69, %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %53

83:                                               ; preds = %53
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 10
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @free(%struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %83, %47
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @free(%struct.TYPE_6__* %118)
  br label %120

120:                                              ; preds = %110, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %94

124:                                              ; preds = %94
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = call i32 @free(%struct.TYPE_6__* %127)
  br label %129

129:                                              ; preds = %124, %88
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = icmp ne %struct.TYPE_6__* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = call i32 @free(%struct.TYPE_6__* %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = icmp ne %struct.TYPE_6__* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = call i32 @free(%struct.TYPE_6__* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = call i32 @free(%struct.TYPE_6__* %157)
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i32* null, i32** %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = call i32 @free(%struct.TYPE_6__* %168)
  ret i32 0
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
