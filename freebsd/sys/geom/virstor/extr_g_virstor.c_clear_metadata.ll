; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_clear_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_clear_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_component = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@LVL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Clearing metadata on %s\00", align 1
@M_GVIRSTOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_virstor_component*)* @clear_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_metadata(%struct.g_virstor_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_virstor_component*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.g_virstor_component* %0, %struct.g_virstor_component** %3, align 8
  %6 = load i32, i32* @LVL_INFO, align 4
  %7 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %8 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @LOG_MSG(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @g_topology_assert()
  %16 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %17 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @g_access(%struct.TYPE_5__* %18, i32 0, i32 1, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  %25 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %26 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @M_GVIRSTOR, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @malloc(i64 %31, i32 %32, i32 %35)
  store i8* %36, i8** %4, align 8
  %37 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %38 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %41 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %48 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %46, %53
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %57 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @g_write_data(%struct.TYPE_5__* %39, i64 %54, i8* %55, i64 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @M_GVIRSTOR, align 4
  %66 = call i32 @free(i8* %64, i32 %65)
  %67 = load %struct.g_virstor_component*, %struct.g_virstor_component** %3, align 8
  %68 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @g_access(%struct.TYPE_5__* %69, i32 0, i32 -1, i32 0)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %24, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @LOG_MSG(i32, i8*, i32) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_access(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @g_write_data(%struct.TYPE_5__*, i64, i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
