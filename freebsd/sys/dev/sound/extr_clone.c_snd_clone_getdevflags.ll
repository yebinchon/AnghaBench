; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_getdevflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_getdevflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_clone_entry* }
%struct.snd_clone_entry = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_getdevflags(%struct.cdev* %0) #0 {
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
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %17 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @SND_CLONE_ASSERT(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %23 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
