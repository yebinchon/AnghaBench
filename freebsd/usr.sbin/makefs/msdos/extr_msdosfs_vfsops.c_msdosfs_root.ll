; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vfsops.c_msdosfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vfsops.c_msdosfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { %struct.vnode* }
%struct.vnode = type { %struct.denode* }
%struct.denode = type { i32 }

@MSDOSFSROOT = common dso_local global i32 0, align 4
@MSDOSFSROOT_OFS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdosfs_root(%struct.msdosfsmount* %0, %struct.vnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msdosfsmount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.denode*, align 8
  %7 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %5, align 8
  %9 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %10 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %9, i32 0, i32 0
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  %12 = bitcast %struct.vnode* %8 to i8*
  %13 = bitcast %struct.vnode* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %15 = load i32, i32* @MSDOSFSROOT, align 4
  %16 = load i32, i32* @MSDOSFSROOT_OFS, align 4
  %17 = call i32 @deget(%struct.msdosfsmount* %14, i32 %15, i32 %16, %struct.denode** %6)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.denode*, %struct.denode** %6, align 8
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  store %struct.denode* %22, %struct.denode** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
