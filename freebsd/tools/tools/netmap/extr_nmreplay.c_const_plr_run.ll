; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_plr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_plr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*)* @const_plr_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_plr_run(%struct._qs* %0, %struct._cfg* %1) #0 {
  %3 = alloca %struct._qs*, align 8
  %4 = alloca %struct._cfg*, align 8
  %5 = alloca i64, align 8
  store %struct._qs* %0, %struct._qs** %3, align 8
  store %struct._cfg* %1, %struct._cfg** %4, align 8
  %6 = load %struct._cfg*, %struct._cfg** %4, align 8
  %7 = call i64 (...) @my_random24()
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct._cfg*, %struct._cfg** %4, align 8
  %10 = getelementptr inbounds %struct._cfg, %struct._cfg* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %8, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct._qs*, %struct._qs** %3, align 8
  %17 = getelementptr inbounds %struct._qs, %struct._qs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct._cfg*, %struct._cfg** %4, align 8
  %19 = getelementptr inbounds %struct._cfg, %struct._cfg* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct._qs*, %struct._qs** %3, align 8
  %25 = getelementptr inbounds %struct._qs, %struct._qs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct._cfg*, %struct._cfg** %4, align 8
  %29 = getelementptr inbounds %struct._cfg, %struct._cfg* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %27
  store i64 %33, i64* %31, align 8
  ret i32 0
}

declare dso_local i64 @my_random24(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
