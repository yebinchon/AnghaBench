; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i32*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@Froot = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @fdesc_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_pathconf_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %3, align 8
  %6 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %6, i32 0, i32 2
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %33 [
    i32 128, label %12
    i32 129, label %17
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @NAME_MAX, align 4
  %14 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32 %13, i32* %16, align 4
  store i32 0, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @Froot, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32 2, i32* %27, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  store i32 0, i32* %2, align 4
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @Froot, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %42 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %41)
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %33
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = call i32 @vref(%struct.vnode* %44)
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = call i32 @VOP_UNLOCK(%struct.vnode* %46, i32 0)
  %48 = load i32, i32* @curthread, align 4
  %49 = load %struct.vnode*, %struct.vnode** %4, align 8
  %50 = call %struct.TYPE_2__* @VTOFDESC(%struct.vnode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kern_fpathconf(i32 %48, i32 %52, i32 %55, i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.vnode*, %struct.vnode** %4, align 8
  %61 = load i32, i32* @LK_SHARED, align 4
  %62 = load i32, i32* @LK_RETRY, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @vn_lock(%struct.vnode* %60, i32 %63)
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = call i32 @vunref(%struct.vnode* %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %43, %40, %32, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_2__* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @kern_fpathconf(i32, i32, i32, i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
