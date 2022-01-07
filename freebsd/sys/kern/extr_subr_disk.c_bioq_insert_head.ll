; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_insert_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_insert_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_queue_head = type { i64, i32, i32, i32, i32* }
%struct.bio = type { i32 }

@bio_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioq_insert_head(%struct.bio_queue_head* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio_queue_head*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio_queue_head* %0, %struct.bio_queue_head** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %6 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %14 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %17 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %16, i32 0, i32 2
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = load i32, i32* @bio_queue, align 4
  %20 = call i32 @TAILQ_INSERT_HEAD(i32* %17, %struct.bio* %18, i32 %19)
  %21 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %22 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %26 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
