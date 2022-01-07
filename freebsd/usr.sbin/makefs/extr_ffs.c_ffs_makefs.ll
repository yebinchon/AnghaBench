; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_makefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_makefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.fs*, i32, i64, i64 }
%struct.fs = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@debug = common dso_local global i32 0, align 4
@DEBUG_FS_MAKEFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ffs_makefs: image %s directory %s root %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ffs_validate\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Calculated size of `%s': %lld bytes, %lld inodes\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Image file `%s' not created.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ffs_create_image\00", align 1
@UFS_ROOTINO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Populating `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Image file `%s' not populated.\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ffs_populate_dir\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Closing `%s'\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Image `%s' complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_makefs(i8* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.fs*, align 8
  %10 = alloca %struct.timeval, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @debug, align 4
  %28 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i32* %34)
  br label %36

36:                                               ; preds = %31, %4
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TIMER_START(i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = call i32 @ffs_validate(i8* %40, i32* %41, %struct.TYPE_11__* %42)
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TIMER_RESULTS(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %47, i64 %50, i64 %53)
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TIMER_START(i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = call i32 @ffs_create_image(i8* %58, %struct.TYPE_11__* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %36
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %36
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TIMER_RESULTS(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @UFS_ROOTINO, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @debug, align 4
  %73 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 @putchar(i8 signext 10)
  br label %78

78:                                               ; preds = %76, %65
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TIMER_START(i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = call i32 @ffs_populate_dir(i8* %84, i32* %85, %struct.TYPE_11__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %78
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @TIMER_RESULTS(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* @debug, align 4
  %97 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 (...) @bcleanup()
  br label %102

102:                                              ; preds = %100, %92
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.fs*, %struct.fs** %104, align 8
  store %struct.fs* %105, %struct.fs** %9, align 8
  %106 = load %struct.fs*, %struct.fs** %9, align 8
  %107 = getelementptr inbounds %struct.fs, %struct.fs* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.fs*, %struct.fs** %9, align 8
  %109 = getelementptr inbounds %struct.fs, %struct.fs* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fs*, %struct.fs** %9, align 8
  %113 = getelementptr inbounds %struct.fs, %struct.fs* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load %struct.fs*, %struct.fs** %9, align 8
  %116 = getelementptr inbounds %struct.fs, %struct.fs* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fs*, %struct.fs** %9, align 8
  %120 = getelementptr inbounds %struct.fs, %struct.fs* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.fs*, %struct.fs** %9, align 8
  %123 = getelementptr inbounds %struct.fs, %struct.fs* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fs*, %struct.fs** %9, align 8
  %127 = getelementptr inbounds %struct.fs, %struct.fs* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.fs*, %struct.fs** %9, align 8
  %130 = getelementptr inbounds %struct.fs, %struct.fs* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fs*, %struct.fs** %9, align 8
  %134 = getelementptr inbounds %struct.fs, %struct.fs* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load %struct.fs*, %struct.fs** %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = call i32 @ffs_write_superblock(%struct.fs* %138, %struct.TYPE_11__* %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @close(i32 %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %149

146:                                              ; preds = %102
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %102
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32 -1, i32* %151, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @TIMER_START(i32) #1

declare dso_local i32 @ffs_validate(i8*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @TIMER_RESULTS(i32, i8*) #1

declare dso_local i32 @ffs_create_image(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @ffs_populate_dir(i8*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @bcleanup(...) #1

declare dso_local i32 @ffs_write_superblock(%struct.fs*, %struct.TYPE_11__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
