; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.vnode*, %struct.buf* }
%struct.vnode = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.buf = type { i32, i32, i32, i64, %struct.ucred*, %struct.ucred*, %struct.vnode* }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"missing b_getvp\00", align 1
@B_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"nfs_strategy: buffer %p unexpectedly marked B_DONE\00", align 1
@VREG = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@B_ASYNC = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @nfs_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca %struct.vop_strategy_args*, align 8
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %2, align 8
  %6 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %6, i32 0, i32 1
  %8 = load %struct.buf*, %struct.buf** %7, align 8
  store %struct.buf* %8, %struct.buf** %3, align 8
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 0
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.buf*, %struct.buf** %3, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 6
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = icmp eq %struct.vnode* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.buf*, %struct.buf** %3, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @B_DONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.buf*, %struct.buf** %3, align 8
  %28 = bitcast %struct.buf* %27 to i8*
  %29 = call i32 @KASSERT(i32 %26, i8* %28)
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VREG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %1
  %36 = load %struct.buf*, %struct.buf** %3, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.buf*, %struct.buf** %3, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.buf*, %struct.buf** %3, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vnode*, %struct.vnode** %4, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DEV_BSIZE, align 4
  %52 = sdiv i32 %50, %51
  %53 = mul nsw i32 %46, %52
  %54 = load %struct.buf*, %struct.buf** %3, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %35, %1
  %57 = load %struct.buf*, %struct.buf** %3, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BIO_READ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.buf*, %struct.buf** %3, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 5
  %65 = load %struct.ucred*, %struct.ucred** %64, align 8
  store %struct.ucred* %65, %struct.ucred** %5, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.buf*, %struct.buf** %3, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 4
  %69 = load %struct.ucred*, %struct.ucred** %68, align 8
  store %struct.ucred* %69, %struct.ucred** %5, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.buf*, %struct.buf** %3, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @B_ASYNC, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load %struct.vnode*, %struct.vnode** %4, align 8
  %79 = getelementptr inbounds %struct.vnode, %struct.vnode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @VFSTONFS(i32 %80)
  %82 = load %struct.buf*, %struct.buf** %3, align 8
  %83 = load i32, i32* @NOCRED, align 4
  %84 = load i32, i32* @curthread, align 4
  %85 = call i64 @ncl_asyncio(i32 %81, %struct.buf* %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77, %70
  %88 = load %struct.vnode*, %struct.vnode** %4, align 8
  %89 = load %struct.buf*, %struct.buf** %3, align 8
  %90 = load %struct.ucred*, %struct.ucred** %5, align 8
  %91 = load i32, i32* @curthread, align 4
  %92 = call i32 @ncl_doio(%struct.vnode* %88, %struct.buf* %89, %struct.ucred* %90, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %87, %77
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @ncl_asyncio(i32, %struct.buf*, i32, i32) #1

declare dso_local i32 @VFSTONFS(i32) #1

declare dso_local i32 @ncl_doio(%struct.vnode*, %struct.buf*, %struct.ucred*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
