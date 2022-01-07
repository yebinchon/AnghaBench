; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_lseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cap_seek_rights = common dso_local global i32 0, align 4
@DFLAG_SEEKABLE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_lseek(%struct.thread* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @AUDIT_ARG_FD(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fget(%struct.thread* %14, i32 %15, i32* @cap_seek_rights, %struct.file** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load %struct.file*, %struct.file** %10, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DFLAG_SEEKABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.thread*, %struct.thread** %6, align 8
  %35 = call i32 @fo_seek(%struct.file* %31, i32 %32, i32 %33, %struct.thread* %34)
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @ESPIPE, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %35, %30 ], [ %37, %36 ]
  store i32 %39, i32* %11, align 4
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = load %struct.thread*, %struct.thread** %6, align 8
  %42 = call i32 @fdrop(%struct.file* %40, %struct.thread* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_seek(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
