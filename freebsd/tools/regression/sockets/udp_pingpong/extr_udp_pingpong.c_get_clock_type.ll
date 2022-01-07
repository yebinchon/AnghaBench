; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_get_clock_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_get_clock_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_ctx*)* @get_clock_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock_type(%struct.test_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_ctx*, align 8
  store %struct.test_ctx* %0, %struct.test_ctx** %3, align 8
  %4 = load %struct.test_ctx*, %struct.test_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 133, label %7
    i32 130, label %7
    i32 128, label %7
    i32 131, label %7
    i32 132, label %9
  ]

7:                                                ; preds = %1, %1, %1, %1, %1
  %8 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %8, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  store i32 %10, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @abort() #2
  unreachable

13:                                               ; preds = %9, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
