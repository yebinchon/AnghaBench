; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.chunk* }
%struct.TYPE_4__ = type { i32 }

@image_chunks = common dso_local global i32 0, align 4
@ch_list = common dso_local global i32 0, align 4
@image_swap_fd = common dso_local global i32 0, align 4
@image_swap_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @image_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_cleanup() #0 {
  %1 = alloca %struct.chunk*, align 8
  br label %2

2:                                                ; preds = %32, %0
  %3 = call %struct.chunk* @TAILQ_FIRST(i32* @image_chunks)
  store %struct.chunk* %3, %struct.chunk** %1, align 8
  %4 = icmp ne %struct.chunk* %3, null
  br i1 %4, label %5, label %38

5:                                                ; preds = %2
  %6 = load %struct.chunk*, %struct.chunk** %1, align 8
  %7 = getelementptr inbounds %struct.chunk, %struct.chunk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %24
  ]

9:                                                ; preds = %5
  %10 = load %struct.chunk*, %struct.chunk** %1, align 8
  %11 = getelementptr inbounds %struct.chunk, %struct.chunk* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.chunk*, %struct.chunk** %1, align 8
  %18 = getelementptr inbounds %struct.chunk, %struct.chunk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @close(i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  br label %32

24:                                               ; preds = %5
  %25 = load %struct.chunk*, %struct.chunk** %1, align 8
  %26 = getelementptr inbounds %struct.chunk, %struct.chunk* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.chunk*, %struct.chunk** %28, align 8
  %30 = call i32 @free(%struct.chunk* %29)
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %24, %23
  %33 = load %struct.chunk*, %struct.chunk** %1, align 8
  %34 = load i32, i32* @ch_list, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* @image_chunks, %struct.chunk* %33, i32 %34)
  %36 = load %struct.chunk*, %struct.chunk** %1, align 8
  %37 = call i32 @free(%struct.chunk* %36)
  br label %2

38:                                               ; preds = %2
  %39 = load i32, i32* @image_swap_fd, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @image_swap_fd, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @image_swap_file, align 4
  %46 = call i32 @unlink(i32 %45)
  ret void
}

declare dso_local %struct.chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.chunk*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.chunk*, i32) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
