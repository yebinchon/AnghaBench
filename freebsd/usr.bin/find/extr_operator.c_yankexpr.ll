; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_yankexpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_yankexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__** }

@f_openparen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"(: missing closing ')'\00", align 1
@f_closeparen = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"(): empty inner expression\00", align 1
@f_expr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__**)* @yankexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @yankexpr(%struct.TYPE_6__** %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %9 = call %struct.TYPE_6__* @yanknode(%struct.TYPE_6__** %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @f_openparen, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %19

19:                                               ; preds = %58, %18
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %21 = call %struct.TYPE_6__* @yankexpr(%struct.TYPE_6__** %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %4, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @f_closeparen, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 0
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %41, align 8
  %42 = load i64, i64* @f_expr, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %59

45:                                               ; preds = %25
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = icmp eq %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %6, align 8
  br label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  br label %55

55:                                               ; preds = %50, %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %55
  br label %19

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %2, align 8
  br label %62

62:                                               ; preds = %60, %11
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %63
}

declare dso_local %struct.TYPE_6__* @yanknode(%struct.TYPE_6__**) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
