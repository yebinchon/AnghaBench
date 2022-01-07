; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_or_squish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_or_squish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__** }

@f_expr = common dso_local global i64 0, align 8
@f_not = common dso_local global i64 0, align 8
@f_or = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"-o: no expression before -o\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"-o: no expression after -o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @or_squish(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %7

7:                                                ; preds = %87, %1
  %8 = call %struct.TYPE_6__* @yanknode(%struct.TYPE_6__** %3)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @f_expr, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call %struct.TYPE_6__* @or_squish(%struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %26, align 8
  br label %27

27:                                               ; preds = %16, %10
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @f_not, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call %struct.TYPE_6__* @or_squish(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 0
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %43, align 8
  br label %44

44:                                               ; preds = %33, %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @f_or, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = call %struct.TYPE_6__* @or_squish(%struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 1
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp eq %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %55
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %2, align 8
  br label %92

77:                                               ; preds = %44
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = icmp eq %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %5, align 8
  br label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %5, align 8
  br label %87

87:                                               ; preds = %82, %80
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %89, align 8
  br label %7

90:                                               ; preds = %7
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %2, align 8
  br label %92

92:                                               ; preds = %90, %75
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %93
}

declare dso_local %struct.TYPE_6__* @yanknode(%struct.TYPE_6__**) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
