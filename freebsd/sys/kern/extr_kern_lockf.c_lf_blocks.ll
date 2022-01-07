; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf_entry = type { i64, i64 }

@F_WRLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf_entry*, %struct.lockf_entry*)* @lf_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_blocks(%struct.lockf_entry* %0, %struct.lockf_entry* %1) #0 {
  %3 = alloca %struct.lockf_entry*, align 8
  %4 = alloca %struct.lockf_entry*, align 8
  store %struct.lockf_entry* %0, %struct.lockf_entry** %3, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %4, align 8
  %5 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %6 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %9 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %14 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @F_WRLCK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %20 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @F_WRLCK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %12
  %25 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %26 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %27 = call i64 @lf_overlaps(%struct.lockf_entry* %25, %struct.lockf_entry* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %18, %2
  %30 = phi i1 [ false, %18 ], [ false, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @lf_overlaps(%struct.lockf_entry*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
