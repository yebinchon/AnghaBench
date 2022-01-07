; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_reiserfs.c_g_label_reiserfs_taste.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_reiserfs.c_g_label_reiserfs_taste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@REISERFS_OLD_DISK_OFFSET = common dso_local global i32 0, align 4
@REISERFS_NEW_DISK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"reiserfs file system detected on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i8*, i64)* @g_label_reiserfs_taste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_reiserfs_taste(%struct.g_consumer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @g_topology_assert_not()
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  store %struct.g_provider* %12, %struct.g_provider** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %16 = load i32, i32* @REISERFS_OLD_DISK_OFFSET, align 4
  %17 = call %struct.TYPE_4__* @g_label_reiserfs_read_super(%struct.g_consumer* %15, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %22 = load i32, i32* @REISERFS_NEW_DISK_OFFSET, align 4
  %23 = call %struct.TYPE_4__* @g_label_reiserfs_read_super(%struct.g_consumer* %21, i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %62

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %39

38:                                               ; preds = %28
  br label %59

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %59

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @strlcpy(i8* %53, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %48, %47, %38
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = call i32 @g_free(%struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %59, %27
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local %struct.TYPE_4__* @g_label_reiserfs_read_super(%struct.g_consumer*, i32) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @g_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
