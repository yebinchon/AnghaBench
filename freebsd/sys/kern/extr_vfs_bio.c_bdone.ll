; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.mtx = type { i32 }

@mtxpool_sleep = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdone(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.mtx*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %4 = load i32, i32* @mtxpool_sleep, align 4
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = call %struct.mtx* @mtx_pool_find(i32 %4, %struct.buf* %5)
  store %struct.mtx* %6, %struct.mtx** %3, align 8
  %7 = load %struct.mtx*, %struct.mtx** %3, align 8
  %8 = call i32 @mtx_lock(%struct.mtx* %7)
  %9 = load i32, i32* @B_DONE, align 4
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.buf*, %struct.buf** %2, align 8
  %15 = call i32 @wakeup(%struct.buf* %14)
  %16 = load %struct.mtx*, %struct.mtx** %3, align 8
  %17 = call i32 @mtx_unlock(%struct.mtx* %16)
  ret void
}

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.buf*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @wakeup(%struct.buf*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
