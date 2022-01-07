; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_bridge_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_find_bridge_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bhnd_devclass = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s not a bhnd device\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bhndb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_find_bridge_root(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @device_get_parent(i32* %9)
  %11 = call i64 @device_get_devclass(i32* %10)
  %12 = load i64, i64* @bhnd_devclass, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @device_get_nameunit(i32* %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %14, i8* %18)
  %20 = call i64 @devclass_find(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %32, %2
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @device_get_parent(i32* %23)
  store i32* %24, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @device_get_devclass(i32* %27)
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %33

32:                                               ; preds = %26
  br label %22

33:                                               ; preds = %31, %22
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32* null, i32** %3, align 8
  br label %56

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @device_get_parent(i32* %39)
  store i32* %40, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @device_get_parent(i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @device_get_devclass(i32* %48)
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %3, align 8
  br label %56

54:                                               ; preds = %47, %42
  br label %38

55:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %56

56:                                               ; preds = %55, %52, %36
  %57 = load i32*, i32** %3, align 8
  ret i32* %57
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @device_get_devclass(i32*) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i64 @devclass_find(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
