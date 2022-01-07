; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_accessx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_accessx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_accessx_args = type { i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vop_generic_args = type { i32 }

@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_accessx_args*)* @null_accessx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_accessx(%struct.vop_accessx_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_accessx_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_accessx_args* %0, %struct.vop_accessx_args** %3, align 8
  %6 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_accessx_args, %struct.vop_accessx_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VWRITE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %32 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %16, %16, %16
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MNT_RDONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @EROFS, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.vop_accessx_args*, %struct.vop_accessx_args** %3, align 8
  %36 = bitcast %struct.vop_accessx_args* %35 to %struct.vop_generic_args*
  %37 = call i32 @null_bypass(%struct.vop_generic_args* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @null_bypass(%struct.vop_generic_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
