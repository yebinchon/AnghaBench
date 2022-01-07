; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcheckstd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcheckstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"the fdtable should not be shared\00", align 1
@FDDUP_FIXED = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"we didn't get our fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdcheckstd(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.filedesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  store %struct.filedesc* %13, %struct.filedesc** %4, align 8
  %14 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %15 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %21 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 3
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %85, %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 2
  br i1 %28, label %29, label %88

29:                                               ; preds = %26
  %30 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %31 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %85

40:                                               ; preds = %29
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.thread*, %struct.thread** %3, align 8
  %50 = load i32, i32* @FDDUP_FIXED, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @kern_dup(%struct.thread* %49, i32 %50, i32 0, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %74

54:                                               ; preds = %40
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = load i32, i32* @AT_FDCWD, align 4
  %57 = load i32, i32* @UIO_SYSSPACE, align 4
  %58 = load i32, i32* @O_RDWR, align 4
  %59 = call i32 @kern_openat(%struct.thread* %55, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.thread*, %struct.thread** %3, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @KASSERT(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %62, %54
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.thread*, %struct.thread** %3, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %26

88:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @kern_dup(%struct.thread*, i32, i32, i32, i32) #1

declare dso_local i32 @kern_openat(%struct.thread*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
