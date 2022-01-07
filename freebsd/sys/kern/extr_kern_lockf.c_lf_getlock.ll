; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_getlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32 }
%struct.lockf_entry = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.flock = type { i64, i64, i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i32 0, align 4
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf*, %struct.lockf_entry*, %struct.flock*)* @lf_getlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_getlock(%struct.lockf* %0, %struct.lockf_entry* %1, %struct.flock* %2) #0 {
  %4 = alloca %struct.lockf*, align 8
  %5 = alloca %struct.lockf_entry*, align 8
  %6 = alloca %struct.flock*, align 8
  %7 = alloca %struct.lockf_entry*, align 8
  store %struct.lockf* %0, %struct.lockf** %4, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %5, align 8
  store %struct.flock* %2, %struct.flock** %6, align 8
  %8 = load %struct.lockf*, %struct.lockf** %4, align 8
  %9 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %10 = call %struct.lockf_entry* @lf_getblock(%struct.lockf* %8, %struct.lockf_entry* %9)
  store %struct.lockf_entry* %10, %struct.lockf_entry** %7, align 8
  %11 = icmp ne %struct.lockf_entry* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %14 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.flock*, %struct.flock** %6, align 8
  %17 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = load %struct.flock*, %struct.flock** %6, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %22 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.flock*, %struct.flock** %6, align 8
  %25 = getelementptr inbounds %struct.flock, %struct.flock* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %27 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OFF_MAX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %12
  %32 = load %struct.flock*, %struct.flock** %6, align 8
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %45

34:                                               ; preds = %12
  %35 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %36 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %39 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = load %struct.flock*, %struct.flock** %6, align 8
  %44 = getelementptr inbounds %struct.flock, %struct.flock* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %34, %31
  %46 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %47 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.flock*, %struct.flock** %6, align 8
  %52 = getelementptr inbounds %struct.flock, %struct.flock* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  %54 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.flock*, %struct.flock** %6, align 8
  %59 = getelementptr inbounds %struct.flock, %struct.flock* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %3
  %61 = load i32, i32* @F_UNLCK, align 4
  %62 = load %struct.flock*, %struct.flock** %6, align 8
  %63 = getelementptr inbounds %struct.flock, %struct.flock* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %45
  ret i32 0
}

declare dso_local %struct.lockf_entry* @lf_getblock(%struct.lockf*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
