; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*, i32, i32)* @opti_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opti_wr(%struct.mss_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %11 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @port_wr(i32 %9, i64 %13, i32 %14)
  %16 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %17 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @port_wr(i32 %18, i64 %22, i32 %23)
  ret void
}

declare dso_local i32 @port_wr(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
