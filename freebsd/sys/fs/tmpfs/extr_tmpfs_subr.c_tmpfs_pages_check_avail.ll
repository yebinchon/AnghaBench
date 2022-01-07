; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_pages_check_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_pages_check_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tmpfs_mount*, i64)* @tmpfs_pages_check_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmpfs_pages_check_avail(%struct.tmpfs_mount* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tmpfs_mount*, align 8
  %5 = alloca i64, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i64 (...) @tmpfs_mem_avail()
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ULONG_MAX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %4, align 8
  %18 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %4, align 8
  %22 = call i64 @tmpfs_pages_used(%struct.tmpfs_mount* %21)
  %23 = add i64 %20, %22
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %27

26:                                               ; preds = %16, %10
  store i64 1, i64* %3, align 8
  br label %27

27:                                               ; preds = %26, %25, %9
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @tmpfs_mem_avail(...) #1

declare dso_local i64 @tmpfs_pages_used(%struct.tmpfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
