; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_syncdestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_syncdestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { %struct.pcmchan_syncmember* }
%struct.pcmchan_syncmember = type { i32, i32, %struct.pcmchan_syncmember* }
%struct.pcmchan_syncgroup = type { i32, i32, %struct.pcmchan_syncgroup* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"syncmember has null parent\00", align 1
@pcmchan_syncmember = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@snd_pcm_syncgroups = common dso_local global i32 0, align 4
@pcmchan_syncgroup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_syncdestroy(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.pcmchan_syncmember*, align 8
  %4 = alloca %struct.pcmchan_syncgroup*, align 8
  %5 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @PCM_SG_LOCKASSERT(i32 %6)
  %8 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %8, i32 0, i32 0
  %10 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %9, align 8
  %11 = icmp ne %struct.pcmchan_syncmember* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %14 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %13, i32 0, i32 0
  %15 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %14, align 8
  store %struct.pcmchan_syncmember* %15, %struct.pcmchan_syncmember** %3, align 8
  %16 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %3, align 8
  %17 = getelementptr inbounds %struct.pcmchan_syncmember, %struct.pcmchan_syncmember* %16, i32 0, i32 2
  %18 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %17, align 8
  %19 = bitcast %struct.pcmchan_syncmember* %18 to %struct.pcmchan_syncgroup*
  store %struct.pcmchan_syncgroup* %19, %struct.pcmchan_syncgroup** %4, align 8
  %20 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %21 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %20, i32 0, i32 0
  store %struct.pcmchan_syncmember* null, %struct.pcmchan_syncmember** %21, align 8
  %22 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %23 = icmp ne %struct.pcmchan_syncgroup* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %27 = getelementptr inbounds %struct.pcmchan_syncgroup, %struct.pcmchan_syncgroup* %26, i32 0, i32 1
  %28 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %3, align 8
  %29 = load i32, i32* @pcmchan_syncmember, align 4
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @SLIST_REMOVE(i32* %27, %struct.pcmchan_syncmember* %28, i32 %29, i32 %30)
  %32 = load %struct.pcmchan_syncmember*, %struct.pcmchan_syncmember** %3, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.pcmchan_syncmember* %32, i32 %33)
  %35 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %36 = getelementptr inbounds %struct.pcmchan_syncgroup, %struct.pcmchan_syncgroup* %35, i32 0, i32 1
  %37 = call i64 @SLIST_EMPTY(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %12
  %40 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %41 = bitcast %struct.pcmchan_syncgroup* %40 to %struct.pcmchan_syncmember*
  %42 = load i32, i32* @pcmchan_syncgroup, align 4
  %43 = load i32, i32* @link, align 4
  %44 = call i32 @SLIST_REMOVE(i32* @snd_pcm_syncgroups, %struct.pcmchan_syncmember* %41, i32 %42, i32 %43)
  %45 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %46 = getelementptr inbounds %struct.pcmchan_syncgroup, %struct.pcmchan_syncgroup* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load %struct.pcmchan_syncgroup*, %struct.pcmchan_syncgroup** %4, align 8
  %49 = bitcast %struct.pcmchan_syncgroup* %48 to %struct.pcmchan_syncmember*
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(%struct.pcmchan_syncmember* %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %12
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @PCM_SG_LOCKASSERT(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.pcmchan_syncmember*, i32, i32) #1

declare dso_local i32 @free(%struct.pcmchan_syncmember*, i32) #1

declare dso_local i64 @SLIST_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
