; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_input_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_input_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.vnode*, %struct.TYPE_14__ }
%struct.vnode = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.uio = type { i32, i32, %struct.TYPE_17__*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i32, i64 }
%struct.sf_buf = type { i32 }

@VM_PAGER_BAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_17__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vnode_pager_input_old: page %p is dirty\00", align 1
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @vnode_pager_input_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_pager_input_old(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.uio, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sf_buf*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__* %13)
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IDX_TO_OFF(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @VM_PAGER_BAD, align 4
  store i32 %26, i32* %3, align 4
  br label %142

27:                                               ; preds = %2
  %28 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IDX_TO_OFF(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %27
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IDX_TO_OFF(i32 %50)
  %52 = sub nsw i64 %47, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %42, %27
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.vnode*, %struct.vnode** %56, align 8
  store %struct.vnode* %57, %struct.vnode** %11, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = call %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_15__* %60, i32 0)
  store %struct.sf_buf* %61, %struct.sf_buf** %10, align 8
  %62 = load %struct.sf_buf*, %struct.sf_buf** %10, align 8
  %63 = call i64 @sf_buf_kva(%struct.sf_buf* %62)
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 6
  store %struct.iovec* %7, %struct.iovec** %67, align 8
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IDX_TO_OFF(i32 %71)
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 5
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @UIO_SYSSPACE, align 4
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @UIO_READ, align 4
  %77 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 3
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curthread, align 8
  %81 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 2
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %81, align 8
  %82 = load %struct.vnode*, %struct.vnode** %11, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curthread, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VOP_READ(%struct.vnode* %82, %struct.uio* %6, i32 0, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %54
  %90 = load i32, i32* %9, align 4
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %90, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %8, align 4
  br label %113

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.sf_buf*, %struct.sf_buf** %10, align 8
  %104 = call i64 @sf_buf_kva(%struct.sf_buf* %103)
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @bzero(i64 %107, i32 %110)
  br label %112

112:                                              ; preds = %102, %98
  br label %113

113:                                              ; preds = %112, %96
  br label %114

114:                                              ; preds = %113, %54
  %115 = load %struct.sf_buf*, %struct.sf_buf** %10, align 8
  %116 = call i32 @sf_buf_free(%struct.sf_buf* %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %117)
  br label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = bitcast %struct.TYPE_15__* %125 to i8*
  %127 = call i32 @KASSERT(i32 %124, i8* %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %119
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = call i32 @vm_page_valid(%struct.TYPE_15__* %131)
  br label %133

133:                                              ; preds = %130, %119
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @VM_PAGER_ERROR, align 4
  br label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @VM_PAGER_OK, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %25
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__*) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__*) #1

declare dso_local %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @sf_buf_kva(%struct.sf_buf*) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @sf_buf_free(%struct.sf_buf*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
