; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_lf_to_crlf_filter_fn.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_lf_to_crlf_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.lf_to_crlf_filter = type { i32, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_filter*, i8*, i64*, i8*, i64*)* @lf_to_crlf_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_to_crlf_filter_fn(%struct.stream_filter* %0, i8* %1, i64* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_filter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lf_to_crlf_filter*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.stream_filter* %0, %struct.stream_filter** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.stream_filter*, %struct.stream_filter** %7, align 8
  %19 = bitcast %struct.stream_filter* %18 to %struct.lf_to_crlf_filter*
  store %struct.lf_to_crlf_filter* %19, %struct.lf_to_crlf_filter** %14, align 8
  %20 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %21 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  %25 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %26 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 4
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 13
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %35 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %40, align 1
  %41 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %42 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %30, %5
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %47
  store i64 %50, i64* %48, align 8
  store i32 0, i32* %6, align 4
  br label %151

51:                                               ; preds = %43
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %58 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %150

61:                                               ; preds = %56, %51
  store i32 0, i32* %16, align 4
  %62 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %63 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  store i32 1, i32* %16, align 4
  %67 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %68 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  store i64 0, i64* %15, align 8
  br label %70

70:                                               ; preds = %125, %69
  %71 = load i64, i64* %13, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ult i64 %76, %77
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i1 [ false, %70 ], [ %78, %75 ]
  br i1 %80, label %81, label %128

81:                                               ; preds = %79
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %17, align 1
  %86 = load i8, i8* %17, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 13, i8* %93, align 1
  br label %103

94:                                               ; preds = %81
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %13, align 8
  %101 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 13, i8* %101, align 1
  br label %102

102:                                              ; preds = %97, %94
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %110 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i8, i8* %17, align 1
  %112 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %113 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %112, i32 0, i32 1
  store i8 %111, i8* %113, align 4
  br label %125

114:                                              ; preds = %103
  %115 = load i8, i8* %17, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 13
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %16, align 4
  br label %125

119:                                              ; preds = %114
  store i32 0, i32* %16, align 4
  %120 = load i8, i8* %17, align 1
  %121 = load i8*, i8** %10, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %118, %108
  %126 = load i64, i64* %15, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %15, align 8
  br label %70

128:                                              ; preds = %79
  %129 = load i64, i64* %13, align 8
  %130 = load i64*, i64** %11, align 8
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, %129
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, %133
  store i64 %136, i64* %134, align 8
  %137 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %138 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %146 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  %147 = load %struct.lf_to_crlf_filter*, %struct.lf_to_crlf_filter** %14, align 8
  %148 = getelementptr inbounds %struct.lf_to_crlf_filter, %struct.lf_to_crlf_filter* %147, i32 0, i32 1
  store i8 13, i8* %148, align 4
  br label %149

149:                                              ; preds = %144, %141, %128
  br label %150

150:                                              ; preds = %149, %56
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %46
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
