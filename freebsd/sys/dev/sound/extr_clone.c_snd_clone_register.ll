; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_clone_entry = type { i32, i64, %struct.cdev*, i32* }
%struct.cdev = type { %struct.snd_clone_entry* }

@.str = private unnamed_addr constant [21 x i8] c"NULL snd_clone_entry\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dev->si_drv2 not NULL\00", align 1
@SND_CLONE_ALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid clone alloc flags=0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ce->devt not NULL\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"invalid unit ce->unit=0x%08x dev2unit=0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1
@SND_CLONE_INVOKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_clone_register(%struct.snd_clone_entry* %0, %struct.cdev* %1) #0 {
  %3 = alloca %struct.snd_clone_entry*, align 8
  %4 = alloca %struct.cdev*, align 8
  store %struct.snd_clone_entry* %0, %struct.snd_clone_entry** %3, align 8
  store %struct.cdev* %1, %struct.cdev** %4, align 8
  %5 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %6 = icmp ne %struct.snd_clone_entry* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @SND_CLONE_ASSERT(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cdev*, %struct.cdev** %4, align 8
  %10 = icmp ne %struct.cdev* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @SND_CLONE_ASSERT(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.cdev*, %struct.cdev** %4, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %14, align 8
  %16 = icmp eq %struct.snd_clone_entry* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @SND_CLONE_ASSERT(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %20 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SND_CLONE_ALLOC, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @SND_CLONE_ALLOC, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %28 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @SND_CLONE_ASSERT(i32 %26, i8* %31)
  %33 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %34 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %33, i32 0, i32 2
  %35 = load %struct.cdev*, %struct.cdev** %34, align 8
  %36 = icmp eq %struct.cdev* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @SND_CLONE_ASSERT(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %40 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cdev*, %struct.cdev** %4, align 8
  %43 = call i64 @dev2unit(%struct.cdev* %42)
  %44 = icmp eq i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %47 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cdev*, %struct.cdev** %4, align 8
  %50 = call i64 @dev2unit(%struct.cdev* %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @SND_CLONE_ASSERT(i32 %45, i8* %51)
  %53 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %54 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @SND_CLONE_ASSERT(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %59 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %60 = load %struct.cdev*, %struct.cdev** %4, align 8
  %61 = getelementptr inbounds %struct.cdev, %struct.cdev* %60, i32 0, i32 0
  store %struct.snd_clone_entry* %59, %struct.snd_clone_entry** %61, align 8
  %62 = load %struct.cdev*, %struct.cdev** %4, align 8
  %63 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %64 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %63, i32 0, i32 2
  store %struct.cdev* %62, %struct.cdev** %64, align 8
  %65 = load i32, i32* @SND_CLONE_ALLOC, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %68 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @SND_CLONE_INVOKE, align 4
  %72 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %73 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  ret void
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
