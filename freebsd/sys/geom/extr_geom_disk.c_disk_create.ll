; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i8*, i8*, i32, i32, i32, i32*, i32, i32*, i32* }

@DISK_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WARNING: Attempt to add disk %s%d %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c" using incompatible ABI version of disk(9)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"WARNING: Ignoring disk %s%d\0A\00", align 1
@DISKFLAG_RESERVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"WARNING: Attempt to add non-MPSAFE disk %s%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"disk_create need d_strategy\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"disk_create need d_name\00", align 1
@SPECNAMELEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"disk name too long\00", align 1
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_MAX = common dso_local global i32 0, align 4
@DISK_INIT_NONE = common dso_local global i32 0, align 4
@g_disk_create = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_create(%struct.disk* %0, i32 %1) #0 {
  %3 = alloca %struct.disk*, align 8
  %4 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DISK_VERSION, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.disk*, %struct.disk** %3, align 8
  %10 = getelementptr inbounds %struct.disk, %struct.disk* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.disk*, %struct.disk** %3, align 8
  %13 = getelementptr inbounds %struct.disk, %struct.disk* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.disk*, %struct.disk** %3, align 8
  %17 = getelementptr inbounds %struct.disk, %struct.disk* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.disk*, %struct.disk** %3, align 8
  %20 = getelementptr inbounds %struct.disk, %struct.disk* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %21)
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.disk*, %struct.disk** %3, align 8
  %25 = getelementptr inbounds %struct.disk, %struct.disk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DISKFLAG_RESERVED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.disk*, %struct.disk** %3, align 8
  %32 = getelementptr inbounds %struct.disk, %struct.disk* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.disk*, %struct.disk** %3, align 8
  %35 = getelementptr inbounds %struct.disk, %struct.disk* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %36)
  %38 = load %struct.disk*, %struct.disk** %3, align 8
  %39 = getelementptr inbounds %struct.disk, %struct.disk* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.disk*, %struct.disk** %3, align 8
  %42 = getelementptr inbounds %struct.disk, %struct.disk* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %43)
  br label %112

45:                                               ; preds = %23
  %46 = load %struct.disk*, %struct.disk** %3, align 8
  %47 = getelementptr inbounds %struct.disk, %struct.disk* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.disk*, %struct.disk** %3, align 8
  %53 = getelementptr inbounds %struct.disk, %struct.disk* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.disk*, %struct.disk** %3, align 8
  %59 = getelementptr inbounds %struct.disk, %struct.disk* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.disk*, %struct.disk** %3, align 8
  %67 = getelementptr inbounds %struct.disk, %struct.disk* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i64*
  %70 = call i32 @strlen(i64* %69)
  %71 = load i32, i32* @SPECNAMELEN, align 4
  %72 = sub nsw i32 %71, 4
  %73 = icmp slt i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @KASSERT(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.disk*, %struct.disk** %3, align 8
  %77 = getelementptr inbounds %struct.disk, %struct.disk* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %45
  %81 = load %struct.disk*, %struct.disk** %3, align 8
  %82 = getelementptr inbounds %struct.disk, %struct.disk* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to i64*
  %85 = load %struct.disk*, %struct.disk** %3, align 8
  %86 = getelementptr inbounds %struct.disk, %struct.disk* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.disk*, %struct.disk** %3, align 8
  %89 = getelementptr inbounds %struct.disk, %struct.disk* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %92 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %93 = load i32, i32* @DEVSTAT_PRIORITY_MAX, align 4
  %94 = call i32* @devstat_new_entry(i64* %84, i8* %87, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.disk*, %struct.disk** %3, align 8
  %96 = getelementptr inbounds %struct.disk, %struct.disk* %95, i32 0, i32 7
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %80, %45
  %98 = load %struct.disk*, %struct.disk** %3, align 8
  %99 = getelementptr inbounds %struct.disk, %struct.disk* %98, i32 0, i32 5
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* @DISK_INIT_NONE, align 4
  %101 = load %struct.disk*, %struct.disk** %3, align 8
  %102 = getelementptr inbounds %struct.disk, %struct.disk* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.disk*, %struct.disk** %3, align 8
  %104 = getelementptr inbounds %struct.disk, %struct.disk* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @g_disk_ident_adjust(i32 %105, i32 4)
  %107 = load i32, i32* @g_disk_create, align 4
  %108 = load %struct.disk*, %struct.disk** %3, align 8
  %109 = load i32, i32* @M_WAITOK, align 4
  %110 = load %struct.disk*, %struct.disk** %3, align 8
  %111 = call i32 @g_post_event(i32 %107, %struct.disk* %108, i32 %109, %struct.disk* %110, i32* null)
  br label %112

112:                                              ; preds = %97, %30, %8
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32* @devstat_new_entry(i64*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @g_disk_ident_adjust(i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.disk*, i32, %struct.disk*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
