; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vfsops.c_autofs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vfsops.c_autofs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, %struct.autofs_mount*, i32 }
%struct.autofs_mount = type { i32, i32, i32, i32, i32, i32, i32, %struct.mount* }

@autofs_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"master_options\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"master_prefix\00", align 1
@M_AUTOFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"autofslk\00", align 1
@MNTK_LOOKUP_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @autofs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.autofs_mount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %10 = load %struct.mount*, %struct.mount** %3, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @autofs_opts, align 4
  %14 = call i64 @vfs_filteropt(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MNT_UPDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.mount*, %struct.mount** %3, align 8
  %27 = call i32 @VFSTOAUTOFS(%struct.mount* %26)
  %28 = call i32 @autofs_flush(i32 %27)
  store i32 0, i32* %2, align 4
  br label %130

29:                                               ; preds = %18
  %30 = load %struct.mount*, %struct.mount** %3, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @vfs_getopt(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %2, align 4
  br label %130

37:                                               ; preds = %29
  %38 = load %struct.mount*, %struct.mount** %3, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @vfs_getopt(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %2, align 4
  br label %130

45:                                               ; preds = %37
  %46 = load %struct.mount*, %struct.mount** %3, align 8
  %47 = getelementptr inbounds %struct.mount, %struct.mount* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @vfs_getopt(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %7, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %2, align 4
  br label %130

53:                                               ; preds = %45
  %54 = load %struct.mount*, %struct.mount** %3, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @vfs_getopt(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %8, i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %2, align 4
  br label %130

61:                                               ; preds = %53
  %62 = load i32, i32* @M_AUTOFS, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.autofs_mount* @malloc(i32 40, i32 %62, i32 %65)
  store %struct.autofs_mount* %66, %struct.autofs_mount** %4, align 8
  %67 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %68 = load %struct.mount*, %struct.mount** %3, align 8
  %69 = getelementptr inbounds %struct.mount, %struct.mount* %68, i32 0, i32 2
  store %struct.autofs_mount* %67, %struct.autofs_mount** %69, align 8
  %70 = load %struct.mount*, %struct.mount** %3, align 8
  %71 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %72 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %71, i32 0, i32 7
  store %struct.mount* %70, %struct.mount** %72, align 8
  %73 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %74 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strlcpy(i32 %75, i8* %76, i32 4)
  %78 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %79 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strlcpy(i32 %80, i8* %81, i32 4)
  %83 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %84 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strlcpy(i32 %85, i8* %86, i32 4)
  %88 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %89 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @strlcpy(i32 %90, i8* %91, i32 4)
  %93 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %94 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %93, i32 0, i32 2
  %95 = call i32 @sx_init(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %97 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.mount*, %struct.mount** %3, align 8
  %99 = call i32 @vfs_getnewfsid(%struct.mount* %98)
  %100 = load %struct.mount*, %struct.mount** %3, align 8
  %101 = call i32 @MNT_ILOCK(%struct.mount* %100)
  %102 = load i32, i32* @MNTK_LOOKUP_SHARED, align 4
  %103 = load %struct.mount*, %struct.mount** %3, align 8
  %104 = getelementptr inbounds %struct.mount, %struct.mount* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.mount*, %struct.mount** %3, align 8
  %108 = call i32 @MNT_IUNLOCK(%struct.mount* %107)
  %109 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %110 = call i32 @AUTOFS_XLOCK(%struct.autofs_mount* %109)
  %111 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %112 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %113 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %112, i32 0, i32 1
  %114 = call i32 @autofs_node_new(i32* null, %struct.autofs_mount* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %61
  %118 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %119 = call i32 @AUTOFS_XUNLOCK(%struct.autofs_mount* %118)
  %120 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %121 = load i32, i32* @M_AUTOFS, align 4
  %122 = call i32 @free(%struct.autofs_mount* %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %130

124:                                              ; preds = %61
  %125 = load %struct.autofs_mount*, %struct.autofs_mount** %4, align 8
  %126 = call i32 @AUTOFS_XUNLOCK(%struct.autofs_mount* %125)
  %127 = load %struct.mount*, %struct.mount** %3, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @vfs_mountedfrom(%struct.mount* %127, i8* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %117, %59, %51, %43, %35, %25, %16
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @vfs_filteropt(i32, i32) #1

declare dso_local i32 @autofs_flush(i32) #1

declare dso_local i32 @VFSTOAUTOFS(%struct.mount*) #1

declare dso_local i64 @vfs_getopt(i32, i8*, i8**, i32*) #1

declare dso_local %struct.autofs_mount* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @AUTOFS_XLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_new(i32*, %struct.autofs_mount*, i8*, i32, i32*) #1

declare dso_local i32 @AUTOFS_XUNLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @free(%struct.autofs_mount*, i32) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
