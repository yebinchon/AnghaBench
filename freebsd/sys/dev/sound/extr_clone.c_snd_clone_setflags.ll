; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_clone = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"NULL snd_clone\00", align 1
@SND_CLONE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid clone flags=0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_setflags(%struct.snd_clone* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_clone*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_clone* %0, %struct.snd_clone** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_clone*, %struct.snd_clone** %3, align 8
  %6 = icmp ne %struct.snd_clone* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @SND_CLONE_ASSERT(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SND_CLONE_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @SND_CLONE_ASSERT(i32 %15, i8* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.snd_clone*, %struct.snd_clone** %3, align 8
  %22 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.snd_clone*, %struct.snd_clone** %3, align 8
  %24 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
