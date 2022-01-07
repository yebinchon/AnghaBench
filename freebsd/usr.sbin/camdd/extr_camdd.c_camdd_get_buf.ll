; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_buf = type { i32, %struct.camdd_dev*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.camdd_buf_data }
%struct.camdd_buf_data = type { i32, i32* }
%struct.camdd_dev = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown buffer type %d requested\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camdd_buf* @camdd_get_buf(%struct.camdd_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.camdd_buf*, align 8
  %4 = alloca %struct.camdd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.camdd_buf*, align 8
  %7 = alloca %struct.camdd_buf_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.camdd_dev* %0, %struct.camdd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.camdd_buf* null, %struct.camdd_buf** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %54 [
    i32 129, label %11
    i32 128, label %40
  ]

11:                                               ; preds = %2
  %12 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %13 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %12, i32 0, i32 1
  %14 = call %struct.camdd_buf* @STAILQ_FIRST(i32* %13)
  store %struct.camdd_buf* %14, %struct.camdd_buf** %6, align 8
  %15 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %16 = icmp ne %struct.camdd_buf* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %19 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %18, i32 0, i32 1
  %20 = load i32, i32* @links, align 4
  %21 = call i32 @STAILQ_REMOVE_HEAD(i32* %19, i32 %20)
  %22 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %23 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.camdd_buf_data* %24, %struct.camdd_buf_data** %7, align 8
  %25 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %7, align 8
  %26 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %7, align 8
  %29 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %32 = call i32 @bzero(%struct.camdd_buf* %31, i32 40)
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %7, align 8
  %35 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %7, align 8
  %38 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %17, %11
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %42 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %41, i32 0, i32 0
  %43 = call %struct.camdd_buf* @STAILQ_FIRST(i32* %42)
  store %struct.camdd_buf* %43, %struct.camdd_buf** %6, align 8
  %44 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %45 = icmp ne %struct.camdd_buf* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %48 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %47, i32 0, i32 0
  %49 = load i32, i32* @links, align 4
  %50 = call i32 @STAILQ_REMOVE_HEAD(i32* %48, i32 %49)
  %51 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %52 = call i32 @bzero(%struct.camdd_buf* %51, i32 40)
  br label %53

53:                                               ; preds = %46, %40
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %53, %39
  %58 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %59 = icmp eq %struct.camdd_buf* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call %struct.camdd_buf* @camdd_alloc_buf(%struct.camdd_dev* %61, i32 %62)
  store %struct.camdd_buf* %63, %struct.camdd_buf** %3, align 8
  br label %75

64:                                               ; preds = %57
  %65 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %66 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %65, i32 0, i32 2
  %67 = call i32 @STAILQ_INIT(i32* %66)
  %68 = load %struct.camdd_dev*, %struct.camdd_dev** %4, align 8
  %69 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %70 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %69, i32 0, i32 1
  store %struct.camdd_dev* %68, %struct.camdd_dev** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  %73 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.camdd_buf*, %struct.camdd_buf** %6, align 8
  store %struct.camdd_buf* %74, %struct.camdd_buf** %3, align 8
  br label %75

75:                                               ; preds = %64, %60
  %76 = load %struct.camdd_buf*, %struct.camdd_buf** %3, align 8
  ret %struct.camdd_buf* %76
}

declare dso_local %struct.camdd_buf* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @bzero(%struct.camdd_buf*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local %struct.camdd_buf* @camdd_alloc_buf(%struct.camdd_dev*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
