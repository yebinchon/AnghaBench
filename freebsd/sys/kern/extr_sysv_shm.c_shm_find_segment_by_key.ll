; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_find_segment_by_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_find_segment_by_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.prison* }
%struct.prison = type { i32 }

@shmalloced = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.TYPE_8__* null, align 8
@SHMSEG_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prison*, i64)* @shm_find_segment_by_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_find_segment_by_key(%struct.prison* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @shmalloced, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SHMSEG_ALLOCATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %11
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.prison*, %struct.prison** %38, align 8
  %40 = load %struct.prison*, %struct.prison** %4, align 8
  %41 = icmp eq %struct.prison* %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %42, %31, %23, %11
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %7

59:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
