; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_closefp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_closefp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i64, i64, i32 }
%struct.file = type { i64 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@DTYPE_MQUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filedesc*, i32, %struct.file*, %struct.thread*, i32)* @closefp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @closefp(%struct.filedesc* %0, i32 %1, %struct.file* %2, %struct.thread* %3, i32 %4) #0 {
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.filedesc* %0, %struct.filedesc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %13 = call i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc* %12)
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %5
  %17 = load %struct.thread*, %struct.thread** %9, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %25 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %23
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %32 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %31, i32 0, i32 2
  %33 = call i32 @TAILQ_EMPTY(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_false(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.thread*, %struct.thread** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @knote_fdclose(%struct.thread* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.file*, %struct.file** %8, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DTYPE_MQUEUE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @__predict_false(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.thread*, %struct.thread** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.file*, %struct.file** %8, align 8
  %56 = call i32 @mq_fdclose(%struct.thread* %53, i32 %54, %struct.file* %55)
  br label %57

57:                                               ; preds = %52, %43
  %58 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %59 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %58)
  %60 = load %struct.file*, %struct.file** %8, align 8
  %61 = load %struct.thread*, %struct.thread** %9, align 8
  %62 = call i32 @closef(%struct.file* %60, %struct.thread* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  %66 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %67 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %66)
  %68 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %69 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %73 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %65
  %77 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %78 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %83 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %85 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %84, i32 0, i32 0
  %86 = call i32 @wakeup(i64* %85)
  br label %87

87:                                               ; preds = %81, %76, %65
  %88 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %89 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %88)
  br label %90

90:                                               ; preds = %87, %57
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @knote_fdclose(%struct.thread*, i32) #1

declare dso_local i32 @mq_fdclose(%struct.thread*, i32, %struct.file*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @closef(%struct.file*, %struct.thread*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
