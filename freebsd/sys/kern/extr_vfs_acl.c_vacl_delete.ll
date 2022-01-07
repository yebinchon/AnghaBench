; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }

@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i32)* @vacl_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacl_delete(%struct.thread* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @AUDIT_ARG_VALUE(i32 %10)
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = load i32, i32* @V_WAIT, align 4
  %14 = load i32, i32* @PCATCH, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @vn_start_write(%struct.vnode* %12, %struct.mount** %8, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = load i32, i32* @LK_RETRY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vn_lock(%struct.vnode* %22, i32 %25)
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %27)
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @acl_type_unold(i32 %30)
  %32 = load %struct.thread*, %struct.thread** %5, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = call i32 @VOP_SETACL(%struct.vnode* %29, i32 %31, i32 0, i32 %34, %struct.thread* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.vnode*, %struct.vnode** %6, align 8
  %38 = call i32 @VOP_UNLOCK(%struct.vnode* %37, i32 0)
  %39 = load %struct.mount*, %struct.mount** %8, align 8
  %40 = call i32 @vn_finished_write(%struct.mount* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %21, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VOP_SETACL(%struct.vnode*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @acl_type_unold(i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
