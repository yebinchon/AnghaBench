; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: %s: unknown type\00", align 1
@FTS_WHITEOUT = common dso_local global i32 0, align 4
@S_IFWHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @c_type(%struct.TYPE_9__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = load i8***, i8**** %4, align 8
  %10 = call i8* @nextarg(%struct.TYPE_9__* %8, i8*** %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 100
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @FTS_NOSTAT, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @ftsoptions, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @ftsoptions, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %40 [
    i32 98, label %26
    i32 99, label %28
    i32 100, label %30
    i32 102, label %32
    i32 108, label %34
    i32 112, label %36
    i32 115, label %38
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* @S_IFBLK, align 4
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %21
  %29 = load i32, i32* @S_IFCHR, align 4
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %21
  %31 = load i32, i32* @S_IFDIR, align 4
  store i32 %31, i32* %7, align 4
  br label %46

32:                                               ; preds = %21
  %33 = load i32, i32* @S_IFREG, align 4
  store i32 %33, i32* %7, align 4
  br label %46

34:                                               ; preds = %21
  %35 = load i32, i32* @S_IFLNK, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %21
  %37 = load i32, i32* @S_IFIFO, align 4
  store i32 %37, i32* %7, align 4
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* @S_IFSOCK, align 4
  store i32 %39, i32* %7, align 4
  br label %46

40:                                               ; preds = %21
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %40, %38, %36, %34, %32, %30, %28, %26
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = call %struct.TYPE_8__* @palloc(%struct.TYPE_9__* %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %52
}

declare dso_local i8* @nextarg(%struct.TYPE_9__*, i8***) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @palloc(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
