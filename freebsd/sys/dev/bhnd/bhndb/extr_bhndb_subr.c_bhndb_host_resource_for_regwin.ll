; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_host_resource_for_regwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_host_resource_for_regwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_host_resources = type { i32, %struct.resource**, %struct.resource_spec* }
%struct.resource_spec = type { i32, i64 }
%struct.bhndb_regwin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"missing regwin resource spec (type=%d, rid=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @bhndb_host_resource_for_regwin(%struct.bhndb_host_resources* %0, %struct.bhndb_regwin* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.bhndb_host_resources*, align 8
  %5 = alloca %struct.bhndb_regwin*, align 8
  %6 = alloca %struct.resource_spec*, align 8
  %7 = alloca i64, align 8
  store %struct.bhndb_host_resources* %0, %struct.bhndb_host_resources** %4, align 8
  store %struct.bhndb_regwin* %1, %struct.bhndb_regwin** %5, align 8
  %8 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %4, align 8
  %9 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %8, i32 0, i32 2
  %10 = load %struct.resource_spec*, %struct.resource_spec** %9, align 8
  store %struct.resource_spec* %10, %struct.resource_spec** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %49, %2
  %12 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %12, i64 %13
  %15 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %20 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %23, i64 %24
  %26 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %49

30:                                               ; preds = %18
  %31 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %32 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %35, i64 %36
  %38 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %4, align 8
  %44 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %43, i32 0, i32 1
  %45 = load %struct.resource**, %struct.resource*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.resource*, %struct.resource** %45, i64 %46
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  store %struct.resource* %48, %struct.resource** %3, align 8
  br label %65

49:                                               ; preds = %41, %29
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %4, align 8
  %54 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %57 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %61 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %63)
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %65

65:                                               ; preds = %52, %42
  %66 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %66
}

declare dso_local i32 @device_printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
