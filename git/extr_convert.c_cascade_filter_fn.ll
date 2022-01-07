; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_cascade_filter_fn.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_cascade_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.cascade_filter = type { i64, i64, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_filter*, i8*, i64*, i8*, i64*)* @cascade_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cascade_filter_fn(%struct.stream_filter* %0, i8* %1, i64* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_filter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.cascade_filter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.stream_filter* %0, %struct.stream_filter** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.stream_filter*, %struct.stream_filter** %7, align 8
  %19 = bitcast %struct.stream_filter* %18 to %struct.cascade_filter*
  store %struct.cascade_filter* %19, %struct.cascade_filter** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  br label %22

22:                                               ; preds = %154, %133, %61, %5
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %158

26:                                               ; preds = %22
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %16, align 8
  %30 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %31 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %34 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %26
  %38 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %39 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %42 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %15, align 8
  %45 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %46 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %49 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %52 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = call i64 @stream_filter(i32 %47, i8* %54, i64* %15, i8* %57, i64* %16)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %163

61:                                               ; preds = %37
  %62 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %63 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %66 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = load i64, i64* %15, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %72 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %16, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %13, align 8
  br label %22

78:                                               ; preds = %26
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  br label %85

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i64 [ %83, %81 ], [ 0, %84 ]
  store i64 %86, i64* %15, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, i64* %15, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %158

93:                                               ; preds = %89, %85
  store i64 8, i64* %16, align 8
  %94 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %95 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %99 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @stream_filter(i32 %96, i8* %97, i64* %15, i8* %100, i64* %16)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 -1, i32* %6, align 4
  br label %163

104:                                              ; preds = %93
  %105 = load i64, i64* %16, align 8
  %106 = sub i64 8, %105
  %107 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %108 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %110 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, %118
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %113, %104
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %130 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %125
  br label %22

134:                                              ; preds = %128
  store i64 0, i64* %15, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %13, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %16, align 8
  %138 = load %struct.cascade_filter*, %struct.cascade_filter** %12, align 8
  %139 = getelementptr inbounds %struct.cascade_filter, %struct.cascade_filter* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = call i64 @stream_filter(i32 %140, i8* null, i64* %15, i8* %143, i64* %16)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  store i32 -1, i32* %6, align 4
  br label %163

147:                                              ; preds = %134
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %13, align 8
  %151 = sub i64 %149, %150
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %158

154:                                              ; preds = %147
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %16, align 8
  %157 = sub i64 %155, %156
  store i64 %157, i64* %13, align 8
  br label %22

158:                                              ; preds = %153, %92, %22
  %159 = load i64, i64* %13, align 8
  %160 = load i64*, i64** %11, align 8
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %161, %159
  store i64 %162, i64* %160, align 8
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %158, %146, %103, %60
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @stream_filter(i32, i8*, i64*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
