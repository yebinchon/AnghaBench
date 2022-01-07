; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_rotate_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_worker.c_audit_rotate_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"audit_rotate_vnode: cred %p vp %p\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@audit_cred = common dso_local global %struct.ucred* null, align 8
@audit_vp = common dso_local global %struct.vnode* null, align 8
@audit_size = common dso_local global i64 0, align 8
@audit_file_rotate_wait = common dso_local global i64 0, align 8
@audit_trail_enabled = common dso_local global i32 0, align 4
@AUDIT_CLOSE_FLAGS = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_rotate_vnode(%struct.ucred* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vattr, align 8
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %8 = load %struct.ucred*, %struct.ucred** %3, align 8
  %9 = icmp ne %struct.ucred* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = icmp ne %struct.vnode* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.ucred*, %struct.ucred** %3, align 8
  %15 = icmp eq %struct.ucred* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = icmp eq %struct.vnode* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i1 [ true, %10 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.ucred*, %struct.ucred** %3, align 8
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = bitcast %struct.vnode* %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = icmp ne %struct.vnode* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = load i32, i32* @LK_SHARED, align 4
  %33 = load i32, i32* @LK_RETRY, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @vn_lock(%struct.vnode* %31, i32 %34)
  %36 = load %struct.vnode*, %struct.vnode** %4, align 8
  %37 = load %struct.ucred*, %struct.ucred** %3, align 8
  %38 = call i64 @VOP_GETATTR(%struct.vnode* %36, %struct.vattr* %7, %struct.ucred* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %40, %30
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = call i32 @VOP_UNLOCK(%struct.vnode* %43, i32 0)
  br label %47

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = call i32 (...) @AUDIT_WORKER_LOCK()
  %49 = load %struct.ucred*, %struct.ucred** @audit_cred, align 8
  store %struct.ucred* %49, %struct.ucred** %5, align 8
  %50 = load %struct.vnode*, %struct.vnode** @audit_vp, align 8
  store %struct.vnode* %50, %struct.vnode** %6, align 8
  %51 = load %struct.ucred*, %struct.ucred** %3, align 8
  store %struct.ucred* %51, %struct.ucred** @audit_cred, align 8
  %52 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %52, %struct.vnode** @audit_vp, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @audit_size, align 8
  store i64 0, i64* @audit_file_rotate_wait, align 8
  %55 = load %struct.vnode*, %struct.vnode** @audit_vp, align 8
  %56 = icmp ne %struct.vnode* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @audit_trail_enabled, align 4
  %58 = call i32 (...) @audit_syscalls_enabled_update()
  %59 = call i32 (...) @AUDIT_WORKER_UNLOCK()
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = icmp ne %struct.vnode* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %47
  %63 = load %struct.vnode*, %struct.vnode** %6, align 8
  %64 = load i32, i32* @AUDIT_CLOSE_FLAGS, align 4
  %65 = load %struct.ucred*, %struct.ucred** %5, align 8
  %66 = load i32, i32* @curthread, align 4
  %67 = call i32 @vn_close(%struct.vnode* %63, i32 %64, %struct.ucred* %65, i32 %66)
  %68 = load %struct.ucred*, %struct.ucred** %5, align 8
  %69 = call i32 @crfree(%struct.ucred* %68)
  br label %70

70:                                               ; preds = %62, %47
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_WORKER_LOCK(...) #1

declare dso_local i32 @audit_syscalls_enabled_update(...) #1

declare dso_local i32 @AUDIT_WORKER_UNLOCK(...) #1

declare dso_local i32 @vn_close(%struct.vnode*, i32, %struct.ucred*, i32) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
