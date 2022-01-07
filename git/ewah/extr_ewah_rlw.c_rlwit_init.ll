; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_init.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_rlw.c_rlwit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlw_iterator = type { %struct.TYPE_2__, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ewah_bitmap = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rlwit_init(%struct.rlw_iterator* %0, %struct.ewah_bitmap* %1) #0 {
  %3 = alloca %struct.rlw_iterator*, align 8
  %4 = alloca %struct.ewah_bitmap*, align 8
  store %struct.rlw_iterator* %0, %struct.rlw_iterator** %3, align 8
  store %struct.ewah_bitmap* %1, %struct.ewah_bitmap** %4, align 8
  %5 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %6 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %4, align 8
  %11 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %18 = call i32 @next_word(%struct.rlw_iterator* %17)
  %19 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %20 = call i64 @rlwit_literal_words(%struct.rlw_iterator* %19)
  %21 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = load %struct.rlw_iterator*, %struct.rlw_iterator** %3, align 8
  %27 = getelementptr inbounds %struct.rlw_iterator, %struct.rlw_iterator* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i32 @next_word(%struct.rlw_iterator*) #1

declare dso_local i64 @rlwit_literal_words(%struct.rlw_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
