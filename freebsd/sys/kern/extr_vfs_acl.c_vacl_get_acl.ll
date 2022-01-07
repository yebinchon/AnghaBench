; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_get_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.acl = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i32, %struct.acl*)* @vacl_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacl_get_acl(%struct.thread* %0, %struct.vnode* %1, i32 %2, %struct.acl* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acl*, align 8
  %9 = alloca %struct.acl*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.acl* %3, %struct.acl** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @AUDIT_ARG_VALUE(i32 %11)
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.acl* @acl_alloc(i32 %15)
  store %struct.acl* %16, %struct.acl** %9, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = load i32, i32* @LK_EXCLUSIVE, align 4
  %19 = load i32, i32* @LK_RETRY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @vn_lock(%struct.vnode* %17, i32 %20)
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %22)
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @acl_type_unold(i32 %25)
  %27 = load %struct.acl*, %struct.acl** %9, align 8
  %28 = load %struct.thread*, %struct.thread** %5, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thread*, %struct.thread** %5, align 8
  %32 = call i32 @VOP_GETACL(%struct.vnode* %24, i32 %26, %struct.acl* %27, i32 %30, %struct.thread* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = call i32 @VOP_UNLOCK(%struct.vnode* %33, i32 0)
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load %struct.acl*, %struct.acl** %9, align 8
  %39 = load %struct.acl*, %struct.acl** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @acl_copyout(%struct.acl* %38, %struct.acl* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %4
  %43 = load %struct.acl*, %struct.acl** %9, align 8
  %44 = call i32 @acl_free(%struct.acl* %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local %struct.acl* @acl_alloc(i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VOP_GETACL(%struct.vnode*, i32, %struct.acl*, i32, %struct.thread*) #1

declare dso_local i32 @acl_type_unold(i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @acl_copyout(%struct.acl*, %struct.acl*, i32) #1

declare dso_local i32 @acl_free(%struct.acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
