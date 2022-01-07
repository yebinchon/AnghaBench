; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_give_context.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_give_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { i64 }

@context = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sline*, i64, i32)* @give_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @give_context(%struct.sline* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sline*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sline* %0, %struct.sline** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = sub i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 2, %22
  store i64 %23, i64* %10, align 8
  %24 = load %struct.sline*, %struct.sline** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @find_next(%struct.sline* %24, i64 %25, i64 0, i64 %26, i32 0)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %153

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %151, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %152

37:                                               ; preds = %33
  %38 = load i64, i64* @context, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @context, align 8
  %44 = sub i64 %42, %43
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i64 [ %44, %41 ], [ 0, %45 ]
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %69, %46
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load %struct.sline*, %struct.sline** %5, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.sline, %struct.sline* %53, i64 %54
  %56 = getelementptr inbounds %struct.sline, %struct.sline* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.sline*, %struct.sline** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.sline, %struct.sline* %63, i64 %64
  %66 = getelementptr inbounds %struct.sline, %struct.sline* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %62
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %61, %52
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.sline*, %struct.sline** %5, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = getelementptr inbounds %struct.sline, %struct.sline* %71, i64 %72
  %75 = getelementptr inbounds %struct.sline, %struct.sline* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %70
  store i64 %77, i64* %75, align 8
  br label %48

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %119, %78
  %80 = load %struct.sline*, %struct.sline** %5, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @find_next(%struct.sline* %80, i64 %81, i64 %82, i64 %83, i32 1)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %152

89:                                               ; preds = %79
  %90 = load %struct.sline*, %struct.sline** %5, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @find_next(%struct.sline* %90, i64 %91, i64 %92, i64 %93, i32 0)
  store i64 %94, i64* %13, align 8
  %95 = load %struct.sline*, %struct.sline** %5, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @adjust_hunk_tail(%struct.sline* %95, i64 %96, i64 %97, i64 %98)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @context, align 8
  %103 = add i64 %101, %102
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %110, %105
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.sline*, %struct.sline** %5, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  %115 = getelementptr inbounds %struct.sline, %struct.sline* %112, i64 %113
  %116 = getelementptr inbounds %struct.sline, %struct.sline* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = or i64 %117, %111
  store i64 %118, i64* %116, align 8
  br label %106

119:                                              ; preds = %106
  %120 = load i64, i64* %13, align 8
  store i64 %120, i64* %11, align 8
  br label %79

121:                                              ; preds = %89
  %122 = load i64, i64* %13, align 8
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @context, align 8
  %125 = add i64 %123, %124
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* @context, align 8
  %132 = add i64 %130, %131
  br label %136

133:                                              ; preds = %121
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %134, 1
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi i64 [ %132, %129 ], [ %135, %133 ]
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %142, %136
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.sline*, %struct.sline** %5, align 8
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %12, align 8
  %147 = getelementptr inbounds %struct.sline, %struct.sline* %144, i64 %145
  %148 = getelementptr inbounds %struct.sline, %struct.sline* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = or i64 %149, %143
  store i64 %150, i64* %148, align 8
  br label %138

151:                                              ; preds = %138
  br label %33

152:                                              ; preds = %88, %33
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %31
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @find_next(%struct.sline*, i64, i64, i64, i32) #1

declare dso_local i64 @adjust_hunk_tail(%struct.sline*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
