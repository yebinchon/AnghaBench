; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getattr_args = type { %struct.vattr*, %struct.vnode* }
%struct.vattr = type { i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32 }
%struct.vnode = type { %struct.TYPE_7__*, i32, %struct.pfs_vdata* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i32, i32*, i32 }
%struct.proc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@curthread = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"shouldn't be here!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @pfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %3, align 8
  %10 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %10, i32 0, i32 1
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 2
  %15 = load %struct.pfs_vdata*, %struct.pfs_vdata** %14, align 8
  store %struct.pfs_vdata* %15, %struct.pfs_vdata** %5, align 8
  %16 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %17 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %16, i32 0, i32 1
  %18 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  store %struct.pfs_node* %18, %struct.pfs_node** %6, align 8
  %19 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %19, i32 0, i32 0
  %21 = load %struct.vattr*, %struct.vattr** %20, align 8
  store %struct.vattr* %21, %struct.vattr** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %23 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @PFS_TRACE(i8* %26)
  %28 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %29 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %28)
  %30 = load i32, i32* @curthread, align 4
  %31 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %32 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %33 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pfs_visible(i32 %30, %struct.pfs_node* %31, i32 %34, %struct.proc** %8)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOENT, align 4
  %39 = call i32 @PFS_RETURN(i32 %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.vnode*, %struct.vnode** %4, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vattr*, %struct.vattr** %7, align 8
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %44, i32 0, i32 14
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %47 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %48 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pn_fileno(%struct.pfs_node* %46, i32 %49)
  %51 = load %struct.vattr*, %struct.vattr** %7, align 8
  %52 = getelementptr inbounds %struct.vattr, %struct.vattr* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vattr*, %struct.vattr** %7, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.vattr*, %struct.vattr** %7, align 8
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vattr*, %struct.vattr** %7, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 9
  store i64 0, i64* %59, align 8
  %60 = load %struct.vattr*, %struct.vattr** %7, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 10
  store i64 0, i64* %61, align 8
  %62 = load %struct.vattr*, %struct.vattr** %7, align 8
  %63 = getelementptr inbounds %struct.vattr, %struct.vattr* %62, i32 0, i32 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vattr*, %struct.vattr** %7, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.vattr*, %struct.vattr** %7, align 8
  %76 = getelementptr inbounds %struct.vattr, %struct.vattr* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.vattr*, %struct.vattr** %7, align 8
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %77, i32 0, i32 4
  %79 = call i32 @nanotime(i32* %78)
  %80 = load %struct.vattr*, %struct.vattr** %7, align 8
  %81 = getelementptr inbounds %struct.vattr, %struct.vattr* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vattr*, %struct.vattr** %7, align 8
  %84 = getelementptr inbounds %struct.vattr, %struct.vattr* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vattr*, %struct.vattr** %7, align 8
  %86 = getelementptr inbounds %struct.vattr, %struct.vattr* %85, i32 0, i32 6
  store i32 %82, i32* %86, align 8
  %87 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %88 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %96 [
    i32 130, label %90
    i32 129, label %90
    i32 132, label %90
    i32 131, label %93
    i32 128, label %93
  ]

90:                                               ; preds = %40, %40, %40
  %91 = load %struct.vattr*, %struct.vattr** %7, align 8
  %92 = getelementptr inbounds %struct.vattr, %struct.vattr* %91, i32 0, i32 1
  store i32 365, i32* %92, align 4
  br label %100

93:                                               ; preds = %40, %40
  %94 = load %struct.vattr*, %struct.vattr** %7, align 8
  %95 = getelementptr inbounds %struct.vattr, %struct.vattr* %94, i32 0, i32 1
  store i32 292, i32* %95, align 4
  br label %100

96:                                               ; preds = %40
  %97 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.vattr*, %struct.vattr** %7, align 8
  %99 = getelementptr inbounds %struct.vattr, %struct.vattr* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %93, %90
  %101 = load %struct.proc*, %struct.proc** %8, align 8
  %102 = icmp ne %struct.proc* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load %struct.proc*, %struct.proc** %8, align 8
  %105 = getelementptr inbounds %struct.proc, %struct.proc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.vattr*, %struct.vattr** %7, align 8
  %110 = getelementptr inbounds %struct.vattr, %struct.vattr* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load %struct.proc*, %struct.proc** %8, align 8
  %112 = getelementptr inbounds %struct.proc, %struct.proc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vattr*, %struct.vattr** %7, align 8
  %117 = getelementptr inbounds %struct.vattr, %struct.vattr* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %123

118:                                              ; preds = %100
  %119 = load %struct.vattr*, %struct.vattr** %7, align 8
  %120 = getelementptr inbounds %struct.vattr, %struct.vattr* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load %struct.vattr*, %struct.vattr** %7, align 8
  %122 = getelementptr inbounds %struct.vattr, %struct.vattr* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %103
  %124 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %125 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @curthread, align 4
  %130 = load %struct.proc*, %struct.proc** %8, align 8
  %131 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %132 = load %struct.vattr*, %struct.vattr** %7, align 8
  %133 = call i32 @pn_attr(i32 %129, %struct.proc* %130, %struct.pfs_node* %131, %struct.vattr* %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.proc*, %struct.proc** %8, align 8
  %136 = icmp ne %struct.proc* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.proc*, %struct.proc** %8, align 8
  %139 = call i32 @PROC_UNLOCK(%struct.proc* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @PFS_RETURN(i32 %141)
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @pfs_visible(i32, %struct.pfs_node*, i32, %struct.proc**) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @pn_fileno(%struct.pfs_node*, i32) #1

declare dso_local i32 @nanotime(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pn_attr(i32, %struct.proc*, %struct.pfs_node*, %struct.vattr*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
