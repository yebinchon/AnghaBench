; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_unmounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_unmounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@ve_mutex = common dso_local global i32 0, align 4
@veriexec_dev_head = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@veriexec_file_dev_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_veriexec_metadata_unmounted(i32 %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.thread* %1, %struct.thread** %5, align 8
  %7 = call i32 @mtx_lock(i32* @ve_mutex)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @free_veriexec_dev(i32 %8, i32* @veriexec_dev_head)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ENOENT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @mtx_unlock(i32* @ve_mutex)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @free_veriexec_dev(i32 %20, i32* @veriexec_file_dev_head)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @mtx_unlock(i32* @ve_mutex)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @free_veriexec_dev(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
