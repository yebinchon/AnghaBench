; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdclose(%struct.thread* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.filedesc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  store %struct.filedesc* %12, %struct.filedesc** %7, align 8
  %13 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %14 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %13)
  %15 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %16 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.file*, %struct.file** %21, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = icmp eq %struct.file* %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fdfree(%struct.filedesc* %26, i32 %27)
  %29 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %30 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %29)
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @fdrop(%struct.file* %31, %struct.thread* %32)
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %36 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %35)
  br label %37

37:                                               ; preds = %34, %25
  ret void
}

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdfree(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
