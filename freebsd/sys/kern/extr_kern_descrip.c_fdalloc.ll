; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EMFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid descriptor %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"fd_first_free() returned non-free descriptor\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"file descriptor isn't free\00", align 1
@RACCT_NOFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdalloc(%struct.thread* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %8, align 8
  %16 = load %struct.proc*, %struct.proc** %8, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load %struct.filedesc*, %struct.filedesc** %17, align 8
  store %struct.filedesc* %18, %struct.filedesc** %9, align 8
  %19 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %20 = call i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc* %19)
  %21 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %22 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %28 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.thread*, %struct.thread** %5, align 8
  %32 = call i32 @getmaxfd(%struct.thread* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %36 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fd_first_free(%struct.filedesc* %33, i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @EMFILE, align 4
  store i32 %43, i32* %4, align 4
  br label %99

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %47 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 2
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @fdgrowtable_exp(%struct.filedesc* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %65 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @min(i32 %63, i32 %66)
  %68 = icmp slt i32 %62, %67
  br label %69

69:                                               ; preds = %61, %58
  %70 = phi i1 [ false, %58 ], [ %68, %61 ]
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @KASSERT(i32 %71, i8* %74)
  %76 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @fdisused(%struct.filedesc* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @KASSERT(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %84 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @KASSERT(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @fdused(%struct.filedesc* %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %69, %42
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @FILEDESC_XLOCK_ASSERT(%struct.filedesc*) #1

declare dso_local i32 @getmaxfd(%struct.thread*) #1

declare dso_local i32 @fd_first_free(%struct.filedesc*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fdgrowtable_exp(%struct.filedesc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @fdisused(%struct.filedesc*, i32) #1

declare dso_local i32 @fdused(%struct.filedesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
