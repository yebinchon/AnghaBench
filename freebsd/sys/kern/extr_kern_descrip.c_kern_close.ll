; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_close(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  store %struct.filedesc* %12, %struct.filedesc** %6, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @AUDIT_SYSCLOSE(%struct.thread* %13, i32 %14)
  %16 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %17 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %16)
  %18 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.file* @fget_locked(%struct.filedesc* %18, i32 %19)
  store %struct.file* %20, %struct.file** %7, align 8
  %21 = icmp eq %struct.file* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %24 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %23)
  %25 = load i32, i32* @EBADF, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fdfree(%struct.filedesc* %27, i32 %28)
  %30 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.file*, %struct.file** %7, align 8
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = call i32 @closefp(%struct.filedesc* %30, i32 %31, %struct.file* %32, %struct.thread* %33, i32 1)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @AUDIT_SYSCLOSE(%struct.thread*, i32) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local %struct.file* @fget_locked(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdfree(%struct.filedesc*, i32) #1

declare dso_local i32 @closefp(%struct.filedesc*, i32, %struct.file*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
