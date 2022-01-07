; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcloseexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcloseexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, %struct.filedescent* }
%struct.filedescent = type { i32, %struct.file* }
%struct.file = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"the fdtable should not be shared\00", align 1
@DTYPE_MQUEUE = common dso_local global i64 0, align 8
@UF_EXCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdcloseexec(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.filedescent*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  store %struct.filedesc* %11, %struct.filedesc** %3, align 8
  %12 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %13 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %63, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %21 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %26 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %25, i32 0, i32 2
  %27 = load %struct.filedescent*, %struct.filedescent** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %27, i64 %29
  store %struct.filedescent* %30, %struct.filedescent** %4, align 8
  %31 = load %struct.filedescent*, %struct.filedescent** %4, align 8
  %32 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %31, i32 0, i32 1
  %33 = load %struct.file*, %struct.file** %32, align 8
  store %struct.file* %33, %struct.file** %5, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = icmp ne %struct.file* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %24
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DTYPE_MQUEUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.filedescent*, %struct.filedescent** %4, align 8
  %44 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UF_EXCLOSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %36
  %50 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %51 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %50)
  %52 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fdfree(%struct.filedesc* %52, i32 %53)
  %55 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = load %struct.thread*, %struct.thread** %2, align 8
  %59 = call i32 @closefp(%struct.filedesc* %55, i32 %56, %struct.file* %57, %struct.thread* %58, i32 0)
  %60 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %61 = call i32 @FILEDESC_UNLOCK_ASSERT(%struct.filedesc* %60)
  br label %62

62:                                               ; preds = %49, %42, %24
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %18

66:                                               ; preds = %18
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @fdfree(%struct.filedesc*, i32) #1

declare dso_local i32 @closefp(%struct.filedesc*, i32, %struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @FILEDESC_UNLOCK_ASSERT(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
