; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtqueue.c_virtqueue_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [164 x i8] c"VQ: %s - size=%d; free=%d; used=%d; queued=%d; desc_head_idx=%d; avail.idx=%d; used_cons_idx=%d; used.idx=%d; used_event_idx=%d; avail.flags=0x%x; used.flags=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtqueue_dump(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %3 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %4 = icmp eq %struct.virtqueue* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %55

6:                                                ; preds = %1
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %17 = call i32 @virtqueue_nused(%struct.virtqueue* %16)
  %18 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %19 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %22 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %25 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %31 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %34 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %40 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %39, i32 0, i32 6
  %41 = call i32 @vring_used_event(%struct.TYPE_6__* %40)
  %42 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %43 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %49 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %12, i32 %15, i32 %17, i32 %20, i32 %23, i32 %29, i32 %32, i32 %38, i32 %41, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virtqueue_nused(%struct.virtqueue*) #1

declare dso_local i32 @vring_used_event(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
