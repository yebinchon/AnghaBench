; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.fuse_vnode_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vattr = type { i64 }
%struct.buf = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"fuse_vnode_setsize\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@B_VMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_vnode_setsize(%struct.vnode* %0, i64 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fuse_vnode_data*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %12)
  store %struct.fuse_vnode_data* %13, %struct.fuse_vnode_data** %5, align 8
  store %struct.buf* null, %struct.buf** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.vnode*, %struct.vnode** %3, align 8
  %15 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = call i64 @fuse_iosize(%struct.vnode* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %5, align 8
  %19 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %5, align 8
  %24 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = call %struct.vattr* @VTOVA(%struct.vnode* %26)
  store %struct.vattr* %27, %struct.vattr** %6, align 8
  %28 = icmp ne %struct.vattr* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.vattr*, %struct.vattr** %6, align 8
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %33
  %38 = load %struct.vnode*, %struct.vnode** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.vnode*, %struct.vnode** %3, align 8
  %41 = call i64 @fuse_iosize(%struct.vnode* %40)
  %42 = call i32 @vtruncbuf(%struct.vnode* %38, i64 %39, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %94

46:                                               ; preds = %37
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = urem i64 %47, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %94

52:                                               ; preds = %46
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = udiv i64 %53, %54
  store i64 %55, i64* %11, align 8
  %56 = load %struct.vnode*, %struct.vnode** %3, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @PCATCH, align 4
  %60 = call %struct.buf* @getblk(%struct.vnode* %56, i64 %57, i64 %58, i32 %59, i32 0, i32 0)
  store %struct.buf* %60, %struct.buf** %9, align 8
  %61 = load %struct.buf*, %struct.buf** %9, align 8
  %62 = icmp ne %struct.buf* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @EINTR, align 4
  store i32 %64, i32* %10, align 4
  br label %94

65:                                               ; preds = %52
  %66 = load %struct.buf*, %struct.buf** %9, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @B_CACHE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %94

73:                                               ; preds = %65
  %74 = load %struct.buf*, %struct.buf** %9, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @B_VMIO, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @MPASS(i32 %78)
  %80 = load %struct.buf*, %struct.buf** %9, align 8
  %81 = call i32 @vfs_bio_clrbuf(%struct.buf* %80)
  %82 = load %struct.buf*, %struct.buf** %9, align 8
  %83 = getelementptr inbounds %struct.buf, %struct.buf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %8, align 8
  %88 = mul i64 %86, %87
  %89 = sub i64 %85, %88
  %90 = call i32 @MIN(i32 %84, i64 %89)
  %91 = load %struct.buf*, %struct.buf** %9, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %73, %33
  br label %94

94:                                               ; preds = %93, %72, %63, %51, %45
  %95 = load %struct.buf*, %struct.buf** %9, align 8
  %96 = icmp ne %struct.buf* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.buf*, %struct.buf** %9, align 8
  %99 = call i32 @brelse(%struct.buf* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.vnode*, %struct.vnode** %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @vnode_pager_setsize(%struct.vnode* %101, i64 %102)
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @fuse_iosize(%struct.vnode*) #1

declare dso_local %struct.vattr* @VTOVA(%struct.vnode*) #1

declare dso_local i32 @vtruncbuf(%struct.vnode*, i64, i64) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vfs_bio_clrbuf(%struct.buf*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
