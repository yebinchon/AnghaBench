; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_sys_posix_openpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_sys_posix_openpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.posix_openpt_args = type { i32 }
%struct.file = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_posix_openpt(%struct.thread* %0, %struct.posix_openpt_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.posix_openpt_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.posix_openpt_args* %1, %struct.posix_openpt_args** %5, align 8
  %9 = load %struct.posix_openpt_args*, %struct.posix_openpt_args** %5, align 8
  %10 = getelementptr inbounds %struct.posix_openpt_args, %struct.posix_openpt_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @O_NOCTTY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @O_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.posix_openpt_args*, %struct.posix_openpt_args** %5, align 8
  %25 = getelementptr inbounds %struct.posix_openpt_args, %struct.posix_openpt_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @falloc(%struct.thread* %23, %struct.file** %8, i32* %7, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load %struct.posix_openpt_args*, %struct.posix_openpt_args** %5, align 8
  %34 = getelementptr inbounds %struct.posix_openpt_args, %struct.posix_openpt_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @O_ACCMODE, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @FFLAGS(i32 %37)
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = call i32 @pts_alloc(i32 %38, %struct.thread* %39, %struct.file* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @fdclose(%struct.thread* %45, %struct.file* %46, i32 %47)
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = call i32 @fdrop(%struct.file* %49, %struct.thread* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %32
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.file*, %struct.file** %8, align 8
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = call i32 @fdrop(%struct.file* %59, %struct.thread* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %44, %30, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @falloc(%struct.thread*, %struct.file**, i32*, i32) #1

declare dso_local i32 @pts_alloc(i32, %struct.thread*, %struct.file*) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
