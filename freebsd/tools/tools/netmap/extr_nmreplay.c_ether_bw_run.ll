; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_ether_bw_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_ether_bw_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i64, i32 }
%struct._cfg = type { i32* }

@TIME_UNITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*)* @ether_bw_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_bw_run(%struct._qs* %0, %struct._cfg* %1) #0 {
  %3 = alloca %struct._qs*, align 8
  %4 = alloca %struct._cfg*, align 8
  %5 = alloca i32, align 4
  store %struct._qs* %0, %struct._qs** %3, align 8
  store %struct._cfg* %1, %struct._cfg** %4, align 8
  %6 = load %struct._cfg*, %struct._cfg** %4, align 8
  %7 = getelementptr inbounds %struct._cfg, %struct._cfg* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i64, i64* @TIME_UNITS, align 8
  %15 = mul i64 8, %14
  %16 = load %struct._qs*, %struct._qs** %3, align 8
  %17 = getelementptr inbounds %struct._qs, %struct._qs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 24
  %20 = sext i32 %19 to i64
  %21 = mul i64 %15, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %21, %23
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %13
  %27 = phi i64 [ %24, %13 ], [ 0, %25 ]
  %28 = load %struct._qs*, %struct._qs** %3, align 8
  %29 = getelementptr inbounds %struct._qs, %struct._qs* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
