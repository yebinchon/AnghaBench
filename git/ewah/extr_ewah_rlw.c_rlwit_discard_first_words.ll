; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_discard_first_words.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_discard_first_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlw_iterator = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rlwit_discard_first_words(%struct.rlw_iterator* %0, i64 %1) #0 {
  %3 = alloca %struct.rlw_iterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rlw_iterator* %0, %struct.rlw_iterator** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %83, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %6
  %10 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %19 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, %17
  store i64 %22, i64* %20, align 8
  br label %84

23:                                               ; preds = %9
  %24 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %25 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %4, align 8
  %30 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %31 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %35 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %41 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  br label %46

44:                                               ; preds = %23
  %45 = load i64, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i64 [ %43, %39 ], [ %45, %44 ]
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %50 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %55 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %53
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %4, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %46
  %65 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %66 = call i64 @rlwit_word_size(%struct.rlw_iterator* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64, %46
  %69 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %70 = call i32 @next_word(%struct.rlw_iterator* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %84

73:                                               ; preds = %68
  %74 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %75 = call i64 @rlwit_literal_words(%struct.rlw_iterator* %74)
  %76 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %77 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %82 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %64
  br label %6

84:                                               ; preds = %16, %72, %6
  ret void
}

declare dso_local i64 @rlwit_word_size(%struct.rlw_iterator*) #1

declare dso_local i32 @next_word(%struct.rlw_iterator*) #1

declare dso_local i64 @rlwit_literal_words(%struct.rlw_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
