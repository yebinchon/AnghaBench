; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_read_new_rlw.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_read_new_rlw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_iterator = type { i64, i32, i32, i32, i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ewah_iterator*)* @read_new_rlw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_new_rlw(%struct.ewah_iterator* %0) #0 {
  %2 = alloca %struct.ewah_iterator*, align 8
  %3 = alloca i32*, align 8
  store %struct.ewah_iterator* %0, %struct.ewah_iterator** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %5 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %4, i32 0, i32 7
  store i64 0, i64* %5, align 8
  %6 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %7 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %1, %60
  %9 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %10 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @rlw_get_running_len(i32* %16)
  %18 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %19 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @rlw_get_literal_words(i32* %20)
  %22 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %23 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @rlw_get_run_bit(i32* %24)
  %26 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %27 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %29 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %8
  %33 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %34 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %8
  br label %61

38:                                               ; preds = %32
  %39 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %40 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %43 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %50 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %60

53:                                               ; preds = %38
  %54 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %55 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.ewah_iterator*, %struct.ewah_iterator** %2, align 8
  %59 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %61

60:                                               ; preds = %48
  br label %8

61:                                               ; preds = %53, %37
  ret void
}

declare dso_local i32 @rlw_get_running_len(i32*) #1

declare dso_local i32 @rlw_get_literal_words(i32*) #1

declare dso_local i32 @rlw_get_run_bit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
