; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_lock_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_lock_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faultstate = type { %struct.vnode*, %struct.TYPE_2__* }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.vnode* }

@OBJT_VNODE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"saved vnode is not locked\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"vm_fault: vget failed %d\00", align 1
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faultstate*)* @vm_fault_lock_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_fault_lock_vnode(%struct.faultstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.faultstate*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.faultstate* %0, %struct.faultstate** %3, align 8
  %7 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %8 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBJT_VNODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %18 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %4, align 8
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %24 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %23, i32 0, i32 0
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  %26 = icmp eq %struct.vnode* %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %30, i32* %2, align 4
  br label %85

31:                                               ; preds = %16
  %32 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %33 = call i32 @unlock_vp(%struct.faultstate* %32)
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call i32 @VOP_ISLOCKED(%struct.vnode* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LK_EXCLUSIVE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @LK_SHARED, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LK_CANRECURSE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @LK_NOWAIT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @curthread, align 4
  %49 = call i32 @vget(%struct.vnode* %42, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %55 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %54, i32 0, i32 0
  store %struct.vnode* %53, %struct.vnode** %55, align 8
  %56 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %85

57:                                               ; preds = %41
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  %59 = call i32 @vhold(%struct.vnode* %58)
  %60 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %61 = call i32 @release_page(%struct.faultstate* %60)
  %62 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %63 = call i32 @unlock_and_deallocate(%struct.faultstate* %62)
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @LK_RETRY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @LK_CANRECURSE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @curthread, align 4
  %71 = call i32 @vget(%struct.vnode* %64, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.vnode*, %struct.vnode** %4, align 8
  %73 = call i32 @vdrop(%struct.vnode* %72)
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = load %struct.faultstate*, %struct.faultstate** %3, align 8
  %76 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %75, i32 0, i32 0
  store %struct.vnode* %74, %struct.vnode** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @KASSERT(i32 %79, i8* %82)
  %84 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %57, %52, %27, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @unlock_vp(%struct.faultstate*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @vget(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @release_page(%struct.faultstate*) #1

declare dso_local i32 @unlock_and_deallocate(%struct.faultstate*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
