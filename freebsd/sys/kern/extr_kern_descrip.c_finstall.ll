; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_finstall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_finstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32 }
%struct.filecaps = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finstall(%struct.thread* %0, %struct.file* %1, i32* %2, i32 %3, %struct.filecaps* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.filecaps*, align 8
  %12 = alloca %struct.filedesc*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.filecaps* %4, %struct.filecaps** %11, align 8
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.filedesc*, %struct.filedesc** %17, align 8
  store %struct.filedesc* %18, %struct.filedesc** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.file*, %struct.file** %8, align 8
  %24 = call i32 @fhold(%struct.file* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EBADF, align 4
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %5
  %29 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %30 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %29)
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @fdalloc(%struct.thread* %31, i32 0, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %37 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %36)
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %44 = load %struct.file*, %struct.file** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.filecaps*, %struct.filecaps** %11, align 8
  %49 = call i32 @_finstall(%struct.filedesc* %43, %struct.file* %44, i32 %46, i32 %47, %struct.filecaps* %48)
  %50 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %51 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %35, %26
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @fhold(%struct.file*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdalloc(%struct.thread*, i32, i32*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @_finstall(%struct.filedesc*, %struct.file*, i32, i32, %struct.filecaps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
