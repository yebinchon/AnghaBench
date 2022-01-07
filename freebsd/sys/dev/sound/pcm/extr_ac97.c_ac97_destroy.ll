; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32, i32* }

@M_AC97 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ac97_destroy(%struct.ac97_info* %0) #0 {
  %2 = alloca %struct.ac97_info*, align 8
  store %struct.ac97_info* %0, %struct.ac97_info** %2, align 8
  %3 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %4 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @snd_mtxlock(i32 %5)
  %7 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %8 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %13 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @M_AC97, align 4
  %16 = call i32 @kobj_delete(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %19 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snd_mtxfree(i32 %20)
  %22 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %23 = load i32, i32* @M_AC97, align 4
  %24 = call i32 @free(%struct.ac97_info* %22, i32 %23)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @kobj_delete(i32*, i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.ac97_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
