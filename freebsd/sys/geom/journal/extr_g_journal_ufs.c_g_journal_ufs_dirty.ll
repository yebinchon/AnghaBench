; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal_ufs.c_g_journal_ufs_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal_ufs.c_g_journal_ufs_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fs = type { i32, %struct.fs*, i32, i64 }

@SBLOCKSIZE = common dso_local global i32 0, align 4
@STDSB = common dso_local global i32 0, align 4
@M_GEOM = common dso_local global i32 0, align 4
@g_use_g_read_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Cannot find superblock to mark file system %s as dirty.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"g_journal_ufs_dirty: non-NULL fs %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"clean=%d flags=0x%x\00", align 1
@FS_NEEDSFSCK = common dso_local global i32 0, align 4
@FS_UNCLEAN = common dso_local global i32 0, align 4
@g_use_g_write_data = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Cannot mark file system %s as dirty (error=%d).\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"File system %s marked as dirty.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_journal_ufs_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_ufs_dirty(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.fs*, align 8
  %4 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  store %struct.fs* null, %struct.fs** %3, align 8
  %5 = load i32, i32* @SBLOCKSIZE, align 4
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = srem i32 %5, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %15 = load i32, i32* @STDSB, align 4
  %16 = load i32, i32* @M_GEOM, align 4
  %17 = load i32, i32* @g_use_g_read_data, align 4
  %18 = call i64 @ffs_sbget(%struct.g_consumer* %14, %struct.fs** %3, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13, %1
  %21 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %22 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.fs*, %struct.fs** %3, align 8
  %28 = icmp eq %struct.fs* %27, null
  %29 = zext i1 %28 to i32
  %30 = load %struct.fs*, %struct.fs** %3, align 8
  %31 = bitcast %struct.fs* %30 to i8*
  %32 = call i32 @KASSERT(i32 %29, i8* %31)
  br label %81

33:                                               ; preds = %13
  %34 = load %struct.fs*, %struct.fs** %3, align 8
  %35 = getelementptr inbounds %struct.fs, %struct.fs* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.fs*, %struct.fs** %3, align 8
  %39 = getelementptr inbounds %struct.fs, %struct.fs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.fs*, %struct.fs** %3, align 8
  %43 = getelementptr inbounds %struct.fs, %struct.fs* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @FS_NEEDSFSCK, align 4
  %45 = load i32, i32* @FS_UNCLEAN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.fs*, %struct.fs** %3, align 8
  %48 = getelementptr inbounds %struct.fs, %struct.fs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %52 = load %struct.fs*, %struct.fs** %3, align 8
  %53 = load %struct.fs*, %struct.fs** %3, align 8
  %54 = getelementptr inbounds %struct.fs, %struct.fs* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @g_use_g_write_data, align 4
  %57 = call i32 @ffs_sbput(%struct.g_consumer* %51, %struct.fs* %52, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.fs*, %struct.fs** %3, align 8
  %59 = getelementptr inbounds %struct.fs, %struct.fs* %58, i32 0, i32 1
  %60 = load %struct.fs*, %struct.fs** %59, align 8
  %61 = call i32 @g_free(%struct.fs* %60)
  %62 = load %struct.fs*, %struct.fs** %3, align 8
  %63 = call i32 @g_free(%struct.fs* %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %33
  %67 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %68 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  br label %81

74:                                               ; preds = %33
  %75 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %76 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %20, %74, %66
  ret void
}

declare dso_local i64 @ffs_sbget(%struct.g_consumer*, %struct.fs**, i32, i32, i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ffs_sbput(%struct.g_consumer*, %struct.fs*, i32, i32) #1

declare dso_local i32 @g_free(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
