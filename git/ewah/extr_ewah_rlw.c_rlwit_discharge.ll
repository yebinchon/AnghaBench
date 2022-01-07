; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_discharge.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_discharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlw_iterator = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ewah_bitmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rlwit_discharge(%struct.rlw_iterator* %0, %struct.ewah_bitmap* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.rlw_iterator*, align 8
  %6 = alloca %struct.ewah_bitmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rlw_iterator* %0, %struct.rlw_iterator** %5, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %62, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %18 = call i64 @rlwit_word_size(%struct.rlw_iterator* %17)
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %82

22:                                               ; preds = %20
  %23 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %24 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %38 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %39 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @ewah_add_empty_words(%struct.ewah_bitmap* %37, i32 %43, i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %50 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %36
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %58, %36
  %63 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %64 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %65 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %68 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ewah_add_dirty_words(%struct.ewah_bitmap* %63, i64 %70, i64 %71, i32 %72)
  %74 = load %struct.rlw_iterator*, %struct.rlw_iterator** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %75, %76
  %78 = call i32 @rlwit_discard_first_words(%struct.rlw_iterator* %74, i64 %77)
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %12

82:                                               ; preds = %20
  %83 = load i64, i64* %9, align 8
  ret i64 %83
}

declare dso_local i64 @rlwit_word_size(%struct.rlw_iterator*) #1

declare dso_local i32 @ewah_add_empty_words(%struct.ewah_bitmap*, i32, i64) #1

declare dso_local i32 @ewah_add_dirty_words(%struct.ewah_bitmap*, i64, i64, i32) #1

declare dso_local i32 @rlwit_discard_first_words(%struct.rlw_iterator*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
