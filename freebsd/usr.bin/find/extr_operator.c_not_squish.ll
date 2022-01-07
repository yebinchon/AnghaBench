; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_not_squish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_operator.c_not_squish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__** }

@f_expr = common dso_local global i64 0, align 8
@f_not = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"!: no following expression\00", align 1
@f_or = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"!: nothing between ! and -o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @not_squish(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %8

8:                                                ; preds = %104, %1
  %9 = call %struct.TYPE_6__* @yanknode(%struct.TYPE_6__** %2)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %107

11:                                               ; preds = %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @f_expr, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call %struct.TYPE_6__* @not_squish(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %27, align 8
  br label %28

28:                                               ; preds = %17, %11
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @f_not, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  %35 = call %struct.TYPE_6__* @yanknode(%struct.TYPE_6__** %2)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %4, align 8
  br label %36

36:                                               ; preds = %47, %34
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @f_not, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = call %struct.TYPE_6__* @yanknode(%struct.TYPE_6__** %2)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %4, align 8
  br label %36

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = icmp eq %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @f_or, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @f_expr, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call %struct.TYPE_6__* @not_squish(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 0
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %80, align 8
  br label %81

81:                                               ; preds = %70, %64
  %82 = load i32, i32* %7, align 4
  %83 = srem i32 %82, 2
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %3, align 8
  br label %93

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 0
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %92, align 8
  br label %93

93:                                               ; preds = %87, %85
  br label %94

94:                                               ; preds = %93, %28
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = icmp eq %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %5, align 8
  br label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %5, align 8
  br label %104

104:                                              ; preds = %99, %97
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %106, align 8
  br label %8

107:                                              ; preds = %8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %108
}

declare dso_local %struct.TYPE_6__* @yanknode(%struct.TYPE_6__**) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
