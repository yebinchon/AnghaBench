; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash.c_splash_find_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash.c_splash_find_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"splash: image@%p, size:%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @splash_find_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splash_find_data(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @preload_search_by_type(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @preload_fetch_addr(i32* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @preload_fetch_size(i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %21
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %28
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %31, %19, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @preload_search_by_type(i32*) #1

declare dso_local i8* @preload_fetch_addr(i32*) #1

declare dso_local i64 @preload_fetch_size(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
