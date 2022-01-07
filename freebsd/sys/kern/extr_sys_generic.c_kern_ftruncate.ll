; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_ftruncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cap_ftruncate_rights = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ftruncate(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @AUDIT_ARG_FD(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fget(%struct.thread* %17, i32 %18, i32* @cap_ftruncate_rights, %struct.file** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = call i32 @AUDIT_ARG_FILE(i32 %27, %struct.file* %28)
  %30 = load %struct.file*, %struct.file** %8, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FWRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = call i32 @fdrop(%struct.file* %37, %struct.thread* %38)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %24
  %42 = load %struct.file*, %struct.file** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.thread*, %struct.thread** %5, align 8
  %48 = call i32 @fo_truncate(%struct.file* %42, i32 %43, i32 %46, %struct.thread* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = call i32 @fdrop(%struct.file* %49, %struct.thread* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %36, %22, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @AUDIT_ARG_FILE(i32, %struct.file*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @fo_truncate(%struct.file*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
