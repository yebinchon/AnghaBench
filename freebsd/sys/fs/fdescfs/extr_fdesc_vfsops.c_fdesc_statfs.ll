; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vfsops.c_fdesc_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.mount = type { i32 }
%struct.statfs = type { i32, i32, i32, i64, i64, i8*, i8*, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@RACCT_NOFILE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @fdesc_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %5, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = load i32, i32* @RLIMIT_NOFILE, align 4
  %15 = call i32 @lim_cur(%struct.thread* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.filedesc*, %struct.filedesc** %19, align 8
  store %struct.filedesc* %20, %struct.filedesc** %6, align 8
  %21 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %22 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %21)
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* @RACCT_NOFILE, align 4
  %27 = call i32 @racct_get_limit(%struct.TYPE_4__* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %2
  %34 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %35 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %39 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %60, %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %48 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %65 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %72 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %79 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %78)
  %80 = load %struct.statfs*, %struct.statfs** %4, align 8
  %81 = getelementptr inbounds %struct.statfs, %struct.statfs* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** @DEV_BSIZE, align 8
  %83 = load %struct.statfs*, %struct.statfs** %4, align 8
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @DEV_BSIZE, align 8
  %86 = load %struct.statfs*, %struct.statfs** %4, align 8
  %87 = getelementptr inbounds %struct.statfs, %struct.statfs* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.statfs*, %struct.statfs** %4, align 8
  %89 = getelementptr inbounds %struct.statfs, %struct.statfs* %88, i32 0, i32 0
  store i32 2, i32* %89, align 8
  %90 = load %struct.statfs*, %struct.statfs** %4, align 8
  %91 = getelementptr inbounds %struct.statfs, %struct.statfs* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.statfs*, %struct.statfs** %4, align 8
  %93 = getelementptr inbounds %struct.statfs, %struct.statfs* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.statfs*, %struct.statfs** %4, align 8
  %97 = getelementptr inbounds %struct.statfs, %struct.statfs* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.statfs*, %struct.statfs** %4, align 8
  %100 = getelementptr inbounds %struct.statfs, %struct.statfs* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  ret i32 0
}

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @racct_get_limit(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
