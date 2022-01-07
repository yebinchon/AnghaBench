; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_iterator_init.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_iterator = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.ewah_bitmap = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ewah_iterator_init(%struct.ewah_iterator* %0, %struct.ewah_bitmap* %1) #0 {
  %3 = alloca %struct.ewah_iterator*, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  store %struct.ewah_iterator* %0, %struct.ewah_iterator** %3, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %4, align 8
  %5 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %6 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %11 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %20 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %28 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %31 = getelementptr inbounds %struct.ewah_iterator, %struct.ewah_iterator* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.ewah_iterator*, %struct.ewah_iterator** %3, align 8
  %36 = call i32 @read_new_rlw(%struct.ewah_iterator* %35)
  br label %37

37:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @read_new_rlw(%struct.ewah_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
