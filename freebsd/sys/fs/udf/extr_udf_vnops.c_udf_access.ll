; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.udf_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VWRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @udf_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.udf_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %8 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.udf_node* @VTON(%struct.vnode* %11)
  store %struct.udf_node* %12, %struct.udf_node** %5, align 8
  %13 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VWRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %26 [
    i32 130, label %24
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load i32, i32* @EROFS, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.udf_node*, %struct.udf_node** %5, align 8
  %30 = call i32 @udf_permtomode(%struct.udf_node* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.udf_node*, %struct.udf_node** %5, align 8
  %36 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.udf_node*, %struct.udf_node** %5, align 8
  %41 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vaccess(i32 %33, i32 %34, i32 %39, i32 %44, i32 %45, i32 %48, i32* null)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %28, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @udf_permtomode(%struct.udf_node*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
