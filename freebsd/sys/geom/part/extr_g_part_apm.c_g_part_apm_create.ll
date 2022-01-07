; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, i32, i32, i8* }
%struct.g_part_parms = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_apm_table = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@APM_DDR_SIG = common dso_local global i32 0, align 4
@APM_ENT_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@APM_ENT_TYPE_SELF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_apm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_create(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_apm_table*, align 8
  %8 = alloca i8*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %9 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %10 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %108

15:                                               ; preds = %2
  %16 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %17 = bitcast %struct.g_part_table* %16 to %struct.g_part_apm_table*
  store %struct.g_part_apm_table* %17, %struct.g_part_apm_table** %7, align 8
  %18 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %19 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %18, i32 0, i32 0
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %6, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 512
  br i1 %24, label %39, label %25

25:                                               ; preds = %15
  %26 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %30 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 2, %32
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = icmp slt i32 %28, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25, %15
  %40 = load i32, i32* @ENOSPC, align 4
  store i32 %40, i32* %3, align 4
  br label %108

41:                                               ; preds = %25
  %42 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %44, %47
  %49 = load i32, i32* @UINT32_MAX, align 4
  %50 = call i8* @MIN(i32 %48, i32 %49)
  %51 = getelementptr i8, i8* %50, i64 -1
  store i8* %51, i8** %8, align 8
  %52 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %53 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 2, %54
  %56 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %57 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %60 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @APM_DDR_SIG, align 4
  %62 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %63 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %66 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %69 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr i8, i8* %71, i64 1
  %73 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %74 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @APM_ENT_SIG, align 4
  %77 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %78 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 4
  %80 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %81 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %85 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %88 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %91 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %95 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %98 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strcpy(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %103 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** @APM_ENT_TYPE_SELF, align 8
  %107 = call i32 @strcpy(i32 %105, i8* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %41, %39, %13
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
