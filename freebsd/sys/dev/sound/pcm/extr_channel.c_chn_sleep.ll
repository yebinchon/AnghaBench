; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32, i32 }

@CHN_F_DEAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHN_F_SLEEPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_channel*, i32)* @chn_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chn_sleep(%struct.pcm_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %8 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %7)
  %9 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %10 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CHN_F_DEAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* @CHN_F_SLEEPING, align 4
  %19 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %20 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %24 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %23, i32 0, i32 2
  %25 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %26 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cv_timedwait_sig(i32* %24, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @CHN_F_SLEEPING, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %33 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %37 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CHN_F_DEAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %17
  %43 = load i32, i32* @EINVAL, align 4
  br label %46

44:                                               ; preds = %17
  %45 = load i32, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
