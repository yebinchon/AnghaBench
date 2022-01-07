; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_aclcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_vacl_aclcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.acl = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.vnode*, i32, %struct.acl*)* @vacl_aclcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacl_aclcheck(%struct.thread* %0, %struct.vnode* %1, i32 %2, %struct.acl* %3) #0 {
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
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %struct.acl* @acl_alloc(i32 %11)
  store %struct.acl* %12, %struct.acl** %9, align 8
  %13 = load %struct.acl*, %struct.acl** %8, align 8
  %14 = load %struct.acl*, %struct.acl** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @acl_copyin(%struct.acl* %13, %struct.acl* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %30

20:                                               ; preds = %4
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @acl_type_unold(i32 %22)
  %24 = load %struct.acl*, %struct.acl** %9, align 8
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.thread*, %struct.thread** %5, align 8
  %29 = call i32 @VOP_ACLCHECK(%struct.vnode* %21, i32 %23, %struct.acl* %24, i32 %27, %struct.thread* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load %struct.acl*, %struct.acl** %9, align 8
  %32 = call i32 @acl_free(%struct.acl* %31)
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local %struct.acl* @acl_alloc(i32) #1

declare dso_local i32 @acl_copyin(%struct.acl*, %struct.acl*, i32) #1

declare dso_local i32 @VOP_ACLCHECK(%struct.vnode*, i32, %struct.acl*, i32, %struct.thread*) #1

declare dso_local i32 @acl_type_unold(i32) #1

declare dso_local i32 @acl_free(%struct.acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
