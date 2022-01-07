; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_cdevinfo_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_cdevinfo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32 }
%struct.dsp_cdevinfo = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"NULL snddev_info\00", align 1
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_cdevinfo_flush(%struct.snddev_info* %0) #0 {
  %2 = alloca %struct.snddev_info*, align 8
  %3 = alloca %struct.dsp_cdevinfo*, align 8
  %4 = alloca %struct.dsp_cdevinfo*, align 8
  store %struct.snddev_info* %0, %struct.snddev_info** %2, align 8
  %5 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %6 = icmp ne %struct.snddev_info* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %10 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %9)
  %11 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %12 = call i32 @PCM_UNLOCKASSERT(%struct.snddev_info* %11)
  %13 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %14 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %13, i32 0, i32 0
  %15 = call %struct.dsp_cdevinfo* @TAILQ_FIRST(i32* %14)
  store %struct.dsp_cdevinfo* %15, %struct.dsp_cdevinfo** %3, align 8
  br label %16

16:                                               ; preds = %19, %1
  %17 = load %struct.dsp_cdevinfo*, %struct.dsp_cdevinfo** %3, align 8
  %18 = icmp ne %struct.dsp_cdevinfo* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.dsp_cdevinfo*, %struct.dsp_cdevinfo** %3, align 8
  %21 = load i32, i32* @link, align 4
  %22 = call %struct.dsp_cdevinfo* @TAILQ_NEXT(%struct.dsp_cdevinfo* %20, i32 %21)
  store %struct.dsp_cdevinfo* %22, %struct.dsp_cdevinfo** %4, align 8
  %23 = load %struct.dsp_cdevinfo*, %struct.dsp_cdevinfo** %3, align 8
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = call i32 @free(%struct.dsp_cdevinfo* %23, i32 %24)
  %26 = load %struct.dsp_cdevinfo*, %struct.dsp_cdevinfo** %4, align 8
  store %struct.dsp_cdevinfo* %26, %struct.dsp_cdevinfo** %3, align 8
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %29 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %28, i32 0, i32 0
  %30 = call i32 @TAILQ_INIT(i32* %29)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_UNLOCKASSERT(%struct.snddev_info*) #1

declare dso_local %struct.dsp_cdevinfo* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.dsp_cdevinfo* @TAILQ_NEXT(%struct.dsp_cdevinfo*, i32) #1

declare dso_local i32 @free(%struct.dsp_cdevinfo*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
