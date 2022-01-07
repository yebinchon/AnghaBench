; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_buffer_push_rlw.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_bitmap.c_buffer_push_rlw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ewah_bitmap*, i32)* @buffer_push_rlw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_push_rlw(%struct.ewah_bitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.ewah_bitmap*, align 8
  %4 = alloca i32, align 4
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @buffer_push(%struct.ewah_bitmap* %5, i32 %6)
  %8 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %9 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %12 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %17 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  ret void
}

declare dso_local i32 @buffer_push(%struct.ewah_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
