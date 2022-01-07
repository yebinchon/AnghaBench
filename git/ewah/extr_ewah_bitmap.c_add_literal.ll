; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_literal.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_add_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }

@RLW_LARGEST_LITERAL_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ewah_bitmap*, i32)* @add_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_literal(%struct.ewah_bitmap* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %8 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rlw_get_literal_words(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RLW_LARGEST_LITERAL_COUNT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %16 = call i32 @buffer_push_rlw(%struct.ewah_bitmap* %15, i32 0)
  %17 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %18 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rlw_set_literal_words(i32 %19, i32 1)
  %21 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @buffer_push(%struct.ewah_bitmap* %21, i32 %22)
  store i64 2, i64* %3, align 8
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %26 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @rlw_set_literal_words(i32 %27, i32 %29)
  %31 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %32 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rlw_get_literal_words(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @buffer_push(%struct.ewah_bitmap* %40, i32 %41)
  store i64 1, i64* %3, align 8
  br label %43

43:                                               ; preds = %24, %14
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @rlw_get_literal_words(i32) #1

declare dso_local i32 @buffer_push_rlw(%struct.ewah_bitmap*, i32) #1

declare dso_local i32 @rlw_set_literal_words(i32, i32) #1

declare dso_local i32 @buffer_push(%struct.ewah_bitmap*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
