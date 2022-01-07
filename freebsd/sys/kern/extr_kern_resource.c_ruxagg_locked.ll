; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_ruxagg_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_ruxagg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage_ext = type { i32, i32, i32, i32 }
%struct.thread = type { i64, i64, i64, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rusage_ext*, %struct.thread*)* @ruxagg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ruxagg_locked(%struct.rusage_ext* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.rusage_ext*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.rusage_ext* %0, %struct.rusage_ext** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %4, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PROC_STATLOCK_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rusage_ext*, %struct.rusage_ext** %3, align 8
  %17 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rusage_ext*, %struct.rusage_ext** %3, align 8
  %26 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rusage_ext*, %struct.rusage_ext** %3, align 8
  %35 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rusage_ext*, %struct.rusage_ext** %3, align 8
  %44 = getelementptr inbounds %struct.rusage_ext, %struct.rusage_ext* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @PROC_STATLOCK_ASSERT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
