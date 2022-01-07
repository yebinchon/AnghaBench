; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_find_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_find_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.image = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.image*, %struct.image*, i32, i32, i32, i32)* @find_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pos(%struct.apply_state* %0, %struct.image* %1, %struct.image* %2, %struct.image* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.apply_state*, align 8
  %11 = alloca %struct.image*, align 8
  %12 = alloca %struct.image*, align 8
  %13 = alloca %struct.image*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %10, align 8
  store %struct.image* %1, %struct.image** %11, align 8
  store %struct.image* %2, %struct.image** %12, align 8
  store %struct.image* %3, %struct.image** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 0, i32* %14, align 4
  br label %40

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.image*, %struct.image** %11, align 8
  %33 = getelementptr inbounds %struct.image, %struct.image* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.image*, %struct.image** %12, align 8
  %36 = getelementptr inbounds %struct.image, %struct.image* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %31, %28
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.image*, %struct.image** %11, align 8
  %44 = getelementptr inbounds %struct.image, %struct.image* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.image*, %struct.image** %11, align 8
  %50 = getelementptr inbounds %struct.image, %struct.image* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %40
  store i64 0, i64* %21, align 8
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.image*, %struct.image** %11, align 8
  %59 = getelementptr inbounds %struct.image, %struct.image* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %21, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %21, align 8
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load i64, i64* %21, align 8
  store i64 %72, i64* %19, align 8
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %22, align 4
  %74 = load i64, i64* %21, align 8
  store i64 %74, i64* %20, align 8
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %24, align 4
  store i32 0, i32* %18, align 4
  br label %77

77:                                               ; preds = %152, %71
  %78 = load %struct.apply_state*, %struct.apply_state** %10, align 8
  %79 = load %struct.image*, %struct.image** %11, align 8
  %80 = load %struct.image*, %struct.image** %12, align 8
  %81 = load %struct.image*, %struct.image** %13, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i64 @match_fragment(%struct.apply_state* %78, %struct.image* %79, %struct.image* %80, %struct.image* %81, i64 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %24, align 4
  store i32 %90, i32* %9, align 4
  br label %156

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %133, %109, %91
  %93 = load i32, i32* %22, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %23, align 4
  %97 = load %struct.image*, %struct.image** %11, align 8
  %98 = getelementptr inbounds %struct.image, %struct.image* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %155

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %18, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load i32, i32* %22, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %92

112:                                              ; preds = %106
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %22, align 4
  %115 = load %struct.image*, %struct.image** %11, align 8
  %116 = getelementptr inbounds %struct.image, %struct.image* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %19, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  store i64 %125, i64* %21, align 8
  %126 = load i32, i32* %22, align 4
  store i32 %126, i32* %24, align 4
  br label %151

127:                                              ; preds = %102
  %128 = load i32, i32* %23, align 4
  %129 = load %struct.image*, %struct.image** %11, align 8
  %130 = getelementptr inbounds %struct.image, %struct.image* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %18, align 4
  br label %92

136:                                              ; preds = %127
  %137 = load %struct.image*, %struct.image** %11, align 8
  %138 = getelementptr inbounds %struct.image, %struct.image* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %20, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %20, align 8
  %147 = load i32, i32* %23, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %23, align 4
  %149 = load i64, i64* %20, align 8
  store i64 %149, i64* %21, align 8
  %150 = load i32, i32* %23, align 4
  store i32 %150, i32* %24, align 4
  br label %151

151:                                              ; preds = %136, %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %77

155:                                              ; preds = %101
  store i32 -1, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %89
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i64 @match_fragment(%struct.apply_state*, %struct.image*, %struct.image*, %struct.image*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
