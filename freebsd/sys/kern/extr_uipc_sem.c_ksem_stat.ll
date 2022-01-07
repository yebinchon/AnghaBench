; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ksem* }
%struct.ksem = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@sem_lock = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @ksem_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.ksem*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.ksem*, %struct.ksem** %11, align 8
  store %struct.ksem* %12, %struct.ksem** %9, align 8
  %13 = load %struct.stat*, %struct.stat** %6, align 8
  %14 = call i32 @bzero(%struct.stat* %13, i32 28)
  %15 = call i32 @mtx_lock(i32* @sem_lock)
  %16 = load %struct.ksem*, %struct.ksem** %9, align 8
  %17 = getelementptr inbounds %struct.ksem, %struct.ksem* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stat*, %struct.stat** %6, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ksem*, %struct.ksem** %9, align 8
  %22 = getelementptr inbounds %struct.ksem, %struct.ksem* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stat*, %struct.stat** %6, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ksem*, %struct.ksem** %9, align 8
  %27 = getelementptr inbounds %struct.ksem, %struct.ksem* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stat*, %struct.stat** %6, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ksem*, %struct.ksem** %9, align 8
  %32 = getelementptr inbounds %struct.ksem, %struct.ksem* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stat*, %struct.stat** %6, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ksem*, %struct.ksem** %9, align 8
  %37 = getelementptr inbounds %struct.ksem, %struct.ksem* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stat*, %struct.stat** %6, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ksem*, %struct.ksem** %9, align 8
  %42 = getelementptr inbounds %struct.ksem, %struct.ksem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stat*, %struct.stat** %6, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @S_IFREG, align 4
  %47 = load %struct.ksem*, %struct.ksem** %9, align 8
  %48 = getelementptr inbounds %struct.ksem, %struct.ksem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = load %struct.stat*, %struct.stat** %6, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = call i32 @mtx_unlock(i32* @sem_lock)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.stat*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
