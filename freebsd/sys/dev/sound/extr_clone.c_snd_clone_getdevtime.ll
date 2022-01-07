; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_getdevtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_getdevtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_clone_entry* }
%struct.snd_clone_entry = type { %struct.timespec, i32* }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NULL timespec\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_getdevtime(%struct.cdev* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.snd_clone_entry*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = icmp ne %struct.cdev* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @SND_CLONE_ASSERT(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.timespec*, %struct.timespec** %5, align 8
  %12 = icmp ne %struct.timespec* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @SND_CLONE_ASSERT(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.cdev*, %struct.cdev** %4, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %16, align 8
  store %struct.snd_clone_entry* %17, %struct.snd_clone_entry** %6, align 8
  %18 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %19 = icmp eq %struct.snd_clone_entry* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %24 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @SND_CLONE_ASSERT(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.timespec*, %struct.timespec** %5, align 8
  %30 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %6, align 8
  %31 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %30, i32 0, i32 0
  %32 = bitcast %struct.timespec* %29 to i8*
  %33 = bitcast %struct.timespec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %33, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
