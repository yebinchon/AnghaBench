; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c__fget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c__fget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32, i32* }

@badfileops = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"wrong flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.file**, i32, i32*, i32*)* @_fget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fget(%struct.thread* %0, i32 %1, %struct.file** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.filedesc*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file** %2, %struct.file*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.file**, %struct.file*** %10, align 8
  store %struct.file* null, %struct.file** %17, align 8
  %18 = load %struct.thread*, %struct.thread** %8, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.filedesc*, %struct.filedesc** %21, align 8
  store %struct.filedesc* %22, %struct.filedesc** %14, align 8
  %23 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @fget_unlocked(%struct.filedesc* %23, i32 %24, i32* %25, %struct.file** %15, i32* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %83

32:                                               ; preds = %6
  %33 = load %struct.file*, %struct.file** %15, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, @badfileops
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.file*, %struct.file** %15, align 8
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  %41 = load i32, i32* @EBADF, align 4
  store i32 %41, i32* %7, align 4
  br label %83

42:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %70 [
    i32 129, label %44
    i32 128, label %44
    i32 130, label %54
    i32 0, label %69
  ]

44:                                               ; preds = %42, %42
  %45 = load %struct.file*, %struct.file** %15, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EBADF, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %72

54:                                               ; preds = %42
  %55 = load %struct.file*, %struct.file** %15, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 131
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.file*, %struct.file** %15, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %66, %60
  br label %72

69:                                               ; preds = %42
  br label %72

70:                                               ; preds = %42
  %71 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %69, %68, %53
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.file*, %struct.file** %15, align 8
  %77 = load %struct.thread*, %struct.thread** %8, align 8
  %78 = call i32 @fdrop(%struct.file* %76, %struct.thread* %77)
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %7, align 4
  br label %83

80:                                               ; preds = %72
  %81 = load %struct.file*, %struct.file** %15, align 8
  %82 = load %struct.file**, %struct.file*** %10, align 8
  store %struct.file* %81, %struct.file** %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %75, %37, %30
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @fget_unlocked(%struct.filedesc*, i32, i32*, %struct.file**, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
