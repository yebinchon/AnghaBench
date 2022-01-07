; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32* }
%struct.ext2mount = type { i32, i32, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, %struct.ext2mount*, i32, i32, i32, i64, %struct.ext2mount* }
%struct.m_ext2fs = type { i32, i32, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, %struct.m_ext2fs*, i32, i32, i32, i64, %struct.m_ext2fs* }
%struct.csum = type { i32, i32, %struct.csum*, %struct.csum*, %struct.csum*, %struct.csum*, %struct.csum*, %struct.csum*, i32, i32, i32, i64, %struct.csum* }

@MNT_FORCE = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@E2FS_ISCLEAN = common dso_local global i32 0, align 4
@M_EXT2MNT = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @ext2_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2mount*, align 8
  %7 = alloca %struct.m_ext2fs*, align 8
  %8 = alloca %struct.csum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MNT_FORCE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MNT_ROOTFS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %154

26:                                               ; preds = %17
  %27 = load i32, i32* @FORCECLOSE, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.mount*, %struct.mount** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @curthread, align 4
  %34 = call i32 @ext2_flushfiles(%struct.mount* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %154

38:                                               ; preds = %30
  %39 = load %struct.mount*, %struct.mount** %4, align 8
  %40 = call %struct.m_ext2fs* @VFSTOEXT2(%struct.mount* %39)
  %41 = bitcast %struct.m_ext2fs* %40 to %struct.ext2mount*
  store %struct.ext2mount* %41, %struct.ext2mount** %6, align 8
  %42 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %43 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %42, i32 0, i32 12
  %44 = load %struct.ext2mount*, %struct.ext2mount** %43, align 8
  %45 = bitcast %struct.ext2mount* %44 to %struct.m_ext2fs*
  store %struct.m_ext2fs* %45, %struct.m_ext2fs** %7, align 8
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %47 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %38
  %52 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %53 = bitcast %struct.ext2mount* %52 to %struct.m_ext2fs*
  %54 = load i32, i32* @MNT_WAIT, align 4
  %55 = call i64 @ext2_cgupdate(%struct.m_ext2fs* %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %59 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %58, i32 0, i32 11
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @E2FS_ISCLEAN, align 4
  %64 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %65 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %64, i32 0, i32 2
  %66 = load %struct.m_ext2fs*, %struct.m_ext2fs** %65, align 8
  %67 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %72 = bitcast %struct.ext2mount* %71 to %struct.m_ext2fs*
  %73 = load i32, i32* @MNT_WAIT, align 4
  %74 = call i32 @ext2_sbupdate(%struct.m_ext2fs* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %51, %38
  %76 = call i32 (...) @g_topology_lock()
  %77 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %78 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @g_vfs_close(i32 %79)
  %81 = call i32 (...) @g_topology_unlock()
  %82 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %83 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @vrele(i32 %84)
  %86 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %87 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %86, i32 0, i32 6
  %88 = load %struct.m_ext2fs*, %struct.m_ext2fs** %87, align 8
  %89 = bitcast %struct.m_ext2fs* %88 to %struct.csum*
  store %struct.csum* %89, %struct.csum** %8, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %103, %75
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %93 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.csum*, %struct.csum** %8, align 8
  %98 = getelementptr inbounds %struct.csum, %struct.csum* %97, i32 0, i32 7
  %99 = load %struct.csum*, %struct.csum** %98, align 8
  %100 = bitcast %struct.csum* %99 to %struct.m_ext2fs*
  %101 = load i32, i32* @M_EXT2MNT, align 4
  %102 = call i32 @free(%struct.m_ext2fs* %100, i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = load %struct.csum*, %struct.csum** %8, align 8
  %107 = getelementptr inbounds %struct.csum, %struct.csum* %106, i32 1
  store %struct.csum* %107, %struct.csum** %8, align 8
  br label %90

108:                                              ; preds = %90
  %109 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %110 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %109, i32 0, i32 6
  %111 = load %struct.m_ext2fs*, %struct.m_ext2fs** %110, align 8
  %112 = load i32, i32* @M_EXT2MNT, align 4
  %113 = call i32 @free(%struct.m_ext2fs* %111, i32 %112)
  %114 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %115 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %114, i32 0, i32 5
  %116 = load %struct.m_ext2fs*, %struct.m_ext2fs** %115, align 8
  %117 = load i32, i32* @M_EXT2MNT, align 4
  %118 = call i32 @free(%struct.m_ext2fs* %116, i32 %117)
  %119 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %120 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %119, i32 0, i32 4
  %121 = load %struct.m_ext2fs*, %struct.m_ext2fs** %120, align 8
  %122 = load i32, i32* @M_EXT2MNT, align 4
  %123 = call i32 @free(%struct.m_ext2fs* %121, i32 %122)
  %124 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %125 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %124, i32 0, i32 3
  %126 = load %struct.m_ext2fs*, %struct.m_ext2fs** %125, align 8
  %127 = load i32, i32* @M_EXT2MNT, align 4
  %128 = call i32 @free(%struct.m_ext2fs* %126, i32 %127)
  %129 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %130 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %129, i32 0, i32 2
  %131 = load %struct.m_ext2fs*, %struct.m_ext2fs** %130, align 8
  %132 = load i32, i32* @M_EXT2MNT, align 4
  %133 = call i32 @free(%struct.m_ext2fs* %131, i32 %132)
  %134 = load %struct.m_ext2fs*, %struct.m_ext2fs** %7, align 8
  %135 = load i32, i32* @M_EXT2MNT, align 4
  %136 = call i32 @free(%struct.m_ext2fs* %134, i32 %135)
  %137 = load %struct.ext2mount*, %struct.ext2mount** %6, align 8
  %138 = bitcast %struct.ext2mount* %137 to %struct.m_ext2fs*
  %139 = load i32, i32* @M_EXT2MNT, align 4
  %140 = call i32 @free(%struct.m_ext2fs* %138, i32 %139)
  %141 = load %struct.mount*, %struct.mount** %4, align 8
  %142 = getelementptr inbounds %struct.mount, %struct.mount* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  %143 = load %struct.mount*, %struct.mount** %4, align 8
  %144 = call i32 @MNT_ILOCK(%struct.mount* %143)
  %145 = load i32, i32* @MNT_LOCAL, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.mount*, %struct.mount** %4, align 8
  %148 = getelementptr inbounds %struct.mount, %struct.mount* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.mount*, %struct.mount** %4, align 8
  %152 = call i32 @MNT_IUNLOCK(%struct.mount* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %108, %36, %24
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ext2_flushfiles(%struct.mount*, i32, i32) #1

declare dso_local %struct.m_ext2fs* @VFSTOEXT2(%struct.mount*) #1

declare dso_local i64 @ext2_cgupdate(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_sbupdate(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_vfs_close(i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @vrele(i32) #1

declare dso_local i32 @free(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
