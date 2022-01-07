; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_setextmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_setextmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32, i32, i32, i32 }

@AC97_EXTCAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ac97 invalid mode set 0x%04x\0A\00", align 1
@AC97_REGEXT_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ac97_setextmode(%struct.ac97_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ac97_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ac97_info* %0, %struct.ac97_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @AC97_EXTCAPS, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %11 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %18 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %24 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_mtxlock(i32 %25)
  %27 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %28 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ac97_wrcd(%struct.ac97_info* %27, i32 %28, i32 %29)
  %31 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %32 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %33 = call i32 @ac97_rdcd(%struct.ac97_info* %31, i32 %32)
  %34 = load i32, i32* @AC97_EXTCAPS, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %37 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %39 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_mtxunlock(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %44 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 -1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %22, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
