; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_cdevinfo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_cdevinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32 }
%struct.dsp_cdevinfo = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"NULL snddev_info\00", align 1
@DSP_CDEVINFO_CACHESIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_cdevinfo_init(%struct.snddev_info* %0) #0 {
  %2 = alloca %struct.snddev_info*, align 8
  %3 = alloca %struct.dsp_cdevinfo*, align 8
  %4 = alloca i32, align 4
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
  %15 = call i32 @TAILQ_INIT(i32* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DSP_CDEVINFO_CACHESIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.dsp_cdevinfo* @malloc(i32 4, i32 %21, i32 %24)
  store %struct.dsp_cdevinfo* %25, %struct.dsp_cdevinfo** %3, align 8
  %26 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %27 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %26, i32 0, i32 0
  %28 = load %struct.dsp_cdevinfo*, %struct.dsp_cdevinfo** %3, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @TAILQ_INSERT_HEAD(i32* %27, %struct.dsp_cdevinfo* %28, i32 %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %16

34:                                               ; preds = %16
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_UNLOCKASSERT(%struct.snddev_info*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.dsp_cdevinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.dsp_cdevinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
