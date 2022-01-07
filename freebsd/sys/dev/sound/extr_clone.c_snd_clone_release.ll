; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_clone_entry* }
%struct.snd_clone_entry = type { i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1
@SND_CLONE_INVOKE = common dso_local global i32 0, align 4
@SND_CLONE_BUSY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_release(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.snd_clone_entry*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %5 = load %struct.cdev*, %struct.cdev** %3, align 8
  %6 = icmp ne %struct.cdev* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @SND_CLONE_ASSERT(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cdev*, %struct.cdev** %3, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %10, align 8
  store %struct.snd_clone_entry* %11, %struct.snd_clone_entry** %4, align 8
  %12 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %13 = icmp eq %struct.snd_clone_entry* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %18 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @SND_CLONE_ASSERT(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SND_CLONE_INVOKE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %26 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %30 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SND_CLONE_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* @EBADF, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %16
  %38 = load i32, i32* @SND_CLONE_BUSY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %41 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %45 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %35, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
