; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_next_word.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_next_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlw_iterator = type { i64, i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rlw_iterator*)* @next_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_word(%struct.rlw_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlw_iterator*, align 8
  store %struct.rlw_iterator* %0, %struct.rlw_iterator** %3, align 8
  %4 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %5 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %17 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %21 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* %19, i32** %22, align 8
  %23 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @rlw_get_literal_words(i32* %26)
  %28 = add nsw i64 %27, 1
  %29 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %30 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %34 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @rlw_get_literal_words(i32* %36)
  %38 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %39 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %42 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rlw_get_running_len(i32* %44)
  %46 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %47 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %50 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @rlw_get_run_bit(i32* %52)
  %54 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %55 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %58 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %12, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @rlw_get_literal_words(i32*) #1

declare dso_local i32 @rlw_get_running_len(i32*) #1

declare dso_local i32 @rlw_get_run_bit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
