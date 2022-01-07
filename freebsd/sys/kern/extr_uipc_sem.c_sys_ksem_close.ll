; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ksem_close_args = type { i32 }
%struct.ksem = type { i32 }
%struct.file = type { %struct.ksem* }

@cap_no_rights = common dso_local global i32 0, align 4
@KS_ANONYMOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ksem_close(%struct.thread* %0, %struct.ksem_close_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ksem_close_args*, align 8
  %6 = alloca %struct.ksem*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ksem_close_args* %1, %struct.ksem_close_args** %5, align 8
  %9 = load %struct.ksem_close_args*, %struct.ksem_close_args** %5, align 8
  %10 = getelementptr inbounds %struct.ksem_close_args, %struct.ksem_close_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AUDIT_ARG_FD(i32 %11)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load %struct.ksem_close_args*, %struct.ksem_close_args** %5, align 8
  %15 = getelementptr inbounds %struct.ksem_close_args, %struct.ksem_close_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ksem_get(%struct.thread* %13, i32 %16, i32* @cap_no_rights, %struct.file** %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.ksem*, %struct.ksem** %24, align 8
  store %struct.ksem* %25, %struct.ksem** %6, align 8
  %26 = load %struct.ksem*, %struct.ksem** %6, align 8
  %27 = getelementptr inbounds %struct.ksem, %struct.ksem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KS_ANONYMOUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.file*, %struct.file** %7, align 8
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = call i32 @fdrop(%struct.file* %33, %struct.thread* %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %22
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.ksem_close_args*, %struct.ksem_close_args** %5, align 8
  %40 = getelementptr inbounds %struct.ksem_close_args, %struct.ksem_close_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kern_close(%struct.thread* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = call i32 @fdrop(%struct.file* %43, %struct.thread* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %32, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @ksem_get(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
