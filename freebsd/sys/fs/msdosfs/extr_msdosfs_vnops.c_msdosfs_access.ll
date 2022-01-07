; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.denode = type { %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32, i32, i32 }

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @msdosfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %9 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %12, i32 0, i32 2
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  %15 = call %struct.denode* @VTODE(%struct.vnode* %14)
  store %struct.denode* %15, %struct.denode** %5, align 8
  %16 = load %struct.denode*, %struct.denode** %5, align 8
  %17 = getelementptr inbounds %struct.denode, %struct.denode* %16, i32 0, i32 0
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %17, align 8
  store %struct.msdosfsmount* %18, %struct.msdosfsmount** %6, align 8
  %19 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @S_IRWXU, align 4
  %23 = load i32, i32* @S_IRWXG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @S_IRWXO, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %33 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %37 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @VWRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %63 [
    i32 128, label %51
    i32 129, label %51
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.vnode*, %struct.vnode** %4, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MNT_RDONLY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @EROFS, align 4
  store i32 %61, i32* %2, align 4
  br label %83

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %71 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %74 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %77 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vaccess(i32 %68, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32* null)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %65, %60
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
