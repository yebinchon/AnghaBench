; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_eq.c_feed_eq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.pcm_feeder = type { %struct.feed_eq_info*, %struct.TYPE_5__* }
%struct.feed_eq_info = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FEEDEQ_BIQUAD_TAB_SIZE = common dso_local global i32 0, align 4
@feed_eq_biquad_tab = common dso_local global %struct.TYPE_8__* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FEEDEQ_RATE_MIN = common dso_local global i32 0, align 4
@FEEDEQ_PREAMP_DEFAULT = common dso_local global i32 0, align 4
@FEEDEQ_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @feed_eq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_eq_init(%struct.pcm_feeder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca %struct.feed_eq_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %3, align 8
  %7 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %8 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %13 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %117

20:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FEEDEQ_BIQUAD_TAB_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %55

30:                                               ; preds = %28
  %31 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %32 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @AFMT_ENCODING(i64 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @feed_eq_biquad_tab, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @feed_eq_biquad_tab, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %44, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %21

55:                                               ; preds = %28
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %2, align 4
  br label %117

60:                                               ; preds = %55
  %61 = load i32, i32* @M_DEVBUF, align 4
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = load i32, i32* @M_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.feed_eq_info* @malloc(i32 48, i32 %61, i32 %64)
  store %struct.feed_eq_info* %65, %struct.feed_eq_info** %4, align 8
  %66 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %67 = icmp eq %struct.feed_eq_info* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %60
  %71 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %72 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @AFMT_CHANNEL(i64 %75)
  %77 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %78 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %80 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %83 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @AFMT_BPS(i64 %86)
  %88 = mul nsw i32 %81, %87
  %89 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %90 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @FEEDEQ_RATE_MIN, align 4
  %92 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %93 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = call i8* @FEEDEQ_L2GAIN(i32 50)
  %95 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %96 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = call i8* @FEEDEQ_L2GAIN(i32 50)
  %99 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %100 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load i32, i32* @FEEDEQ_PREAMP_DEFAULT, align 4
  %103 = call i32 @FEEDEQ_PREAMP2IDX(i32 %102)
  %104 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %105 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @FEEDEQ_UNKNOWN, align 4
  %107 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %108 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %111 = getelementptr inbounds %struct.feed_eq_info, %struct.feed_eq_info* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  %112 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %113 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %114 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %113, i32 0, i32 0
  store %struct.feed_eq_info* %112, %struct.feed_eq_info** %114, align 8
  %115 = load %struct.feed_eq_info*, %struct.feed_eq_info** %4, align 8
  %116 = call i32 @feed_eq_setup(%struct.feed_eq_info* %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %70, %68, %58, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @AFMT_ENCODING(i64) #1

declare dso_local %struct.feed_eq_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i64) #1

declare dso_local i32 @AFMT_BPS(i64) #1

declare dso_local i8* @FEEDEQ_L2GAIN(i32) #1

declare dso_local i32 @FEEDEQ_PREAMP2IDX(i32) #1

declare dso_local i32 @feed_eq_setup(%struct.feed_eq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
