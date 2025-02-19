; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_validity_2_bintime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_validity_2_bintime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i64 }
%struct.timespec = type { i64, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.bintime*)* @fuse_validity_2_bintime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_validity_2_bintime(i64 %0, i32 %1, %struct.bintime* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bintime*, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bintime* %2, %struct.bintime** %6, align 8
  %10 = call i32 @getnanouptime(%struct.timespec* %7)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %15, %17
  %19 = add nsw i64 %18, 2
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14, %3
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = load %struct.bintime*, %struct.bintime** %6, align 8
  %25 = getelementptr inbounds %struct.bintime, %struct.bintime* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %34

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = call i32 @timespecadd(%struct.timespec* %8, %struct.timespec* %7, %struct.timespec* %9)
  %32 = load %struct.bintime*, %struct.bintime** %6, align 8
  %33 = call i32 @timespec2bintime(%struct.timespec* %9, %struct.bintime* %32)
  br label %34

34:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespec2bintime(%struct.timespec*, %struct.bintime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
