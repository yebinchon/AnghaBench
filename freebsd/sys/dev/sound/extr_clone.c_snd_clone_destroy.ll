; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_clone = type { i32*, i32 }
%struct.snd_clone_entry = type { i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"NULL snd_clone\00", align 1
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_clone_destroy(%struct.snd_clone* %0) #0 {
  %2 = alloca %struct.snd_clone*, align 8
  %3 = alloca %struct.snd_clone_entry*, align 8
  %4 = alloca %struct.snd_clone_entry*, align 8
  store %struct.snd_clone* %0, %struct.snd_clone** %2, align 8
  %5 = load %struct.snd_clone*, %struct.snd_clone** %2, align 8
  %6 = icmp ne %struct.snd_clone* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @SND_CLONE_ASSERT(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snd_clone*, %struct.snd_clone** %2, align 8
  %10 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %9, i32 0, i32 1
  %11 = call %struct.snd_clone_entry* @TAILQ_FIRST(i32* %10)
  store %struct.snd_clone_entry* %11, %struct.snd_clone_entry** %3, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %14 = icmp ne %struct.snd_clone_entry* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call %struct.snd_clone_entry* @TAILQ_NEXT(%struct.snd_clone_entry* %16, i32 %17)
  store %struct.snd_clone_entry* %18, %struct.snd_clone_entry** %4, align 8
  %19 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %20 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %25 = getelementptr inbounds %struct.snd_clone_entry, %struct.snd_clone_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @destroy_dev(i32* %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %3, align 8
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = call i32 @free(%struct.snd_clone_entry* %29, i32 %30)
  %32 = load %struct.snd_clone_entry*, %struct.snd_clone_entry** %4, align 8
  store %struct.snd_clone_entry* %32, %struct.snd_clone_entry** %3, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.snd_clone*, %struct.snd_clone** %2, align 8
  %35 = bitcast %struct.snd_clone* %34 to %struct.snd_clone_entry*
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = call i32 @free(%struct.snd_clone_entry* %35, i32 %36)
  ret void
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

declare dso_local %struct.snd_clone_entry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.snd_clone_entry* @TAILQ_NEXT(%struct.snd_clone_entry*, i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @free(%struct.snd_clone_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
