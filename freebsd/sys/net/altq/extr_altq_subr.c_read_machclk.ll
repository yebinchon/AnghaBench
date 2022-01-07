; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_read_machclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_read_machclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@machclk_usepcc = common dso_local global i64 0, align 8
@MACHCLK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_machclk() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = load i64, i64* @machclk_usepcc, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @rdtsc()
  store i32 %7, i32* %1, align 4
  br label %23

8:                                                ; preds = %0
  %9 = call i32 @microtime(%struct.timeval* %2)
  %10 = call i32 @getboottime(%struct.timeval* %3)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %16, 1000000
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* @MACHCLK_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %8, %6
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @getboottime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
