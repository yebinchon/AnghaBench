; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_ms_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_ms_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@tk_ms_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_ticket*)* @fuse_ms_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_ms_push(%struct.fuse_ticket* %0) #0 {
  %2 = alloca %struct.fuse_ticket*, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %2, align 8
  %3 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %4 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %10 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %9, i32 0, i32 1
  %11 = call i32 @refcount_acquire(i32* %10)
  %12 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %13 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %17 = load i32, i32* @tk_ms_link, align 4
  %18 = call i32 @STAILQ_INSERT_TAIL(i32* %15, %struct.fuse_ticket* %16, i32 %17)
  %19 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %20 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fuse_ticket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
