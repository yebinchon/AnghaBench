; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_map.c_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_map.c_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32*, %struct.TYPE_3__* }

@maplist = common dso_local global %struct.TYPE_3__* null, align 8
@Ospeed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mapped(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maplist, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  br label %7

7:                                                ; preds = %71, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %75

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i32* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %62 [
    i32 0, label %26
    i32 132, label %27
    i32 131, label %34
    i32 130, label %41
    i32 129, label %48
    i32 128, label %55
  ]

26:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %62

27:                                               ; preds = %22
  %28 = load i32, i32* @Ospeed, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %22
  %35 = load i32, i32* @Ospeed, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %62

41:                                               ; preds = %22
  %42 = load i32, i32* @Ospeed, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %22
  %49 = load i32, i32* @Ospeed, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %49, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %22
  %56 = load i32, i32* @Ospeed, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %22, %55, %48, %41, %34, %27, %26
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %2, align 8
  br label %77

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %15
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %4, align 8
  br label %7

75:                                               ; preds = %7
  %76 = load i8*, i8** %3, align 8
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %75, %65
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
