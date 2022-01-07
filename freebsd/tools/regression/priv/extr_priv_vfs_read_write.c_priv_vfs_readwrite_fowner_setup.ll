; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_fowner_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_fowner_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"priv_vfs_readwrite_fowner_setup: fpath_none\00", align 1
@fpath_none = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@UID_OWNER = common dso_local global i32 0, align 4
@GID_OTHER = common dso_local global i32 0, align 4
@fpath_none_initialized = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"priv_vfs_readwrite_fowner_setup: fpath_read\00", align 1
@fpath_read = common dso_local global i32 0, align 4
@fpath_read_initialized = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"priv_vfs_readwrite_fowner_setup: fpath_write\00", align 1
@fpath_write = common dso_local global i32 0, align 4
@fpath_write_initialized = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"priv_vfs_readwrite_fowner_setup: fpath_readwrite\00", align 1
@fpath_readwrite = common dso_local global i32 0, align 4
@fpath_readwrite_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_vfs_readwrite_fowner_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %7 = load i32, i32* @fpath_none, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @UID_ROOT, align 4
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @UID_OWNER, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, i32* @GID_OTHER, align 4
  %17 = call i32 @setup_file(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %15, i32 %16, i32 0)
  store i32 1, i32* @fpath_none_initialized, align 4
  %18 = load i32, i32* @fpath_read, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @UID_ROOT, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @UID_OWNER, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* @GID_OTHER, align 4
  %28 = call i32 @setup_file(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %26, i32 %27, i32 256)
  store i32 1, i32* @fpath_read_initialized, align 4
  %29 = load i32, i32* @fpath_write, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @UID_ROOT, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @UID_OWNER, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* @GID_OTHER, align 4
  %39 = call i32 @setup_file(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %37, i32 %38, i32 128)
  store i32 1, i32* @fpath_write_initialized, align 4
  %40 = load i32, i32* @fpath_readwrite, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @UID_ROOT, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @UID_OWNER, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* @GID_OTHER, align 4
  %50 = call i32 @setup_file(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %48, i32 %49, i32 384)
  store i32 1, i32* @fpath_readwrite_initialized, align 4
  ret i32 0
}

declare dso_local i32 @setup_file(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
