; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_getfname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_getfname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, %struct.TYPE_4__* }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @stat(i8* %6, %struct.stat* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @err(i32 1, i32* null)
  br label %17

17:                                               ; preds = %15, %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devs, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** @devs, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %17, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
