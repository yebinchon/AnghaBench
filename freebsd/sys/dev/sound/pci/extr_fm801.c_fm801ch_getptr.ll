; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_chinfo = type { i64, %struct.fm801_info* }
%struct.fm801_info = type { i32, i32, i64, i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@FM_PLAY_DMABUF2 = common dso_local global i32 0, align 4
@FM_PLAY_DMABUF1 = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@FM_REC_DMABUF2 = common dso_local global i32 0, align 4
@FM_REC_DMABUF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @fm801ch_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm801ch_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fm801_chinfo*, align 8
  %6 = alloca %struct.fm801_info*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fm801_chinfo*
  store %struct.fm801_chinfo* %9, %struct.fm801_chinfo** %5, align 8
  %10 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %5, align 8
  %11 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %10, i32 0, i32 1
  %12 = load %struct.fm801_info*, %struct.fm801_info** %11, align 8
  store %struct.fm801_info* %12, %struct.fm801_info** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %5, align 8
  %14 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCMDIR_PLAY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %20 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %21 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @FM_PLAY_DMABUF2, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @FM_PLAY_DMABUF1, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i64 @fm801_rd(%struct.fm801_info* %19, i32 %30, i32 4)
  %32 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %33 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %5, align 8
  %38 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCMDIR_REC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %44 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %45 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @FM_REC_DMABUF2, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @FM_REC_DMABUF1, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i64 @fm801_rd(%struct.fm801_info* %43, i32 %54, i32 4)
  %56 = load %struct.fm801_info*, %struct.fm801_info** %6, align 8
  %57 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %53, %36
  %61 = load i64, i64* %7, align 8
  ret i64 %61
}

declare dso_local i64 @fm801_rd(%struct.fm801_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
