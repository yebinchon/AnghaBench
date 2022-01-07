; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64)* }
%struct.mount = type { i32, i32* }
%struct.udf_mnt = type { i32, %struct.udf_mnt*, i32, i32, i32, i64, i64 }

@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@UDFMNT_KICONV = common dso_local global i32 0, align 4
@udf_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@M_UDFMOUNT = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @udf_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udf_mnt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call %struct.udf_mnt* @VFSTOUDFFS(%struct.mount* %9)
  store %struct.udf_mnt* %10, %struct.udf_mnt** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MNT_FORCE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @FORCECLOSE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.mount*, %struct.mount** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @curthread, align 4
  %23 = call i32 @vflush(%struct.mount* %20, i32 0, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %19
  %28 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %29 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UDFMNT_KICONV, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udf_iconv, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %39 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udf_iconv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %47 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = call i32 %45(i64 %48)
  br label %50

50:                                               ; preds = %42, %37
  br label %51

51:                                               ; preds = %50, %34, %27
  %52 = call i32 (...) @g_topology_lock()
  %53 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %54 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @g_vfs_close(i32 %55)
  %57 = call i32 (...) @g_topology_unlock()
  %58 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %59 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vrele(i32 %60)
  %62 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %63 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_rel(i32 %64)
  %66 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %67 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %66, i32 0, i32 1
  %68 = load %struct.udf_mnt*, %struct.udf_mnt** %67, align 8
  %69 = icmp ne %struct.udf_mnt* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %51
  %71 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %72 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %71, i32 0, i32 1
  %73 = load %struct.udf_mnt*, %struct.udf_mnt** %72, align 8
  %74 = load i32, i32* @M_UDFMOUNT, align 4
  %75 = call i32 @free(%struct.udf_mnt* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %51
  %77 = load %struct.udf_mnt*, %struct.udf_mnt** %6, align 8
  %78 = load i32, i32* @M_UDFMOUNT, align 4
  %79 = call i32 @free(%struct.udf_mnt* %77, i32 %78)
  %80 = load %struct.mount*, %struct.mount** %4, align 8
  %81 = getelementptr inbounds %struct.mount, %struct.mount* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.mount*, %struct.mount** %4, align 8
  %83 = call i32 @MNT_ILOCK(%struct.mount* %82)
  %84 = load i32, i32* @MNT_LOCAL, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.mount*, %struct.mount** %4, align 8
  %87 = getelementptr inbounds %struct.mount, %struct.mount* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.mount*, %struct.mount** %4, align 8
  %91 = call i32 @MNT_IUNLOCK(%struct.mount* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %76, %25
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.udf_mnt* @VFSTOUDFFS(%struct.mount*) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_vfs_close(i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @vrele(i32) #1

declare dso_local i32 @dev_rel(i32) #1

declare dso_local i32 @free(%struct.udf_mnt*, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
