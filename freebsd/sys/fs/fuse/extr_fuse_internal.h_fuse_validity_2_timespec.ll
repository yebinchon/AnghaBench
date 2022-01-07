; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_validity_2_timespec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_validity_2_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_entry_out = type { i64, i32 }
%struct.timespec = type { i64, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_entry_out*, %struct.timespec*)* @fuse_validity_2_timespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_validity_2_timespec(%struct.fuse_entry_out* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.fuse_entry_out*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  store %struct.fuse_entry_out* %0, %struct.fuse_entry_out** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = call i32 @getnanouptime(%struct.timespec* %6)
  %8 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %3, align 8
  %9 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %16, %18
  %20 = add nsw i64 %19, 2
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13, %2
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = load %struct.timespec*, %struct.timespec** %4, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %38

27:                                               ; preds = %13
  %28 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %3, align 8
  %29 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %3, align 8
  %33 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.timespec*, %struct.timespec** %4, align 8
  %37 = call i32 @timespecadd(%struct.timespec* %5, %struct.timespec* %6, %struct.timespec* %36)
  br label %38

38:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
