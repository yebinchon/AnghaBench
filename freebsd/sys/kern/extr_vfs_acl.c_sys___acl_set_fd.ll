; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_sys___acl_set_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_sys___acl_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.__acl_set_fd_args = type { i32, i32, i32 }
%struct.file = type { i32 }

@CAP_ACL_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys___acl_set_fd(%struct.thread* %0, %struct.__acl_set_fd_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.__acl_set_fd_args*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.__acl_set_fd_args* %1, %struct.__acl_set_fd_args** %4, align 8
  %8 = load %struct.__acl_set_fd_args*, %struct.__acl_set_fd_args** %4, align 8
  %9 = getelementptr inbounds %struct.__acl_set_fd_args, %struct.__acl_set_fd_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AUDIT_ARG_FD(i32 %10)
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = load %struct.__acl_set_fd_args*, %struct.__acl_set_fd_args** %4, align 8
  %14 = getelementptr inbounds %struct.__acl_set_fd_args, %struct.__acl_set_fd_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAP_ACL_SET, align 4
  %17 = call i32 @cap_rights_init(i32* %6, i32 %16)
  %18 = call i32 @getvnode(%struct.thread* %12, i32 %15, i32 %17, %struct.file** %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.__acl_set_fd_args*, %struct.__acl_set_fd_args** %4, align 8
  %27 = getelementptr inbounds %struct.__acl_set_fd_args, %struct.__acl_set_fd_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.__acl_set_fd_args*, %struct.__acl_set_fd_args** %4, align 8
  %30 = getelementptr inbounds %struct.__acl_set_fd_args, %struct.__acl_set_fd_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vacl_set_acl(%struct.thread* %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = call i32 @fdrop(%struct.file* %33, %struct.thread* %34)
  br label %36

36:                                               ; preds = %21, %2
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @vacl_set_acl(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
