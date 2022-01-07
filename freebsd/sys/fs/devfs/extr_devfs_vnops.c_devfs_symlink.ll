; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_symlink_args = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.devfs_dirent* }
%struct.devfs_dirent = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.devfs_dirent*, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.devfs_mount = type { i32, i32 }

@curthread = common dso_local global i32 0, align 4
@PRIV_DEVFS_SYMLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DE_USER = common dso_local global i32 0, align 4
@devfs_inos = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@M_DEVFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DEVFS_DEL_NORECURSE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DE_COVERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"devfs_symlink: entry %p already covered\00", align 1
@de_list = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_symlink_args*)* @devfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_symlink(%struct.vop_symlink_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_symlink_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.devfs_dirent*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.devfs_dirent*, align 8
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca %struct.devfs_mount*, align 8
  store %struct.vop_symlink_args* %0, %struct.vop_symlink_args** %3, align 8
  %11 = load i32, i32* @curthread, align 4
  %12 = load i32, i32* @PRIV_DEVFS_SYMLINK, align 4
  %13 = call i32 @priv_check(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %165

18:                                               ; preds = %1
  %19 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.devfs_mount* @VFSTODEVFS(i32 %23)
  store %struct.devfs_mount* %24, %struct.devfs_mount** %10, align 8
  %25 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i64 @devfs_populate_vp(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %2, align 4
  br label %165

32:                                               ; preds = %18
  %33 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.devfs_dirent*, %struct.devfs_dirent** %36, align 8
  store %struct.devfs_dirent* %37, %struct.devfs_dirent** %6, align 8
  %38 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.devfs_dirent* @devfs_newdirent(i32 %42, i32 %47)
  store %struct.devfs_dirent* %48, %struct.devfs_dirent** %7, align 8
  %49 = load i32, i32* @DE_USER, align 4
  %50 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %51 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %53 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %55 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %57 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %56, i32 0, i32 1
  store i32 493, i32* %57, align 4
  %58 = load i32, i32* @devfs_inos, align 4
  %59 = call i32 @alloc_unr(i32 %58)
  %60 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %61 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %63 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %64 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %63, i32 0, i32 5
  store %struct.devfs_dirent* %62, %struct.devfs_dirent** %64, align 8
  %65 = load i32, i32* @DT_LNK, align 4
  %66 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %67 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %71 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strlen(i32 %72)
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @M_DEVFS, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i32 @malloc(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %80 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %82 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %85 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @bcopy(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %90 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %91 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %96 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent* %89, i32 %94, i32 %99, i32 0)
  store %struct.devfs_dirent* %100, %struct.devfs_dirent** %8, align 8
  %101 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %102 = icmp ne %struct.devfs_dirent* %101, null
  br i1 %102, label %103, label %135

103:                                              ; preds = %32
  %104 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %105 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DE_USER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %112 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %113 = load i32, i32* @DEVFS_DEL_NORECURSE, align 4
  %114 = call i32 @devfs_delete(%struct.devfs_mount* %111, %struct.devfs_dirent* %112, i32 %113)
  %115 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %116 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %115, i32 0, i32 0
  %117 = call i32 @sx_xunlock(i32* %116)
  %118 = load i32, i32* @EEXIST, align 4
  store i32 %118, i32* %2, align 4
  br label %165

119:                                              ; preds = %103
  %120 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %121 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DE_COVERED, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %128 = bitcast %struct.devfs_dirent* %127 to i8*
  %129 = call i32 @KASSERT(i32 %126, i8* %128)
  %130 = load i32, i32* @DE_COVERED, align 4
  %131 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  %132 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %119, %32
  %136 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %137 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %136, i32 0, i32 2
  %138 = call %struct.devfs_dirent* @TAILQ_FIRST(i32* %137)
  store %struct.devfs_dirent* %138, %struct.devfs_dirent** %9, align 8
  %139 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %140 = load i32, i32* @de_list, align 4
  %141 = call %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent* %139, i32 %140)
  store %struct.devfs_dirent* %141, %struct.devfs_dirent** %9, align 8
  %142 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %143 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %142, i32 0, i32 2
  %144 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %145 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %146 = load i32, i32* @de_list, align 4
  %147 = call i32 @TAILQ_INSERT_AFTER(i32* %143, %struct.devfs_dirent* %144, %struct.devfs_dirent* %145, i32 %146)
  %148 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %149 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %150 = call i32 @devfs_dir_ref_de(%struct.devfs_mount* %148, %struct.devfs_dirent* %149)
  %151 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %152 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %153 = call i32 @devfs_rules_apply(%struct.devfs_mount* %151, %struct.devfs_dirent* %152)
  %154 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %155 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %156 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @LK_EXCLUSIVE, align 4
  %161 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %3, align 8
  %162 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @devfs_allocv(%struct.devfs_dirent* %154, i32 %159, i32 %160, i32 %163)
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %135, %110, %30, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i64 @devfs_populate_vp(%struct.TYPE_6__*) #1

declare dso_local %struct.devfs_dirent* @devfs_newdirent(i32, i32) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local %struct.devfs_dirent* @devfs_find(%struct.devfs_dirent*, i32, i32, i32) #1

declare dso_local i32 @devfs_delete(%struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.devfs_dirent* @TAILQ_NEXT(%struct.devfs_dirent*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.devfs_dirent*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @devfs_dir_ref_de(%struct.devfs_mount*, %struct.devfs_dirent*) #1

declare dso_local i32 @devfs_rules_apply(%struct.devfs_mount*, %struct.devfs_dirent*) #1

declare dso_local i32 @devfs_allocv(%struct.devfs_dirent*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
