; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_sys_extattr_delete_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_sys_extattr_delete_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.extattr_delete_fd_args = type { i32, i32, i32 }
%struct.file = type { i32 }

@EXTATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@CAP_EXTATTR_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_extattr_delete_fd(%struct.thread* %0, %struct.extattr_delete_fd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.extattr_delete_fd_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.extattr_delete_fd_args* %1, %struct.extattr_delete_fd_args** %5, align 8
  %12 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.extattr_delete_fd_args*, %struct.extattr_delete_fd_args** %5, align 8
  %17 = getelementptr inbounds %struct.extattr_delete_fd_args, %struct.extattr_delete_fd_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AUDIT_ARG_FD(i32 %18)
  %20 = load %struct.extattr_delete_fd_args*, %struct.extattr_delete_fd_args** %5, align 8
  %21 = getelementptr inbounds %struct.extattr_delete_fd_args, %struct.extattr_delete_fd_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AUDIT_ARG_VALUE(i32 %22)
  %24 = load %struct.extattr_delete_fd_args*, %struct.extattr_delete_fd_args** %5, align 8
  %25 = getelementptr inbounds %struct.extattr_delete_fd_args, %struct.extattr_delete_fd_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EXTATTR_MAXNAMELEN, align 4
  %28 = call i32 @copyinstr(i32 %26, i8* %15, i32 %27, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

33:                                               ; preds = %2
  %34 = call i32 @AUDIT_ARG_TEXT(i8* %15)
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.extattr_delete_fd_args*, %struct.extattr_delete_fd_args** %5, align 8
  %37 = getelementptr inbounds %struct.extattr_delete_fd_args, %struct.extattr_delete_fd_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAP_EXTATTR_DELETE, align 4
  %40 = call i32 @cap_rights_init(i32* %9, i32 %39)
  %41 = call i32 @getvnode(%struct.thread* %35, i32 %38, i32 %40, %struct.file** %6)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

46:                                               ; preds = %33
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.extattr_delete_fd_args*, %struct.extattr_delete_fd_args** %5, align 8
  %51 = getelementptr inbounds %struct.extattr_delete_fd_args, %struct.extattr_delete_fd_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = call i32 @extattr_delete_vp(i32 %49, i32 %52, i8* %15, %struct.thread* %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call i32 @fdrop(%struct.file* %55, %struct.thread* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %46, %44, %31
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #2

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i32 @AUDIT_ARG_TEXT(i8*) #2

declare dso_local i32 @getvnode(%struct.thread*, i32, i32, %struct.file**) #2

declare dso_local i32 @cap_rights_init(i32*, i32) #2

declare dso_local i32 @extattr_delete_vp(i32, i32, i8*, %struct.thread*) #2

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
