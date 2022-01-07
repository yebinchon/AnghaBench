; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, i64, i64 }
%struct.g_consumer = type { i32 }
%struct.apm_ent = type { i64, i64, i32 }
%struct.g_part_apm_entry = type { %struct.apm_ent }
%struct.g_part_apm_table = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@APM_ENT_TYPE_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_apm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_read(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.apm_ent, align 8
  %6 = alloca %struct.g_part_apm_entry*, align 8
  %7 = alloca %struct.g_part_apm_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %10 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %11 = bitcast %struct.g_part_table* %10 to %struct.g_part_apm_table*
  store %struct.g_part_apm_table* %11, %struct.g_part_apm_table** %7, align 8
  %12 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %13 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %18 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %20 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %25 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %27 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %32 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %34 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %76, %2
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %46 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @apm_read_ent(%struct.g_consumer* %42, i32 %44, %struct.apm_ent* %5, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %76

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @APM_ENT_TYPE_UNUSED, align 4
  %56 = call i32 @strcmp(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %76

59:                                               ; preds = %52
  %60 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %5, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.apm_ent, %struct.apm_ent* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %65, %67
  %69 = sub nsw i64 %68, 1
  %70 = call i64 @g_part_new_entry(%struct.g_part_table* %60, i32 %61, i64 %63, i64 %69)
  %71 = inttoptr i64 %70 to %struct.g_part_apm_entry*
  store %struct.g_part_apm_entry* %71, %struct.g_part_apm_entry** %6, align 8
  %72 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %6, align 8
  %73 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %72, i32 0, i32 0
  %74 = bitcast %struct.apm_ent* %73 to i8*
  %75 = bitcast %struct.apm_ent* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  br label %76

76:                                               ; preds = %59, %58, %51
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  br label %38

79:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @apm_read_ent(%struct.g_consumer*, i32, %struct.apm_ent*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @g_part_new_entry(%struct.g_part_table*, i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
