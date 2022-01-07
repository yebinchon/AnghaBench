; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c___ubsan_handle_pointer_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c___ubsan_handle_pointer_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPointerOverflowData = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_pointer_overflow(%struct.CPointerOverflowData* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.CPointerOverflowData*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.CPointerOverflowData* %0, %struct.CPointerOverflowData** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.CPointerOverflowData*, %struct.CPointerOverflowData** %4, align 8
  %8 = call i32 @ASSERT(%struct.CPointerOverflowData* %7)
  %9 = load %struct.CPointerOverflowData*, %struct.CPointerOverflowData** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @HandlePointerOverflow(i32 0, %struct.CPointerOverflowData* %9, i64 %10, i64 %11)
  ret void
}

declare dso_local i32 @ASSERT(%struct.CPointerOverflowData*) #1

declare dso_local i32 @HandlePointerOverflow(i32, %struct.CPointerOverflowData*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
