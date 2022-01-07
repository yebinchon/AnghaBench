; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_read_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }

@symbol_negative_sign = common dso_local global i64 0, align 8
@MAX_NUM_SIZE = common dso_local global i64 0, align 8
@symbol_thousands_sep = common dso_local global i64 0, align 8
@symbol_decimal_point = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwstring*, i32*, i64*, i64*, i64*, i64*, i8*)* @read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_number(%struct.bwstring* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i8* %6) #0 {
  %8 = alloca %struct.bwstring*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.bwstring*, %struct.bwstring** %8, align 8
  %17 = call i32 @bws_begin(%struct.bwstring* %16)
  store i32 %17, i32* %15, align 4
  %18 = load i64*, i64** %12, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %25, %7
  %21 = load i32, i32* %15, align 4
  %22 = call i64 @bws_get_iter_value(i32 %21)
  %23 = call i64 @iswblank(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @bws_iterator_inc(i32 %26, i32 1)
  store i32 %27, i32* %15, align 4
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @bws_get_iter_value(i32 %29)
  %31 = load i64, i64* @symbol_negative_sign, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %9, align 8
  store i32 -1, i32* %34, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @bws_iterator_inc(i32 %35, i32 1)
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @bws_get_iter_value(i32 %39)
  %41 = call i64 @iswdigit(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @bws_get_iter_value(i32 %44)
  %46 = icmp eq i64 %45, 48
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @bws_iterator_inc(i32 %50, i32 1)
  store i32 %51, i32* %15, align 4
  br label %38

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %94, %52
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @bws_get_iter_value(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAX_NUM_SIZE, align 8
  %61 = icmp ult i64 %59, %60
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i1 [ false, %53 ], [ %61, %57 ]
  br i1 %63, label %64, label %95

64:                                               ; preds = %62
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @bws_get_iter_value(i32 %65)
  %67 = call i64 @iswdigit(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @bws_get_iter_value(i32 %70)
  %72 = load i64*, i64** %10, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @bws_iterator_inc(i32 %76, i32 1)
  store i32 %77, i32* %15, align 4
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %94

81:                                               ; preds = %64
  %82 = load i64, i64* @symbol_thousands_sep, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @bws_get_iter_value(i32 %85)
  %87 = load i64, i64* @symbol_thousands_sep, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @bws_iterator_inc(i32 %90, i32 1)
  store i32 %91, i32* %15, align 4
  br label %93

92:                                               ; preds = %84, %81
  br label %95

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %69
  br label %53

95:                                               ; preds = %92, %62
  %96 = load i64*, i64** %10, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @bws_get_iter_value(i32 %100)
  %102 = load i64, i64* @symbol_decimal_point, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %159

104:                                              ; preds = %95
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @bws_iterator_inc(i32 %105, i32 1)
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %119, %104
  %108 = load i32, i32* %15, align 4
  %109 = call i64 @bws_get_iter_value(i32 %108)
  %110 = call i64 @iswdigit(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i64*, i64** %13, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MAX_NUM_SIZE, align 8
  %116 = icmp ult i64 %114, %115
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = load i32, i32* %15, align 4
  %121 = call i64 @bws_get_iter_value(i32 %120)
  %122 = load i64*, i64** %12, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %121, i64* %125, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @bws_iterator_inc(i32 %126, i32 1)
  store i32 %127, i32* %15, align 4
  %128 = load i64*, i64** %13, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %107

131:                                              ; preds = %117
  %132 = load i64*, i64** %12, align 8
  %133 = load i64*, i64** %13, align 8
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %150, %131
  %137 = load i64*, i64** %13, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64*, i64** %12, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %143, 1
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 48
  br label %148

148:                                              ; preds = %140, %136
  %149 = phi i1 [ false, %136 ], [ %147, %140 ]
  br i1 %149, label %150, label %158

150:                                              ; preds = %148
  %151 = load i64*, i64** %13, align 8
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %151, align 8
  %154 = load i64*, i64** %12, align 8
  %155 = load i64*, i64** %13, align 8
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64 0, i64* %157, align 8
  br label %136

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %95
  %160 = load i32, i32* %15, align 4
  %161 = call i64 @bws_get_iter_value(i32 %160)
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 @setsuffix(i64 %161, i8* %162)
  %164 = load i64*, i64** %11, align 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %13, align 8
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %165, %167
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32*, i32** %9, align 8
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %170, %159
  ret i32 0
}

declare dso_local i32 @bws_begin(%struct.bwstring*) #1

declare dso_local i64 @iswblank(i64) #1

declare dso_local i64 @bws_get_iter_value(i32) #1

declare dso_local i32 @bws_iterator_inc(i32, i32) #1

declare dso_local i64 @iswdigit(i64) #1

declare dso_local i32 @setsuffix(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
