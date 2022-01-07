; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_port_stats_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_port_stats_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.port_stats = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_get_port_stats_offset(%struct.adapter* %0, i32 %1, %struct.port_stats* %2, %struct.port_stats* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_stats*, align 8
  %8 = alloca %struct.port_stats*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.port_stats* %2, %struct.port_stats** %7, align 8
  store %struct.port_stats* %3, %struct.port_stats** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.port_stats*, %struct.port_stats** %7, align 8
  %15 = call i32 @t4_get_port_stats(%struct.adapter* %12, i32 %13, %struct.port_stats* %14)
  store i32 0, i32* %11, align 4
  %16 = load %struct.port_stats*, %struct.port_stats** %7, align 8
  %17 = bitcast %struct.port_stats* %16 to i64*
  store i64* %17, i64** %9, align 8
  %18 = load %struct.port_stats*, %struct.port_stats** %8, align 8
  %19 = bitcast %struct.port_stats* %18 to i64*
  store i64* %19, i64** %10, align 8
  br label %20

20:                                               ; preds = %30, %4
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, %26
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %9, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %10, align 8
  br label %20

37:                                               ; preds = %20
  ret void
}

declare dso_local i32 @t4_get_port_stats(%struct.adapter*, i32, %struct.port_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
