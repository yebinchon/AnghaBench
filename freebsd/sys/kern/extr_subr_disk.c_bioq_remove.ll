; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_queue_head = type { i32, i32, %struct.bio*, i64 }
%struct.bio = type { i64, i64 }

@bio_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioq_remove(%struct.bio_queue_head* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio_queue_head*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio_queue_head* %0, %struct.bio_queue_head** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %6 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %5, i32 0, i32 2
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = icmp eq %struct.bio* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %12 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %11, i32 0, i32 1
  %13 = call %struct.bio* @TAILQ_FIRST(i32* %12)
  %14 = icmp eq %struct.bio* %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %24 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %15, %9
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %29 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %28, i32 0, i32 2
  %30 = load %struct.bio*, %struct.bio** %29, align 8
  %31 = icmp eq %struct.bio* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %34 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %33, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %38 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %37, i32 0, i32 1
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = load i32, i32* @bio_queue, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* %38, %struct.bio* %39, i32 %40)
  %42 = load %struct.bio_queue_head*, %struct.bio_queue_head** %3, align 8
  %43 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local %struct.bio* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
