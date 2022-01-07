; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, i32 }
%struct.g_consumer = type { i32 }

@g_part_geometry.candidate_sectors = internal global [6 x i32] [i32 1, i32 9, i32 17, i32 33, i32 63, i32 0], align 16
@.str = private unnamed_addr constant [16 x i8] c"GEOM::fwsectors\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"GEOM::fwheads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_table*, %struct.g_consumer*, i64)* @g_part_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_geometry(%struct.g_part_table* %0, %struct.g_consumer* %1, i64 %2) #0 {
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %13 = call i64 @g_getattr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %12, i32* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %20 = call i64 @g_getattr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.g_consumer* %19, i32* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %22, %18, %15, %3
  %26 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %27 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %29 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %31 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %74, %25
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* @g_part_geometry.candidate_sectors, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* @g_part_geometry.candidate_sectors, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @g_part_geometry_heads(i64 %43, i32 %44, i64* %7, i32* %9)
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %74

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %62 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %49
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %69 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %72 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %60, %57, %53
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %82 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %81, i32 0, i32 1
  store i32 255, i32* %82, align 4
  %83 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %84 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %83, i32 0, i32 2
  store i32 63, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %77
  br label %95

86:                                               ; preds = %22
  %87 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %88 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %91 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %94 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %85
  ret void
}

declare dso_local i64 @g_getattr(i8*, %struct.g_consumer*, i32*) #1

declare dso_local i32 @g_part_geometry_heads(i64, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
