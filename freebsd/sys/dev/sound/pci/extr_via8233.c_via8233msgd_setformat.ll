; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via8233msgd_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { %struct.via_info* }
%struct.via_info = type { i32 }

@AFMT_S16_LE = common dso_local global i32 0, align 4
@MC_SGD_16BIT = common dso_local global i32 0, align 4
@MC_SGD_8BIT = common dso_local global i32 0, align 4
@VIA_MC_SLOT_SELECT = common dso_local global i32 0, align 4
@VIA_MC_SGD_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @via8233msgd_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via8233msgd_setformat(i32 %0, i8* %1, i32 %2) #0 {
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
  %14 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %13, i32 0, i32 0
  %15 = load %struct.via_info*, %struct.via_info** %14, align 8
  store %struct.via_info* %15, %struct.via_info** %8, align 8
  store i32 -16777216, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AFMT_S16_LE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MC_SGD_16BIT, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MC_SGD_8BIT, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @AFMT_CHANNEL(i32 %26)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = call i32 @MC_SGD_CHANNELS(i32 2)
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = call i32 @SLOT3(i32 1)
  %34 = call i32 @SLOT4(i32 2)
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %47

38:                                               ; preds = %24
  %39 = call i32 @MC_SGD_CHANNELS(i32 1)
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = call i32 @SLOT3(i32 1)
  %43 = call i32 @SLOT4(i32 1)
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.via_info*, %struct.via_info** %8, align 8
  %49 = getelementptr inbounds %struct.via_info, %struct.via_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_mtxlock(i32 %50)
  %52 = load %struct.via_info*, %struct.via_info** %8, align 8
  %53 = load i32, i32* @VIA_MC_SLOT_SELECT, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @via_wr(%struct.via_info* %52, i32 %53, i32 %54, i32 4)
  %56 = load %struct.via_info*, %struct.via_info** %8, align 8
  %57 = load i32, i32* @VIA_MC_SGD_FORMAT, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @via_wr(%struct.via_info* %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.via_info*, %struct.via_info** %8, align 8
  %61 = getelementptr inbounds %struct.via_info, %struct.via_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_mtxunlock(i32 %62)
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @MC_SGD_CHANNELS(i32) #1

declare dso_local i32 @SLOT3(i32) #1

declare dso_local i32 @SLOT4(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
