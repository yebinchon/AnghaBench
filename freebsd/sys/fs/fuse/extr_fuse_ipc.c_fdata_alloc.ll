; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i32, %struct.cdev* }
%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32 }
%struct.ucred = type { i32 }

@M_FUSEMSG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fuse message list mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fuse answer list mutex\00", align 1
@FUSE_DEFAULT_DAEMON_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fuse rename lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_data* @fdata_alloc(%struct.cdev* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.fuse_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %6 = load i32, i32* @M_FUSEMSG, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.fuse_data* @malloc(i32 56, i32 %6, i32 %9)
  store %struct.fuse_data* %10, %struct.fuse_data** %5, align 8
  %11 = load %struct.cdev*, %struct.cdev** %3, align 8
  %12 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %13 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %12, i32 0, i32 10
  store %struct.cdev* %11, %struct.cdev** %13, align 8
  %14 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %14, i32 0, i32 6
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %19 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %18, i32 0, i32 9
  %20 = call i32 @STAILQ_INIT(i32* %19)
  %21 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %27 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %26, i32 0, i32 6
  %28 = call i32 @knlist_init_mtx(i32* %25, i32* %27)
  %29 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %30 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %29, i32 0, i32 5
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %34 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %33, i32 0, i32 4
  %35 = call i32 @TAILQ_INIT(i32* %34)
  %36 = load %struct.ucred*, %struct.ucred** %4, align 8
  %37 = call i32 @crhold(%struct.ucred* %36)
  %38 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %39 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @FUSE_DEFAULT_DAEMON_TIMEOUT, align 4
  %41 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %42 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %44 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %43, i32 0, i32 1
  %45 = call i32 @sx_init(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %47 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  ret %struct.fuse_data* %48
}

declare dso_local %struct.fuse_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
