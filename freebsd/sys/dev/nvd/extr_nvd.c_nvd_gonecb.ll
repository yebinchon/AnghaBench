; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_gonecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_gonecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.nvd_disk = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@nvd_lock = common dso_local global i32 0, align 4
@disk_head = common dso_local global i32 0, align 4
@global_tailq = common dso_local global i32 0, align 4
@ctrlr_tailq = common dso_local global i32 0, align 4
@M_NVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disk*)* @nvd_gonecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd_gonecb(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.nvd_disk*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %4 = load %struct.disk*, %struct.disk** %2, align 8
  %5 = getelementptr inbounds %struct.disk, %struct.disk* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.nvd_disk*
  store %struct.nvd_disk* %7, %struct.nvd_disk** %3, align 8
  %8 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %9 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @disk_destroy(i32 %10)
  %12 = call i32 @mtx_lock(i32* @nvd_lock)
  %13 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %14 = load i32, i32* @global_tailq, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* @disk_head, %struct.nvd_disk* %13, i32 %14)
  %16 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %17 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %21 = load i32, i32* @ctrlr_tailq, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.nvd_disk* %20, i32 %21)
  %23 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %24 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i64 @TAILQ_EMPTY(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %31 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @wakeup(i32* %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = call i32 @mtx_unlock(i32* @nvd_lock)
  %37 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %38 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @taskqueue_free(i32 %39)
  %41 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %42 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %41, i32 0, i32 0
  %43 = call i32 @mtx_destroy(i32* %42)
  %44 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %45 = load i32, i32* @M_NVD, align 4
  %46 = call i32 @free(%struct.nvd_disk* %44, i32 %45)
  ret void
}

declare dso_local i32 @disk_destroy(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nvd_disk*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.nvd_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
