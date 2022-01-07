; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_setdevflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_setdevflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_clone_entry* }
%struct.snd_clone_entry = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@SND_CLONE_DEVMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid clone dev flags=0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_setdevflags(%struct.cdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_clone_entry*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = icmp ne %struct.cdev* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @SND_CLONE_ASSERT(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_CLONE_DEVMASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @SND_CLONE_ASSERT(i32 %17, i8* %20)
  %22 = load %struct.cdev*, %struct.cdev** %4, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %23, align 8
  store %struct.snd_clone_entry* %24, %struct.snd_clone_entry** %6, align 8
  %25 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %26 = icmp eq %struct.snd_clone_entry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %30 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @SND_CLONE_ASSERT(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %37 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %39 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
