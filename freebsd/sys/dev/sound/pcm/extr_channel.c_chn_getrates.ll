; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_getrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_getrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"rates is null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_getrates(%struct.pcm_channel* %0, i32** %1) #0 {
  %3 = alloca %struct.pcm_channel*, align 8
  %4 = alloca i32**, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load i32**, i32*** %4, align 8
  %6 = icmp ne i32** %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %10 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %9)
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %15 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32 @CHANNEL_GETRATES(i32 %13, i32 %16, i32** %17)
  ret i32 %18
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @CHANNEL_GETRATES(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
