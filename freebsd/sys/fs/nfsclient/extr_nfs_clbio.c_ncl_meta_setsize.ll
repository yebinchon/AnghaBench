; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_meta_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_meta_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }
%struct.nfsnode = type { i64 }
%struct.buf = type { i64, i64, i64, i32 }

@EINTR = common dso_local global i32 0, align 4
@B_RELBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_meta_setsize(%struct.vnode* %0, %struct.thread* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfsnode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %8, align 8
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %22 = call i32 @NFSLOCKNODE(%struct.nfsnode* %21)
  %23 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %24 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %28 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nfsnode*, %struct.nfsnode** %8, align 8
  %30 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %3
  %35 = load %struct.vnode*, %struct.vnode** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @vtruncbuf(%struct.vnode* %35, i64 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = sdiv i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %44, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load %struct.vnode*, %struct.vnode** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.thread*, %struct.thread** %6, align 8
  %55 = call %struct.buf* @nfs_getcacheblk(%struct.vnode* %51, i32 %52, i32 %53, %struct.thread* %54)
  store %struct.buf* %55, %struct.buf** %12, align 8
  %56 = load %struct.buf*, %struct.buf** %12, align 8
  %57 = icmp ne %struct.buf* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %34
  %59 = load i32, i32* @EINTR, align 4
  store i32 %59, i32* %4, align 4
  br label %102

60:                                               ; preds = %34
  %61 = load %struct.buf*, %struct.buf** %12, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.buf*, %struct.buf** %12, align 8
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.buf*, %struct.buf** %12, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.buf*, %struct.buf** %12, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.buf*, %struct.buf** %12, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.buf*, %struct.buf** %12, align 8
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.buf*, %struct.buf** %12, align 8
  %84 = getelementptr inbounds %struct.buf, %struct.buf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.buf*, %struct.buf** %12, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* @B_RELBUF, align 4
  %90 = load %struct.buf*, %struct.buf** %12, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.buf*, %struct.buf** %12, align 8
  %95 = call i32 @brelse(%struct.buf* %94)
  br label %100

96:                                               ; preds = %3
  %97 = load %struct.vnode*, %struct.vnode** %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @vnode_pager_setsize(%struct.vnode* %97, i64 %98)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %58
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @vtruncbuf(%struct.vnode*, i64, i32) #1

declare dso_local %struct.buf* @nfs_getcacheblk(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
