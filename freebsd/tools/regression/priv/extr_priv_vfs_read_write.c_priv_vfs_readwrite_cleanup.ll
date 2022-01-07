; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@fpath_none_initialized = common dso_local global i64 0, align 8
@fpath_none = common dso_local global i32 0, align 4
@fpath_read_initialized = common dso_local global i64 0, align 8
@fpath_read = common dso_local global i32 0, align 4
@fpath_write_initialized = common dso_local global i64 0, align 8
@fpath_write = common dso_local global i32 0, align 4
@fpath_readwrite_initialized = common dso_local global i64 0, align 8
@fpath_readwrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_readwrite_cleanup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %7 = load i64, i64* @fpath_none_initialized, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* @fpath_none, align 4
  %11 = call i32 @unlink(i32 %10)
  store i64 0, i64* @fpath_none_initialized, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i64, i64* @fpath_read_initialized, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @fpath_read, align 4
  %17 = call i32 @unlink(i32 %16)
  store i64 0, i64* @fpath_read_initialized, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* @fpath_write_initialized, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @fpath_write, align 4
  %23 = call i32 @unlink(i32 %22)
  store i64 0, i64* @fpath_write_initialized, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @fpath_readwrite_initialized, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @fpath_readwrite, align 4
  %29 = call i32 @unlink(i32 %28)
  store i64 0, i64* @fpath_readwrite_initialized, align 8
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
