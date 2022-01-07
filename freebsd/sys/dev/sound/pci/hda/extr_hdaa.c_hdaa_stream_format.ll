; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_stream_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i64 }
%struct.hdaa_chan = type { i32, i32, i32, i64 }

@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_S32_LE = common dso_local global i32 0, align 4
@HDA_RATE_TAB_LEN = common dso_local global i32 0, align 4
@hda_rate_tab = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_chan*)* @hdaa_stream_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_stream_format(%struct.hdaa_chan* %0) #0 {
  %2 = alloca %struct.hdaa_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hdaa_chan* %0, %struct.hdaa_chan** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %6 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AFMT_S16_LE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AFMT_S32_LE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %27 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 16
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %11
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @HDA_RATE_TAB_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_rate_tab, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %41
  %50 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %51 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_rate_tab, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %52, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %49
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_rate_tab, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_rate_tab, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hda_rate_tab, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %49, %41
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %37

89:                                               ; preds = %60, %37
  %90 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %91 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @AFMT_CHANNEL(i32 %92)
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
