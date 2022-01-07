; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_msdosfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i64)* }
%struct.mount = type { i32, i32* }
%struct.msdosfsmount = type { i32, i32, %struct.msdosfsmount*, %struct.TYPE_10__*, %struct.vnode*, i32, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.vnode = type { i32, %struct.bufobj, i32, %struct.TYPE_6__ }
%struct.bufobj = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@msdosfs_iconv = common dso_local global %struct.TYPE_9__* null, align 8
@M_MSDOSFSFAT = common dso_local global i32 0, align 4
@M_MSDOSFSMNT = common dso_local global i32 0, align 4
@MNT_LOCAL = common dso_local global i32 0, align 4
@v_actfreelist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @msdosfs_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %9)
  store %struct.msdosfsmount* %10, %struct.msdosfsmount** %6, align 8
  %11 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %12 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = load i32, i32* @MNT_WAIT, align 4
  %20 = call i32 @msdosfs_sync(%struct.mount* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MNT_FORCE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @FORCECLOSE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %36

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %178

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.mount*, %struct.mount** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @curthread, align 4
  %40 = call i32 @vflush(%struct.mount* %37, i32 0, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ENXIO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %178

49:                                               ; preds = %43, %36
  %50 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %51 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %58 = call i32 @markvoldirty(%struct.msdosfsmount* %57, i32 0)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ENXIO, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %67 = call i32 @markvoldirty(%struct.msdosfsmount* %66, i32 1)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %178

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %49
  %71 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %72 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %133

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msdosfs_iconv, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %133

80:                                               ; preds = %77
  %81 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %82 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msdosfs_iconv, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32 (i64)*, i32 (i64)** %87, align 8
  %89 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %90 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = call i32 %88(i64 %91)
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %95 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msdosfs_iconv, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32 (i64)*, i32 (i64)** %100, align 8
  %102 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %103 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 %101(i64 %104)
  br label %106

106:                                              ; preds = %98, %93
  %107 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %108 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msdosfs_iconv, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32 (i64)*, i32 (i64)** %113, align 8
  %115 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %116 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = call i32 %114(i64 %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %121 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @msdosfs_iconv, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32 (i64)*, i32 (i64)** %126, align 8
  %128 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %129 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = call i32 %127(i64 %130)
  br label %132

132:                                              ; preds = %124, %119
  br label %133

133:                                              ; preds = %132, %77, %70
  %134 = call i32 (...) @g_topology_lock()
  %135 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %136 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @g_vfs_close(i32 %137)
  %139 = call i32 (...) @g_topology_unlock()
  %140 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %141 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = bitcast i32* %143 to i64*
  %145 = call i32 @atomic_store_rel_ptr(i64* %144, i32 0)
  %146 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %147 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %146, i32 0, i32 4
  %148 = load %struct.vnode*, %struct.vnode** %147, align 8
  %149 = call i32 @vrele(%struct.vnode* %148)
  %150 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %151 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %150, i32 0, i32 3
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = call i32 @dev_rel(%struct.TYPE_10__* %152)
  %154 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %155 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %154, i32 0, i32 2
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %155, align 8
  %157 = load i32, i32* @M_MSDOSFSFAT, align 4
  %158 = call i32 @free(%struct.msdosfsmount* %156, i32 %157)
  %159 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %160 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %159, i32 0, i32 1
  %161 = call i32 @lockdestroy(i32* %160)
  %162 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %163 = load i32, i32* @M_MSDOSFSMNT, align 4
  %164 = call i32 @free(%struct.msdosfsmount* %162, i32 %163)
  %165 = load %struct.mount*, %struct.mount** %4, align 8
  %166 = getelementptr inbounds %struct.mount, %struct.mount* %165, i32 0, i32 1
  store i32* null, i32** %166, align 8
  %167 = load %struct.mount*, %struct.mount** %4, align 8
  %168 = call i32 @MNT_ILOCK(%struct.mount* %167)
  %169 = load i32, i32* @MNT_LOCAL, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.mount*, %struct.mount** %4, align 8
  %172 = getelementptr inbounds %struct.mount, %struct.mount* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.mount*, %struct.mount** %4, align 8
  %176 = call i32 @MNT_IUNLOCK(%struct.mount* %175)
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %133, %65, %47, %33
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i32 @msdosfs_sync(%struct.mount*, i32) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, i32) #1

declare dso_local i32 @markvoldirty(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_vfs_close(i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @atomic_store_rel_ptr(i64*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @dev_rel(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
