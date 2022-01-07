; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VIA_PLAY_STAT = common dso_local global i32 0, align 4
@VIA_RPSTAT_INTR = common dso_local global i32 0, align 4
@VIA_RECORD_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @via_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.via_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.via_info*
  store %struct.via_info* %5, %struct.via_info** %3, align 8
  %6 = load %struct.via_info*, %struct.via_info** %3, align 8
  %7 = getelementptr inbounds %struct.via_info, %struct.via_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_mtxlock(i32 %8)
  %10 = load %struct.via_info*, %struct.via_info** %3, align 8
  %11 = load i32, i32* @VIA_PLAY_STAT, align 4
  %12 = call i32 @via_rd(%struct.via_info* %10, i32 %11, i32 1)
  %13 = load i32, i32* @VIA_RPSTAT_INTR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.via_info*, %struct.via_info** %3, align 8
  %18 = load i32, i32* @VIA_PLAY_STAT, align 4
  %19 = load i32, i32* @VIA_RPSTAT_INTR, align 4
  %20 = call i32 @via_wr(%struct.via_info* %17, i32 %18, i32 %19, i32 1)
  %21 = load %struct.via_info*, %struct.via_info** %3, align 8
  %22 = getelementptr inbounds %struct.via_info, %struct.via_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_mtxunlock(i32 %23)
  %25 = load %struct.via_info*, %struct.via_info** %3, align 8
  %26 = getelementptr inbounds %struct.via_info, %struct.via_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @chn_intr(i32 %28)
  %30 = load %struct.via_info*, %struct.via_info** %3, align 8
  %31 = getelementptr inbounds %struct.via_info, %struct.via_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_mtxlock(i32 %32)
  br label %34

34:                                               ; preds = %16, %1
  %35 = load %struct.via_info*, %struct.via_info** %3, align 8
  %36 = load i32, i32* @VIA_RECORD_STAT, align 4
  %37 = call i32 @via_rd(%struct.via_info* %35, i32 %36, i32 1)
  %38 = load i32, i32* @VIA_RPSTAT_INTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.via_info*, %struct.via_info** %3, align 8
  %43 = load i32, i32* @VIA_RECORD_STAT, align 4
  %44 = load i32, i32* @VIA_RPSTAT_INTR, align 4
  %45 = call i32 @via_wr(%struct.via_info* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.via_info*, %struct.via_info** %3, align 8
  %47 = getelementptr inbounds %struct.via_info, %struct.via_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_mtxunlock(i32 %48)
  %50 = load %struct.via_info*, %struct.via_info** %3, align 8
  %51 = getelementptr inbounds %struct.via_info, %struct.via_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @chn_intr(i32 %53)
  br label %60

55:                                               ; preds = %34
  %56 = load %struct.via_info*, %struct.via_info** %3, align 8
  %57 = getelementptr inbounds %struct.via_info, %struct.via_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_mtxunlock(i32 %58)
  br label %60

60:                                               ; preds = %55, %41
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_rd(%struct.via_info*, i32, i32) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
