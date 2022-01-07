; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_io_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_io_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32 }

@BD_F_MSS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*, i32, i32)* @io_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_wr(%struct.mss_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BD_F_MSS_OFFSET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %18 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @port_wr(i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @port_wr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
