; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233dxs_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233dxs_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i32, %struct.via_info* }
%struct.via_info = type { i32 }

@VIA8233_RP_DXS_RATEFMT = common dso_local global i32 0, align 4
@VIA8233_DXS_RATEFMT_STEREO = common dso_local global i32 0, align 4
@VIA8233_DXS_RATEFMT_16BIT = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via8233dxs_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233dxs_setformat(i32 %0, i8* %1, i32 %2) #0 {
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
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @VIA8233_DXS_RATEFMT_STEREO, align 4
  %29 = load i32, i32* @VIA8233_DXS_RATEFMT_16BIT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @AFMT_CHANNEL(i32 %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @VIA8233_DXS_RATEFMT_STEREO, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AFMT_16BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @VIA8233_DXS_RATEFMT_16BIT, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.via_info*, %struct.via_info** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @via_wr(%struct.via_info* %51, i32 %52, i32 %53, i32 4)
  %55 = load %struct.via_info*, %struct.via_info** %8, align 8
  %56 = getelementptr inbounds %struct.via_info, %struct.via_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_mtxunlock(i32 %57)
  ret i32 0
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
