; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_driver_module_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_driver_module_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_module_data = type { i32 (i32, i32, i32)*, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Loading module: driver %s on bus %s (pass %d)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unloading module: driver %s from bus %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Quiesce module: driver %s from bus %s\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_module_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.driver_module_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.driver_module_data*
  store %struct.driver_module_data* %13, %struct.driver_module_data** %7, align 8
  %14 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %15 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @devclass_find_internal(i32 %16, i32* null, i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %126 [
    i32 130, label %20
    i32 128, label %58
    i32 129, label %92
  ]

20:                                               ; preds = %3
  %21 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %22 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %27 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %32 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %28(i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %37 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %40 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @DRIVERNAME(i32 %42)
  %44 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %45 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @PDEBUG(i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %55 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @devclass_add_driver(i32 %51, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %128

58:                                               ; preds = %3
  %59 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %60 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DRIVERNAME(i32 %61)
  %63 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %64 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @PDEBUG(i8* %67)
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %71 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @devclass_delete_driver(i32 %69, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %58
  %77 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %78 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %77, i32 0, i32 0
  %79 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %78, align 8
  %80 = icmp ne i32 (i32, i32, i32)* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %83 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %82, i32 0, i32 0
  %84 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %88 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %84(i32 %85, i32 %86, i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %81, %76, %58
  br label %128

92:                                               ; preds = %3
  %93 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %94 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DRIVERNAME(i32 %95)
  %97 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %98 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @PDEBUG(i8* %101)
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %105 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @devclass_quiesce_driver(i32 %103, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %92
  %111 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %112 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %111, i32 0, i32 0
  %113 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %112, align 8
  %114 = icmp ne i32 (i32, i32, i32)* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %117 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %116, i32 0, i32 0
  %118 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.driver_module_data*, %struct.driver_module_data** %7, align 8
  %122 = getelementptr inbounds %struct.driver_module_data, %struct.driver_module_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 %118(i32 %119, i32 %120, i32 %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %115, %110, %92
  br label %128

126:                                              ; preds = %3
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %126, %125, %91, %35
  %129 = load i32, i32* %10, align 4
  ret i32 %129
}

declare dso_local i32 @devclass_find_internal(i32, i32*, i32) #1

declare dso_local i32 @PDEBUG(i8*) #1

declare dso_local i32 @DRIVERNAME(i32) #1

declare dso_local i32 @devclass_add_driver(i32, i32, i32, i32) #1

declare dso_local i32 @devclass_delete_driver(i32, i32) #1

declare dso_local i32 @devclass_quiesce_driver(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
