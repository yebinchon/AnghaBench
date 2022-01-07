; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_set_dead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_set_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_data = type { i32, i32, i32, i32 }

@FSESS_DEAD = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdata_set_dead(%struct.fuse_data* %0) #0 {
  %2 = alloca %struct.fuse_data*, align 8
  store %struct.fuse_data* %0, %struct.fuse_data** %2, align 8
  %3 = call i32 (...) @FUSE_LOCK()
  %4 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %5 = call i64 @fdata_get_dead(%struct.fuse_data* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @FUSE_UNLOCK()
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %11 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fuse_lck_mtx_lock(i32 %12)
  %14 = load i32, i32* @FSESS_DEAD, align 4
  %15 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %16 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %20 = call i32 @wakeup_one(%struct.fuse_data* %19)
  %21 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %22 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %21, i32 0, i32 2
  %23 = load i64, i64* @PZERO, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @selwakeuppri(i32* %22, i64 %24)
  %26 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %27 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %26, i32 0, i32 1
  %28 = call i32 @wakeup(i32* %27)
  %29 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %30 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fuse_lck_mtx_unlock(i32 %31)
  %33 = call i32 (...) @FUSE_UNLOCK()
  br label %34

34:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @FUSE_LOCK(...) #1

declare dso_local i64 @fdata_get_dead(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_UNLOCK(...) #1

declare dso_local i32 @fuse_lck_mtx_lock(i32) #1

declare dso_local i32 @wakeup_one(%struct.fuse_data*) #1

declare dso_local i32 @selwakeuppri(i32*, i64) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @fuse_lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
