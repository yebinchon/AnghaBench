; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_copy_map_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_copy_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.intr_map_data = type { i32 }

@irq_map_lock = common dso_local global i32 0, align 4
@irq_map_count = common dso_local global i64 0, align 8
@irq_map = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Attempt to copy invalid resource id: %u\0A\00", align 1
@M_INTRNG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Resource id: %u has changed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64*, %struct.intr_map_data**)* @intr_map_copy_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_map_copy_map_data(i64 %0, i32* %1, i64* %2, %struct.intr_map_data** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.intr_map_data**, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.intr_map_data** %3, %struct.intr_map_data*** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 @mtx_lock(i32* @irq_map_lock)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @irq_map_count, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %31, %23
  %41 = call i32 @mtx_unlock(i32* @irq_map_lock)
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.intr_map_data**, %struct.intr_map_data*** %8, align 8
  store %struct.intr_map_data* null, %struct.intr_map_data** %45, align 8
  br label %54

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @M_INTRNG, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.intr_map_data* @malloc(i64 %47, i32 %48, i32 %51)
  %53 = load %struct.intr_map_data**, %struct.intr_map_data*** %8, align 8
  store %struct.intr_map_data* %52, %struct.intr_map_data** %53, align 8
  br label %54

54:                                               ; preds = %46, %44
  %55 = call i32 @mtx_lock(i32* @irq_map_lock)
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp eq %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %68, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load %struct.intr_map_data**, %struct.intr_map_data*** %8, align 8
  %83 = load %struct.intr_map_data*, %struct.intr_map_data** %82, align 8
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @memcpy(%struct.intr_map_data* %83, %struct.TYPE_3__* %89, i64 %90)
  br label %92

92:                                               ; preds = %81, %64
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @irq_map, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  %107 = call i32 @mtx_unlock(i32* @irq_map_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.intr_map_data* @malloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.intr_map_data*, %struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
