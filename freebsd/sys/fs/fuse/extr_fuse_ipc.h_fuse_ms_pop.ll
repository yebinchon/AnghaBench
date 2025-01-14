; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_ms_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_ms_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.fuse_data = type { i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@tk_ms_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_ticket* (%struct.fuse_data*)* @fuse_ms_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_ticket* @fuse_ms_pop(%struct.fuse_data* %0) #0 {
  %2 = alloca %struct.fuse_data*, align 8
  %3 = alloca %struct.fuse_ticket*, align 8
  store %struct.fuse_data* %0, %struct.fuse_data** %2, align 8
  store %struct.fuse_ticket* null, %struct.fuse_ticket** %3, align 8
  %4 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %5 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %4, i32 0, i32 2
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %9 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %8, i32 0, i32 1
  %10 = call %struct.fuse_ticket* @STAILQ_FIRST(i32* %9)
  store %struct.fuse_ticket* %10, %struct.fuse_ticket** %3, align 8
  %11 = icmp ne %struct.fuse_ticket* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %14 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %13, i32 0, i32 1
  %15 = load i32, i32* @tk_ms_link, align 4
  %16 = call i32 @STAILQ_REMOVE_HEAD(i32* %14, i32 %15)
  %17 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %18 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  ret %struct.fuse_ticket* %22
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.fuse_ticket* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
