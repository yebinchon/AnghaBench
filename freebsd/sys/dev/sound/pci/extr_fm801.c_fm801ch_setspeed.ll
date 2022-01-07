; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801ch_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.fm801_chinfo = type { i64, i64, %struct.fm801_info* }
%struct.fm801_info = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@fm801_rates = common dso_local global %struct.TYPE_6__* null, align 8
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@FM_PLAY_RATE_MASK = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@FM_REC_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @fm801ch_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm801ch_setspeed(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fm801_chinfo*, align 8
  %8 = alloca %struct.fm801_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fm801_chinfo*
  store %struct.fm801_chinfo* %11, %struct.fm801_chinfo** %7, align 8
  %12 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %7, align 8
  %13 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %12, i32 0, i32 2
  %14 = load %struct.fm801_info*, %struct.fm801_info** %13, align 8
  store %struct.fm801_info* %14, %struct.fm801_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fm801_rates, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp sle i64 %24, %25
  br label %27

27:                                               ; preds = %18, %15
  %28 = phi i1 [ false, %15 ], [ %26, %18 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %15

33:                                               ; preds = %27
  %34 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %7, align 8
  %35 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCMDIR_PLAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fm801_rates, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %47 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 8
  %51 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %52 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @FM_PLAY_RATE_MASK, align 4
  %54 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %55 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %39, %33
  %59 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %7, align 8
  %60 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCMDIR_REC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fm801_rates, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %72 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 8
  %76 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %77 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @FM_REC_RATE_MASK, align 4
  %79 = load %struct.fm801_info*, %struct.fm801_info** %8, align 8
  %80 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %64, %58
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fm801_rates, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fm801_chinfo*, %struct.fm801_chinfo** %7, align 8
  %91 = getelementptr inbounds %struct.fm801_chinfo, %struct.fm801_chinfo* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fm801_rates, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  ret i64 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
