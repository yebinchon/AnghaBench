; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_imf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_mfilter = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_mfilter*, i32, i32)* @imf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imf_init(%struct.in_mfilter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in_mfilter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.in_mfilter* %0, %struct.in_mfilter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %8 = call i32 @memset(%struct.in_mfilter* %7, i32 0, i32 16)
  %9 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %10 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %9, i32 0, i32 1
  %11 = call i32 @RB_INIT(i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %14 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %19 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  ret void
}

declare dso_local i32 @memset(%struct.in_mfilter*, i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
