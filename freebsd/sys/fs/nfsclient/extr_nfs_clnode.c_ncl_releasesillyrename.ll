; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_releasesillyrename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_releasesillyrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.thread = type { i32 }
%struct.nfsnode = type { %struct.sillyrename* }
%struct.sillyrename = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"releasesillyrename\00", align 1
@VDIR = common dso_local global i64 0, align 8
@nfs_freesillyrename = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, %struct.thread*)* @ncl_releasesillyrename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncl_releasesillyrename(%struct.vnode* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.sillyrename*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.nfsnode* @VTONFS(%struct.vnode* %9)
  store %struct.nfsnode* %10, %struct.nfsnode** %5, align 8
  %11 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %12 = call i32 @NFSASSERTNODE(%struct.nfsnode* %11)
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VDIR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %20 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %19, i32 0, i32 0
  %21 = load %struct.sillyrename*, %struct.sillyrename** %20, align 8
  store %struct.sillyrename* %21, %struct.sillyrename** %6, align 8
  %22 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %23 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %22, i32 0, i32 0
  store %struct.sillyrename* null, %struct.sillyrename** %23, align 8
  br label %25

24:                                               ; preds = %2
  store %struct.sillyrename* null, %struct.sillyrename** %6, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %27 = icmp ne %struct.sillyrename* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %30 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %29)
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @ncl_vinvalbuf(%struct.vnode* %31, i32 0, %struct.thread* %32, i32 1)
  %34 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call i32 @ncl_removeit(%struct.sillyrename* %34, %struct.vnode* %35)
  %37 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %38 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crfree(i32 %39)
  %41 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %42 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %41, i32 0, i32 0
  %43 = load i32, i32* @nfs_freesillyrename, align 4
  %44 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %45 = call i32 @TASK_INIT(i32* %42, i32 0, i32 %43, %struct.sillyrename* %44)
  %46 = load i32, i32* @taskqueue_thread, align 4
  %47 = load %struct.sillyrename*, %struct.sillyrename** %6, align 8
  %48 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %47, i32 0, i32 0
  %49 = call i32 @taskqueue_enqueue(i32 %46, i32* %48)
  %50 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %51 = call i32 @NFSLOCKNODE(%struct.nfsnode* %50)
  br label %52

52:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSASSERTNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @ncl_removeit(%struct.sillyrename*, %struct.vnode*) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.sillyrename*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
