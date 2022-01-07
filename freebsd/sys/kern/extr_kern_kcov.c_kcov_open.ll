; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.kcov_info = type { i32, i32*, i32 }

@M_KCOV_INFO = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KCOV_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @kcov_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.kcov_info*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load i32, i32* @M_KCOV_INFO, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.kcov_info* @malloc(i32 24, i32 %11, i32 %14)
  store %struct.kcov_info* %15, %struct.kcov_info** %9, align 8
  %16 = load i32, i32* @KCOV_STATE_OPEN, align 4
  %17 = load %struct.kcov_info*, %struct.kcov_info** %9, align 8
  %18 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kcov_info*, %struct.kcov_info** %9, align 8
  %20 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.kcov_info*, %struct.kcov_info** %9, align 8
  %22 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.kcov_info*, %struct.kcov_info** %9, align 8
  %24 = call i32 @devfs_set_cdevpriv(%struct.kcov_info* %23, i32 (%struct.kcov_info*)* @kcov_mmap_cleanup)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.kcov_info*, %struct.kcov_info** %9, align 8
  %28 = call i32 @kcov_mmap_cleanup(%struct.kcov_info* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local %struct.kcov_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.kcov_info*, i32 (%struct.kcov_info*)*) #1

declare dso_local i32 @kcov_mmap_cleanup(%struct.kcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
