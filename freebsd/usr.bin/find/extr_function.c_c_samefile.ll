; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_samefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_samefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @c_samefile(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i8***, i8**** %4, align 8
  %11 = call i8* @nextarg(i32* %9, i8*** %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @FTS_NOSTAT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @ftsoptions, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @ftsoptions, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_4__* @palloc(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load i32, i32* @ftsoptions, align 4
  %19 = load i32, i32* @FTS_PHYSICAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @lstat(i8* %23, %struct.stat* %7)
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @stat(i8* %26, %struct.stat* %7)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %39
}

declare dso_local i8* @nextarg(i32*, i8***) #1

declare dso_local %struct.TYPE_4__* @palloc(i32*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
