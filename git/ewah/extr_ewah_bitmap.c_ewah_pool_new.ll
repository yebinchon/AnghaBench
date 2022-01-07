; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_pool_new.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_ewah_pool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }

@bitmap_pool_size = common dso_local global i32 0, align 4
@bitmap_pool = common dso_local global %struct.ewah_bitmap** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ewah_bitmap* @ewah_pool_new() #0 {
  %1 = alloca %struct.ewah_bitmap*, align 8
  %2 = load i32, i32* @bitmap_pool_size, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load %struct.ewah_bitmap**, %struct.ewah_bitmap*** @bitmap_pool, align 8
  %6 = load i32, i32* @bitmap_pool_size, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* @bitmap_pool_size, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, i64 %8
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %9, align 8
  store %struct.ewah_bitmap* %10, %struct.ewah_bitmap** %1, align 8
  br label %13

11:                                               ; preds = %0
  %12 = call %struct.ewah_bitmap* (...) @ewah_new()
  store %struct.ewah_bitmap* %12, %struct.ewah_bitmap** %1, align 8
  br label %13

13:                                               ; preds = %11, %4
  %14 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %1, align 8
  ret %struct.ewah_bitmap* %14
}

declare dso_local %struct.ewah_bitmap* @ewah_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
