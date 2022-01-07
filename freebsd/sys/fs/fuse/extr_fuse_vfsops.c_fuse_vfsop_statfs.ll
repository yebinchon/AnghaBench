; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_dispatcher = type { %struct.fuse_statfs_out* }
%struct.fuse_statfs_out = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_data = type { i32 }

@FSESS_INITED = common dso_local global i32 0, align 4
@FUSE_STATFS = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@S_BLKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @fuse_vfsop_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vfsop_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.fuse_dispatcher, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_statfs_out*, align 8
  %9 = alloca %struct.fuse_data*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %10)
  store %struct.fuse_data* %11, %struct.fuse_data** %9, align 8
  %12 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %13 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSESS_INITED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %82

19:                                               ; preds = %2
  %20 = call i32 @fdisp_init(%struct.fuse_dispatcher* %6, i32 0)
  %21 = load i32, i32* @FUSE_STATFS, align 4
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = load i32, i32* @FUSE_ROOT_ID, align 4
  %24 = call i32 @fdisp_make(%struct.fuse_dispatcher* %6, i32 %21, %struct.mount* %22, i32 %23, i32* null, i32* null)
  %25 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %6)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %82

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %6, i32 0, i32 0
  %38 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %37, align 8
  store %struct.fuse_statfs_out* %38, %struct.fuse_statfs_out** %8, align 8
  %39 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %40 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.statfs*, %struct.statfs** %5, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %46 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.statfs*, %struct.statfs** %5, align 8
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %52 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.statfs*, %struct.statfs** %5, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %58 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.statfs*, %struct.statfs** %5, align 8
  %62 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %64 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.statfs*, %struct.statfs** %5, align 8
  %68 = getelementptr inbounds %struct.statfs, %struct.statfs* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %70 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.statfs*, %struct.statfs** %5, align 8
  %74 = getelementptr inbounds %struct.statfs, %struct.statfs* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fuse_statfs_out*, %struct.fuse_statfs_out** %8, align 8
  %76 = getelementptr inbounds %struct.fuse_statfs_out, %struct.fuse_statfs_out* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.statfs*, %struct.statfs** %5, align 8
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %6)
  store i32 0, i32* %3, align 4
  br label %98

82:                                               ; preds = %33, %18
  %83 = load %struct.statfs*, %struct.statfs** %5, align 8
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %83, i32 0, i32 6
  store i32 0, i32* %84, align 4
  %85 = load %struct.statfs*, %struct.statfs** %5, align 8
  %86 = getelementptr inbounds %struct.statfs, %struct.statfs* %85, i32 0, i32 5
  store i32 0, i32* %86, align 4
  %87 = load %struct.statfs*, %struct.statfs** %5, align 8
  %88 = getelementptr inbounds %struct.statfs, %struct.statfs* %87, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = load %struct.statfs*, %struct.statfs** %5, align 8
  %90 = getelementptr inbounds %struct.statfs, %struct.statfs* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.statfs*, %struct.statfs** %5, align 8
  %92 = getelementptr inbounds %struct.statfs, %struct.statfs* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.statfs*, %struct.statfs** %5, align 8
  %94 = getelementptr inbounds %struct.statfs, %struct.statfs* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @S_BLKSIZE, align 4
  %96 = load %struct.statfs*, %struct.statfs** %5, align 8
  %97 = getelementptr inbounds %struct.statfs, %struct.statfs* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %82, %36, %34
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, %struct.mount*, i32, i32*, i32*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
