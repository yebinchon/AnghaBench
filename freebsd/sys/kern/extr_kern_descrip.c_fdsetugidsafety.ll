; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdsetugidsafety.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdsetugidsafety.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"the fdtable should not be shared\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdsetugidsafety(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  store %struct.filedesc* %10, %struct.filedesc** %3, align 8
  %11 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %12 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %18 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %56, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %28 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.file*, %struct.file** %33, align 8
  store %struct.file* %34, %struct.file** %4, align 8
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %26
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = call i64 @is_unsafe(%struct.file* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %43 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %42)
  %44 = load %struct.thread*, %struct.thread** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @knote_fdclose(%struct.thread* %44, i32 %45)
  %47 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @fdfree(%struct.filedesc* %47, i32 %48)
  %50 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %51 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %50)
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = load %struct.thread*, %struct.thread** %2, align 8
  %54 = call i32 @closef(%struct.file* %52, %struct.thread* %53)
  br label %55

55:                                               ; preds = %41, %37, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %23

59:                                               ; preds = %23
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @is_unsafe(%struct.file*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @knote_fdclose(%struct.thread*, i32) #1

declare dso_local i32 @fdfree(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @closef(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
