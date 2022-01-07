; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32 }
%struct.via_chinfo = type { i64 }

@VIA_RP_CONTROL = common dso_local global i64 0, align 8
@SGD_CONTROL_STOP = common dso_local global i32 0, align 4
@VIA_RP_STATUS = common dso_local global i64 0, align 8
@SGD_STATUS_EOL = common dso_local global i32 0, align 4
@SGD_STATUS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_info*, %struct.via_chinfo*)* @via8233chan_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via8233chan_reset(%struct.via_info* %0, %struct.via_chinfo* %1) #0 {
  %3 = alloca %struct.via_info*, align 8
  %4 = alloca %struct.via_chinfo*, align 8
  store %struct.via_info* %0, %struct.via_info** %3, align 8
  store %struct.via_chinfo* %1, %struct.via_chinfo** %4, align 8
  %5 = load %struct.via_info*, %struct.via_info** %3, align 8
  %6 = load %struct.via_chinfo*, %struct.via_chinfo** %4, align 8
  %7 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIA_RP_CONTROL, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @SGD_CONTROL_STOP, align 4
  %12 = call i32 @via_wr(%struct.via_info* %5, i64 %10, i32 %11, i32 1)
  %13 = load %struct.via_info*, %struct.via_info** %3, align 8
  %14 = load %struct.via_chinfo*, %struct.via_chinfo** %4, align 8
  %15 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VIA_RP_CONTROL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @via_wr(%struct.via_info* %13, i64 %18, i32 0, i32 1)
  %20 = load %struct.via_info*, %struct.via_info** %3, align 8
  %21 = load %struct.via_chinfo*, %struct.via_chinfo** %4, align 8
  %22 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VIA_RP_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @SGD_STATUS_EOL, align 4
  %27 = load i32, i32* @SGD_STATUS_FLAG, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @via_wr(%struct.via_info* %20, i64 %25, i32 %28, i32 1)
  ret void
}

declare dso_local i32 @via_wr(%struct.via_info*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
