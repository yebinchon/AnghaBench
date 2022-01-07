; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_getsock_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_getsock_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i64, i32 }
%struct.filecaps = type { i32 }

@DTYPE_SOCKET = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getsock_cap(%struct.thread* %0, i32 %1, i32* %2, %struct.file** %3, i32* %4, %struct.filecaps* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.file**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.filecaps*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.file** %3, %struct.file*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.filecaps* %5, %struct.filecaps** %13, align 8
  %16 = load %struct.thread*, %struct.thread** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.filecaps*, %struct.filecaps** %13, align 8
  %20 = call i32 @fget_cap(%struct.thread* %16, i32 %17, i32* %18, %struct.file** %14, %struct.filecaps* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %7, align 4
  br label %53

25:                                               ; preds = %6
  %26 = load %struct.file*, %struct.file** %14, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DTYPE_SOCKET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.file*, %struct.file** %14, align 8
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = call i32 @fdrop(%struct.file* %32, %struct.thread* %33)
  %35 = load %struct.filecaps*, %struct.filecaps** %13, align 8
  %36 = icmp ne %struct.filecaps* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.filecaps*, %struct.filecaps** %13, align 8
  %39 = call i32 @filecaps_free(%struct.filecaps* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* @ENOTSOCK, align 4
  store i32 %41, i32* %7, align 4
  br label %53

42:                                               ; preds = %25
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.file*, %struct.file** %14, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.file*, %struct.file** %14, align 8
  %52 = load %struct.file**, %struct.file*** %11, align 8
  store %struct.file* %51, %struct.file** %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %40, %23
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @fget_cap(%struct.thread*, i32, i32*, %struct.file**, %struct.filecaps*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @filecaps_free(%struct.filecaps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
