; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_bioq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_queue_head = type { i64, i64, i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioq_init(%struct.bio_queue_head* %0) #0 {
  %2 = alloca %struct.bio_queue_head*, align 8
  store %struct.bio_queue_head* %0, %struct.bio_queue_head** %2, align 8
  %3 = load %struct.bio_queue_head*, %struct.bio_queue_head** %2, align 8
  %4 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %3, i32 0, i32 4
  %5 = call i32 @TAILQ_INIT(i32* %4)
  %6 = load %struct.bio_queue_head*, %struct.bio_queue_head** %2, align 8
  %7 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.bio_queue_head*, %struct.bio_queue_head** %2, align 8
  %9 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.bio_queue_head*, %struct.bio_queue_head** %2, align 8
  %11 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.bio_queue_head*, %struct.bio_queue_head** %2, align 8
  %13 = getelementptr inbounds %struct.bio_queue_head, %struct.bio_queue_head* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
