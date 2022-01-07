; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksem = type { i32, i32 }

@M_KSEM = common dso_local global i32 0, align 4
@ksem_count_lock = common dso_local global i32 0, align 4
@nsems = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksem*)* @ksem_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksem_drop(%struct.ksem* %0) #0 {
  %2 = alloca %struct.ksem*, align 8
  store %struct.ksem* %0, %struct.ksem** %2, align 8
  %3 = load %struct.ksem*, %struct.ksem** %2, align 8
  %4 = getelementptr inbounds %struct.ksem, %struct.ksem* %3, i32 0, i32 1
  %5 = call i64 @refcount_release(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.ksem*, %struct.ksem** %2, align 8
  %9 = getelementptr inbounds %struct.ksem, %struct.ksem* %8, i32 0, i32 0
  %10 = call i32 @cv_destroy(i32* %9)
  %11 = load %struct.ksem*, %struct.ksem** %2, align 8
  %12 = load i32, i32* @M_KSEM, align 4
  %13 = call i32 @free(%struct.ksem* %11, i32 %12)
  %14 = call i32 @mtx_lock(i32* @ksem_count_lock)
  %15 = load i32, i32* @nsems, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @nsems, align 4
  %17 = call i32 @mtx_unlock(i32* @ksem_count_lock)
  br label %18

18:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(%struct.ksem*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
