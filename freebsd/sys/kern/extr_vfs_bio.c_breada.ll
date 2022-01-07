; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_breada.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_breada.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.buf = type { i32, {}*, i32, i32, %struct.ucred*, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@B_CACHE = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@GB_CKHASH = common dso_local global i32 0, align 4
@B_CKHASH = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@NOCRED = common dso_local global %struct.ucred* null, align 8
@curproc = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i32*, i32*, i32, %struct.ucred*, i32, void (%struct.buf*)*)* @breada to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breada(%struct.vnode* %0, i32* %1, i32* %2, i32 %3, %struct.ucred* %4, i32 %5, void (%struct.buf*)* %6) #0 {
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (%struct.buf*)*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ucred* %4, %struct.ucred** %12, align 8
  store i32 %5, i32* %13, align 4
  store void (%struct.buf*)* %6, void (%struct.buf*)** %14, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %16, align 8
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %114, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %121

23:                                               ; preds = %19
  %24 = load %struct.vnode*, %struct.vnode** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @inmem(%struct.vnode* %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %114

30:                                               ; preds = %23
  %31 = load %struct.vnode*, %struct.vnode** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.buf* @getblk(%struct.vnode* %31, i32 %33, i32 %35, i32 0, i32 0, i32 0)
  store %struct.buf* %36, %struct.buf** %15, align 8
  %37 = load %struct.buf*, %struct.buf** %15, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @B_CACHE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.buf*, %struct.buf** %15, align 8
  %45 = call i32 @brelse(%struct.buf* %44)
  br label %114

46:                                               ; preds = %30
  %47 = load %struct.thread*, %struct.thread** %16, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @B_ASYNC, align 4
  %53 = load %struct.buf*, %struct.buf** %15, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @B_INVAL, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.buf*, %struct.buf** %15, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @GB_CKHASH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %46
  %68 = load i32, i32* @B_CKHASH, align 4
  %69 = load %struct.buf*, %struct.buf** %15, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load void (%struct.buf*)*, void (%struct.buf*)** %14, align 8
  %74 = load %struct.buf*, %struct.buf** %15, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 1
  %76 = bitcast {}** %75 to void (%struct.buf*)**
  store void (%struct.buf*)* %73, void (%struct.buf*)** %76, align 8
  br label %77

77:                                               ; preds = %67, %46
  %78 = load i32, i32* @BIO_ERROR, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.buf*, %struct.buf** %15, align 8
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @BIO_READ, align 4
  %85 = load %struct.buf*, %struct.buf** %15, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.buf*, %struct.buf** %15, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 4
  %89 = load %struct.ucred*, %struct.ucred** %88, align 8
  %90 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %91 = icmp eq %struct.ucred* %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %77
  %93 = load %struct.ucred*, %struct.ucred** %12, align 8
  %94 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %95 = icmp ne %struct.ucred* %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.ucred*, %struct.ucred** %12, align 8
  %98 = call %struct.ucred* @crhold(%struct.ucred* %97)
  %99 = load %struct.buf*, %struct.buf** %15, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 4
  store %struct.ucred* %98, %struct.ucred** %100, align 8
  br label %101

101:                                              ; preds = %96, %92, %77
  %102 = load %struct.buf*, %struct.buf** %15, align 8
  %103 = call i32 @vfs_busy_pages(%struct.buf* %102, i32 0)
  %104 = load %struct.buf*, %struct.buf** %15, align 8
  %105 = call i32 @BUF_KERNPROC(%struct.buf* %104)
  %106 = load %struct.buf*, %struct.buf** %15, align 8
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dbtob(i32 %108)
  %110 = load %struct.buf*, %struct.buf** %15, align 8
  %111 = getelementptr inbounds %struct.buf, %struct.buf* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.buf*, %struct.buf** %15, align 8
  %113 = call i32 @bstrategy(%struct.buf* %112)
  br label %114

114:                                              ; preds = %101, %43, %29
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  br label %19

121:                                              ; preds = %19
  ret void
}

declare dso_local i64 @inmem(%struct.vnode*, i32) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local %struct.ucred* @crhold(%struct.ucred*) #1

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
