; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_clone_entry* }
%struct.snd_clone_entry = type { %struct.snd_clone* }
%struct.snd_clone = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NULL dev\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refcount <= 0\00", align 1
@SND_CLONE_GC_UNREF = common dso_local global i32 0, align 4
@SND_CLONE_GC_LASTREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_clone_unref(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.snd_clone_entry*, align 8
  %5 = alloca %struct.snd_clone*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %6 = load %struct.cdev*, %struct.cdev** %3, align 8
  %7 = icmp ne %struct.cdev* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @SND_CLONE_ASSERT(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cdev*, %struct.cdev** %3, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %11, align 8
  store %struct.snd_clone_entry* %12, %struct.snd_clone_entry** %4, align 8
  %13 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %14 = icmp eq %struct.snd_clone_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  %18 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %17, i32 0, i32 0
  %19 = load %struct.snd_clone*, %struct.snd_clone** %18, align 8
  store %struct.snd_clone* %19, %struct.snd_clone** %5, align 8
  %20 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %21 = icmp ne %struct.snd_clone* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @SND_CLONE_ASSERT(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %25 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @SND_CLONE_ASSERT(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %31 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %35 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SND_CLONE_GC_UNREF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %16
  %41 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %42 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SND_CLONE_GC_LASTREF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %49 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %54 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SND_CLONE_GC_LASTREF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %40
  %60 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %61 = call i32 @snd_clone_gc(%struct.snd_clone* %60)
  br label %62

62:                                               ; preds = %59, %52, %47, %16
  %63 = load %struct.snd_clone*, %struct.snd_clone** %5, align 8
  %64 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

declare dso_local i32 @snd_clone_gc(%struct.snd_clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
