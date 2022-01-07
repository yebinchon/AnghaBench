; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff_inchange1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_quotaoff_inchange1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { %struct.thread* }

@VR_START_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.mount*, i32)* @quotaoff_inchange1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaoff_inchange1(%struct.thread* %0, %struct.mount* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.mount* %1, %struct.mount** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mount*, %struct.mount** %6, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = load %struct.thread*, %struct.thread** %11, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = icmp eq %struct.thread* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.mount*, %struct.mount** %6, align 8
  %18 = call i32 @vfs_write_suspend_umnt(%struct.mount* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = load %struct.mount*, %struct.mount** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @quotaoff1(%struct.thread* %25, %struct.mount* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.mount*, %struct.mount** %6, align 8
  %33 = load i32, i32* @VR_START_WRITE, align 4
  %34 = call i32 @vfs_write_resume(%struct.mount* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @vfs_write_suspend_umnt(%struct.mount*) #1

declare dso_local i32 @quotaoff1(%struct.thread*, %struct.mount*, i32) #1

declare dso_local i32 @vfs_write_resume(%struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
