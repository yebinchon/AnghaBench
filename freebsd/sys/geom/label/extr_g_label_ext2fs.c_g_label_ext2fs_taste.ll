; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_ext2fs.c_g_label_ext2fs_taste.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_ext2fs.c_g_label_ext2fs_taste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i8* }

@EXT2FS_SB_OFFSET = common dso_local global i32 0, align 4
@EXT2_SUPER_MAGIC = common dso_local global i64 0, align 8
@EXT2_DYNAMIC_REV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ext2fs file system detected on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i8*, i64)* @g_label_ext2fs_taste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_ext2fs_taste(%struct.g_consumer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 (...) @g_topology_assert_not()
  %11 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* @EXT2FS_SB_OFFSET, align 4
  %17 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %25 = load i32, i32* @EXT2FS_SB_OFFSET, align 4
  %26 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @g_read_data(%struct.g_consumer* %24, i32 %25, i32 %28, i32* null)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %81

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXT2_SUPER_MAGIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EXT2_DYNAMIC_REV, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %52

51:                                               ; preds = %40, %34
  br label %78

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %52
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %78

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @strlcpy(i8* %74, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %72, %51
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = call i32 @g_free(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %78, %33, %22
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i64 @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @g_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
