; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_uniform_delay_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_uniform_delay_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*)* @uniform_delay_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniform_delay_run(%struct._qs* %0, %struct._cfg* %1) #0 {
  %3 = alloca %struct._qs*, align 8
  %4 = alloca %struct._cfg*, align 8
  %5 = alloca i32, align 4
  store %struct._qs* %0, %struct._qs** %3, align 8
  store %struct._cfg* %1, %struct._cfg** %4, align 8
  %6 = call i32 (...) @my_random24()
  store i32 %6, i32* %5, align 4
  %7 = load %struct._cfg*, %struct._cfg** %4, align 8
  %8 = getelementptr inbounds %struct._cfg, %struct._cfg* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct._cfg*, %struct._cfg** %4, align 8
  %13 = getelementptr inbounds %struct._cfg, %struct._cfg* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %16, %17
  %19 = ashr i32 %18, 24
  %20 = add nsw i32 %11, %19
  %21 = load %struct._qs*, %struct._qs** %3, align 8
  %22 = getelementptr inbounds %struct._qs, %struct._qs* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret i32 0
}

declare dso_local i32 @my_random24(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
