; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_fowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_priv_vfs_readwrite_fowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"priv_vfs_readwrite_fowner(none, O_RDONLY)\00", align 1
@fpath_none = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"priv_vfs_readwrite_fowner(none, O_WRONLY)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"priv_vfs_readwrite_fowner(none, O_RDWR)\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"priv_vfs_readwrite_fowner(read, O_RDONLY)\00", align 1
@fpath_read = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"priv_vfs_readwrite_fowner(read, O_WRONLY)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"priv_vfs_readwrite_fowner(read, O_RDWR)\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"priv_vfs_readwrite_fowner(write, O_RDONLY)\00", align 1
@fpath_write = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"priv_vfs_readwrite_fowner(write, O_WRONLY)\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"priv_vfs_readwrite_fowner(write, O_RDWR)\00", align 1
@fpath_readwrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_readwrite_fowner(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %7 = load i32, i32* @fpath_none, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 -1
  %15 = load i32, i32* @EACCES, align 4
  %16 = call i32 @try_io(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %14, i32 %15)
  %17 = load i32, i32* @fpath_none, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @O_WRONLY, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  %25 = load i32, i32* @EACCES, align 4
  %26 = call i32 @try_io(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* @fpath_none, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 -1
  %35 = load i32, i32* @EACCES, align 4
  %36 = call i32 @try_io(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30, i32 %34, i32 %35)
  %37 = load i32, i32* @fpath_read, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = call i32 @try_io(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 0, i32 0)
  %42 = load i32, i32* @fpath_read, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @O_WRONLY, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 -1
  %50 = load i32, i32* @EACCES, align 4
  %51 = call i32 @try_io(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %49, i32 %50)
  %52 = load i32, i32* @fpath_read, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @O_RDWR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 -1
  %60 = load i32, i32* @EACCES, align 4
  %61 = call i32 @try_io(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %59, i32 %60)
  %62 = load i32, i32* @fpath_write, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 -1
  %70 = load i32, i32* @EACCES, align 4
  %71 = call i32 @try_io(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65, i32 %69, i32 %70)
  %72 = load i32, i32* @fpath_write, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @O_WRONLY, align 4
  %76 = call i32 @try_io(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 0, i32 0)
  %77 = load i32, i32* @fpath_write, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @O_RDWR, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 -1
  %85 = load i32, i32* @EACCES, align 4
  %86 = call i32 @try_io(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80, i32 %84, i32 %85)
  %87 = load i32, i32* @fpath_readwrite, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @O_RDONLY, align 4
  %91 = call i32 @try_io(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90, i32 0, i32 0)
  %92 = load i32, i32* @fpath_readwrite, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @O_WRONLY, align 4
  %96 = call i32 @try_io(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i32 %95, i32 0, i32 0)
  %97 = load i32, i32* @fpath_readwrite, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @O_RDWR, align 4
  %101 = call i32 @try_io(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %97, i32 %98, i32 %99, i32 %100, i32 0, i32 0)
  ret void
}

declare dso_local i32 @try_io(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
