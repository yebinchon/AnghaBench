; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_buf = type { i32, i32, %struct.TYPE_2__, %struct.camdd_dev* }
%struct.TYPE_2__ = type { %struct.camdd_buf_data }
%struct.camdd_buf_data = type { i32, i32* }
%struct.camdd_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unable to allocate %u bytes\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to allocate %zu bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.camdd_buf* (%struct.camdd_dev*, i32)* @camdd_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.camdd_buf* @camdd_alloc_buf(%struct.camdd_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.camdd_buf*, align 8
  %4 = alloca %struct.camdd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.camdd_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.camdd_buf_data*, align 8
  store %struct.camdd_dev* %0, %struct.camdd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.camdd_buf* null, %struct.camdd_buf** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %23 [
    i32 129, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %12 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @malloc(i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %19 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %57

22:                                               ; preds = %10
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %22
  %25 = call %struct.camdd_buf* @calloc(i32 1, i32 32)
  store %struct.camdd_buf* %25, %struct.camdd_buf** %6, align 8
  %26 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %27 = icmp eq %struct.camdd_buf* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 32)
  br label %57

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %33 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %35 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %36 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %35, i32 0, i32 3
  store %struct.camdd_dev* %34, %struct.camdd_dev** %36, align 8
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %51 [
    i32 129, label %38
    i32 128, label %50
  ]

38:                                               ; preds = %30
  %39 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %40 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.camdd_buf_data* %41, %struct.camdd_buf_data** %8, align 8
  %42 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %43 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %8, align 8
  %46 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %8, align 8
  %49 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  br label %52

50:                                               ; preds = %30
  br label %52

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %50, %38
  %53 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %54 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %53, i32 0, i32 1
  %55 = call i32 @STAILQ_INIT(i32* %54)
  %56 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  store %struct.camdd_buf* %56, %struct.camdd_buf** %3, align 8
  br label %60

57:                                               ; preds = %28, %17
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @free(i32* %58)
  store %struct.camdd_buf* null, %struct.camdd_buf** %3, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  ret %struct.camdd_buf* %61
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local %struct.camdd_buf* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
