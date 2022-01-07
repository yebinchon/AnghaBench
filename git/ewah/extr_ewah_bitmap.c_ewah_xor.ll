; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_xor.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }
%struct.rlw_iterator = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_xor(%struct.ewah_bitmap* %0, %struct.ewah_bitmap* %1, %struct.ewah_bitmap* %2) #0 {
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca %struct.ewah_bitmap*, align 8
  %6 = alloca %struct.ewah_bitmap*, align 8
  %7 = alloca %struct.rlw_iterator, align 8
  %8 = alloca %struct.rlw_iterator, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rlw_iterator*, align 8
  %11 = alloca %struct.rlw_iterator*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %5, align 8
  store %struct.ewah_bitmap* %2, %struct.ewah_bitmap** %6, align 8
  %15 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %16 = call i32 @rlwit_init(%struct.rlw_iterator* %7, %struct.ewah_bitmap* %15)
  %17 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %18 = call i32 @rlwit_init(%struct.rlw_iterator* %8, %struct.ewah_bitmap* %17)
  br label %19

19:                                               ; preds = %125, %3
  %20 = call i64 @rlwit_word_size(%struct.rlw_iterator* %7)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i64 @rlwit_word_size(%struct.rlw_iterator* %8)
  %24 = icmp sgt i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %126

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %50, %27
  %29 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %82

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store %struct.rlw_iterator* %7, %struct.rlw_iterator** %10, align 8
  store %struct.rlw_iterator* %8, %struct.rlw_iterator** %11, align 8
  br label %50

49:                                               ; preds = %40
  store %struct.rlw_iterator* %8, %struct.rlw_iterator** %10, align 8
  store %struct.rlw_iterator* %7, %struct.rlw_iterator** %11, align 8
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.rlw_iterator*, %struct.rlw_iterator** %11, align 8
  %52 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load %struct.rlw_iterator*, %struct.rlw_iterator** %10, align 8
  %60 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %61 = load %struct.rlw_iterator*, %struct.rlw_iterator** %11, align 8
  %62 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @rlwit_discharge(%struct.rlw_iterator* %59, %struct.ewah_bitmap* %60, i64 %64, i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.rlw_iterator*, %struct.rlw_iterator** %11, align 8
  %70 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %72, %73
  %75 = call i32 @ewah_add_empty_words(%struct.ewah_bitmap* %67, i32 %68, i64 %74)
  %76 = load %struct.rlw_iterator*, %struct.rlw_iterator** %11, align 8
  %77 = load %struct.rlw_iterator*, %struct.rlw_iterator** %11, align 8
  %78 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @rlwit_discard_first_words(%struct.rlw_iterator* %76, i64 %80)
  br label %28

82:                                               ; preds = %38
  %83 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @min_size(i32 %85, i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %82
  store i64 0, i64* %14, align 8
  br label %93

93:                                               ; preds = %117, %92
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %99 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %102, %103
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %110, %111
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %106, %114
  %116 = call i32 @ewah_add(%struct.ewah_bitmap* %98, i32 %115)
  br label %117

117:                                              ; preds = %97
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %14, align 8
  br label %93

120:                                              ; preds = %93
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @rlwit_discard_first_words(%struct.rlw_iterator* %7, i64 %121)
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @rlwit_discard_first_words(%struct.rlw_iterator* %8, i64 %123)
  br label %125

125:                                              ; preds = %120, %82
  br label %19

126:                                              ; preds = %25
  %127 = call i64 @rlwit_word_size(%struct.rlw_iterator* %7)
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %131 = call i64 @rlwit_discharge(%struct.rlw_iterator* %7, %struct.ewah_bitmap* %130, i64 -1, i32 0)
  br label %135

132:                                              ; preds = %126
  %133 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %134 = call i64 @rlwit_discharge(%struct.rlw_iterator* %8, %struct.ewah_bitmap* %133, i64 -1, i32 0)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %137 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %140 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @max_size(i32 %138, i32 %141)
  %143 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %144 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  ret void
}

declare dso_local i32 @rlwit_init(%struct.rlw_iterator*, %struct.ewah_bitmap*) #1

declare dso_local i64 @rlwit_word_size(%struct.rlw_iterator*) #1

declare dso_local i64 @rlwit_discharge(%struct.rlw_iterator*, %struct.ewah_bitmap*, i64, i32) #1

declare dso_local i32 @ewah_add_empty_words(%struct.ewah_bitmap*, i32, i64) #1

declare dso_local i32 @rlwit_discard_first_words(%struct.rlw_iterator*, i64) #1

declare dso_local i64 @min_size(i32, i32) #1

declare dso_local i32 @ewah_add(%struct.ewah_bitmap*, i32) #1

declare dso_local i32 @max_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
