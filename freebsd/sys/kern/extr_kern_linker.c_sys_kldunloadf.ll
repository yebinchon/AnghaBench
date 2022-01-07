; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldunloadf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldunloadf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kldunloadf_args = type { i64, i32 }

@LINKER_UNLOAD_NORMAL = common dso_local global i64 0, align 8
@LINKER_UNLOAD_FORCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kldunloadf(%struct.thread* %0, %struct.kldunloadf_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kldunloadf_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kldunloadf_args* %1, %struct.kldunloadf_args** %5, align 8
  %6 = load %struct.kldunloadf_args*, %struct.kldunloadf_args** %5, align 8
  %7 = getelementptr inbounds %struct.kldunloadf_args, %struct.kldunloadf_args* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LINKER_UNLOAD_NORMAL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.kldunloadf_args*, %struct.kldunloadf_args** %5, align 8
  %13 = getelementptr inbounds %struct.kldunloadf_args, %struct.kldunloadf_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LINKER_UNLOAD_FORCE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %11, %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load %struct.kldunloadf_args*, %struct.kldunloadf_args** %5, align 8
  %22 = getelementptr inbounds %struct.kldunloadf_args, %struct.kldunloadf_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kldunloadf_args*, %struct.kldunloadf_args** %5, align 8
  %25 = getelementptr inbounds %struct.kldunloadf_args, %struct.kldunloadf_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kern_kldunload(%struct.thread* %20, i32 %23, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @kern_kldunload(%struct.thread*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
