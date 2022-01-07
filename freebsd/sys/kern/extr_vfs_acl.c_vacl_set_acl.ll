; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_set_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.acl = type { i32 }
%struct.mount = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i32, %struct.acl*)* @vacl_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacl_set_acl(%struct.thread* %0, %struct.vnode* %1, i32 %2, %struct.acl* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acl*, align 8
  %9 = alloca %struct.acl*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.acl* %3, %struct.acl** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @AUDIT_ARG_VALUE(i32 %12)
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call %struct.acl* @acl_alloc(i32 %14)
  store %struct.acl* %15, %struct.acl** %9, align 8
  %16 = load %struct.acl*, %struct.acl** %8, align 8
  %17 = load %struct.acl*, %struct.acl** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @acl_copyin(%struct.acl* %16, %struct.acl* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %53

23:                                               ; preds = %4
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = load i32, i32* @V_WAIT, align 4
  %26 = load i32, i32* @PCATCH, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @vn_start_write(%struct.vnode* %24, %struct.mount** %10, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = load i32, i32* @LK_EXCLUSIVE, align 4
  %35 = load i32, i32* @LK_RETRY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @vn_lock(%struct.vnode* %33, i32 %36)
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %38)
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @acl_type_unold(i32 %41)
  %43 = load %struct.acl*, %struct.acl** %9, align 8
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.thread*, %struct.thread** %5, align 8
  %48 = call i32 @VOP_SETACL(%struct.vnode* %40, i32 %42, %struct.acl* %43, i32 %46, %struct.thread* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.vnode*, %struct.vnode** %6, align 8
  %50 = call i32 @VOP_UNLOCK(%struct.vnode* %49, i32 0)
  %51 = load %struct.mount*, %struct.mount** %10, align 8
  %52 = call i32 @vn_finished_write(%struct.mount* %51)
  br label %53

53:                                               ; preds = %32, %31, %22
  %54 = load %struct.acl*, %struct.acl** %9, align 8
  %55 = call i32 @acl_free(%struct.acl* %54)
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local %struct.acl* @acl_alloc(i32) #1

declare dso_local i32 @acl_copyin(%struct.acl*, %struct.acl*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VOP_SETACL(%struct.vnode*, i32, %struct.acl*, i32, %struct.thread*) #1

declare dso_local i32 @acl_type_unold(i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @acl_free(%struct.acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
