; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_generation.c_priv_vfs_generation_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_generation.c_priv_vfs_generation_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }
%struct.stat = type { i64 }

@MAX_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"priv_vfs_generation_setup: fpath\00", align 1
@fpath = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"priv_vfs_generation_setup: fstat(%s)\00", align 1
@fpath_initialized = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"priv_vfs_generation_setup: unable to create gen file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_vfs_generation_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MAX_TRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i32, i32* @fpath, align 4
  %16 = load i32, i32* @UID_ROOT, align 4
  %17 = load i32, i32* @GID_WHEEL, align 4
  %18 = call i32 @setup_file(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 420)
  %19 = load i32, i32* @fpath, align 4
  %20 = call i64 @stat(i32 %19, %struct.stat* %8)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i32, i32* @fpath, align 4
  %24 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @fpath, align 4
  %26 = call i32 @unlink(i32 %25)
  store i32 -1, i32* %4, align 4
  br label %38

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* @fpath_initialized, align 4
  store i32 0, i32* %4, align 4
  br label %38

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %10

36:                                               ; preds = %10
  %37 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %31, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @setup_file(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
