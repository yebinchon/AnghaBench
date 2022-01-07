; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233dxs_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233dxs_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i32, %struct.via_info* }
%struct.via_info = type { i32 }

@VIA8233_RP_DXS_RATEFMT = common dso_local global i32 0, align 4
@VIA8233_DXS_RATEFMT_48K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via8233dxs_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233dxs_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.via_chinfo*, align 8
  %8 = alloca %struct.via_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.via_chinfo*
  store %struct.via_chinfo* %12, %struct.via_chinfo** %7, align 8
  %13 = load %struct.via_chinfo*, %struct.via_chinfo** %7, align 8
  %14 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %13, i32 0, i32 1
  %15 = load %struct.via_info*, %struct.via_info** %14, align 8
  store %struct.via_info* %15, %struct.via_info** %8, align 8
  %16 = load %struct.via_chinfo*, %struct.via_chinfo** %7, align 8
  %17 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VIA8233_RP_DXS_RATEFMT, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.via_info*, %struct.via_info** %8, align 8
  %22 = getelementptr inbounds %struct.via_info, %struct.via_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_mtxlock(i32 %23)
  %25 = load %struct.via_info*, %struct.via_info** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @via_rd(%struct.via_info* %25, i32 %26, i32 4)
  %28 = load i32, i32* @VIA8233_DXS_RATEFMT_48K, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @VIA8233_DXS_RATEFMT_48K, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 48
  %34 = mul nsw i32 %31, %33
  %35 = sdiv i32 %34, 1000
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.via_info*, %struct.via_info** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @via_wr(%struct.via_info* %38, i32 %39, i32 %40, i32 4)
  %42 = load %struct.via_info*, %struct.via_info** %8, align 8
  %43 = getelementptr inbounds %struct.via_info, %struct.via_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_mtxunlock(i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
