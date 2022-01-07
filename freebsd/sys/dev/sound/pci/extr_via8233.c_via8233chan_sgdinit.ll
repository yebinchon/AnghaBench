; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_sgdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233chan_sgdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i64, i32* }
%struct.via_chinfo = type { i64, i32* }

@VIA_SEGS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_info*, %struct.via_chinfo*, i32)* @via8233chan_sgdinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via8233chan_sgdinit(%struct.via_info* %0, %struct.via_chinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.via_info*, align 8
  %5 = alloca %struct.via_chinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.via_info* %0, %struct.via_info** %4, align 8
  store %struct.via_chinfo* %1, %struct.via_chinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.via_info*, %struct.via_info** %4, align 8
  %8 = getelementptr inbounds %struct.via_info, %struct.via_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VIA_SEGS_MAX, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %16 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.via_info*, %struct.via_info** %4, align 8
  %18 = getelementptr inbounds %struct.via_info, %struct.via_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VIA_SEGS_MAX, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %19, %24
  %26 = load %struct.via_chinfo*, %struct.via_chinfo** %5, align 8
  %27 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
