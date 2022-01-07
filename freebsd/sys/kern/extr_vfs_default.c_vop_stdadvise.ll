; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadvise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_advise_args = type { i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.bufobj, i32* }
%struct.bufobj = type { i32, i32, i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdadvise(%struct.vop_advise_args* %0) #0 {
  %2 = alloca %struct.vop_advise_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_advise_args* %0, %struct.vop_advise_args** %2, align 8
  %13 = load %struct.vop_advise_args*, %struct.vop_advise_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_advise_args, %struct.vop_advise_args* %13, i32 0, i32 3
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %3, align 8
  %16 = load %struct.vop_advise_args*, %struct.vop_advise_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_advise_args, %struct.vop_advise_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %106 [
    i32 128, label %19
    i32 129, label %20
  ]

19:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %108

20:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = load i32, i32* @LK_EXCLUSIVE, align 4
  %23 = load i32, i32* @LK_RETRY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @vn_lock(%struct.vnode* %21, i32 %24)
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VI_DOOMED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = call i32 @VOP_UNLOCK(%struct.vnode* %33, i32 0)
  br label %108

35:                                               ; preds = %20
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.vop_advise_args*, %struct.vop_advise_args** %2, align 8
  %41 = getelementptr inbounds %struct.vop_advise_args, %struct.vop_advise_args* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @rounddown(i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.vop_advise_args*, %struct.vop_advise_args** %2, align 8
  %46 = getelementptr inbounds %struct.vop_advise_args, %struct.vop_advise_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @roundup(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @trunc_page(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @round_page(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.vnode*, %struct.vnode** %3, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VM_OBJECT_RLOCK(i32* %61)
  %63 = load %struct.vnode*, %struct.vnode** %3, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @OFF_TO_IDX(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @OFF_TO_IDX(i32 %68)
  %70 = call i32 @vm_object_page_noreuse(i32* %65, i32 %67, i32 %69)
  %71 = load %struct.vnode*, %struct.vnode** %3, align 8
  %72 = getelementptr inbounds %struct.vnode, %struct.vnode* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @VM_OBJECT_RUNLOCK(i32* %73)
  br label %75

75:                                               ; preds = %54, %35
  %76 = load %struct.vnode*, %struct.vnode** %3, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 1
  store %struct.bufobj* %77, %struct.bufobj** %4, align 8
  %78 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %79 = call i32 @BO_RLOCK(%struct.bufobj* %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %87 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %86, i32 0, i32 2
  %88 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @bnoreuselist(i32* %87, %struct.bufobj* %88, i32 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %75
  %95 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %96 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %95, i32 0, i32 1
  %97 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @bnoreuselist(i32* %96, %struct.bufobj* %97, i32 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %94, %75
  %102 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %103 = call i32 @BO_RUNLOCK(%struct.bufobj* %102)
  %104 = load %struct.vnode*, %struct.vnode** %3, align 8
  %105 = call i32 @VOP_UNLOCK(%struct.vnode* %104, i32 0)
  br label %108

106:                                              ; preds = %1
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %101, %32, %19
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @VM_OBJECT_RLOCK(i32*) #1

declare dso_local i32 @vm_object_page_noreuse(i32*, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(i32*) #1

declare dso_local i32 @BO_RLOCK(%struct.bufobj*) #1

declare dso_local i32 @bnoreuselist(i32*, %struct.bufobj*, i32, i32) #1

declare dso_local i32 @BO_RUNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
