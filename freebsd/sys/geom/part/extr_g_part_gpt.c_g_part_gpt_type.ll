; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_uuid_alias = type { i32, i64 }
%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_gpt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uuid }
%struct.uuid = type { i32 }

@gpt_uuid_alias_match = common dso_local global %struct.g_part_uuid_alias* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_gpt_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_gpt_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_gpt_entry*, align 8
  %11 = alloca %struct.uuid*, align 8
  %12 = alloca %struct.g_part_uuid_alias*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %14 = bitcast %struct.g_part_entry* %13 to %struct.g_part_gpt_entry*
  store %struct.g_part_gpt_entry* %14, %struct.g_part_gpt_entry** %10, align 8
  %15 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %10, align 8
  %16 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.uuid* %17, %struct.uuid** %11, align 8
  %18 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** @gpt_uuid_alias_match, align 8
  %19 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %18, i64 0
  store %struct.g_part_uuid_alias* %19, %struct.g_part_uuid_alias** %12, align 8
  br label %20

20:                                               ; preds = %38, %4
  %21 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %12, align 8
  %22 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.uuid*, %struct.uuid** %11, align 8
  %27 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %12, align 8
  %28 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @EQUUID(%struct.uuid* %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %12, align 8
  %34 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @g_part_alias_name(i32 %35)
  store i8* %36, i8** %5, align 8
  br label %51

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %12, align 8
  %40 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %39, i32 1
  store %struct.g_part_uuid_alias* %40, %struct.g_part_uuid_alias** %12, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 33, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = load %struct.uuid*, %struct.uuid** %11, align 8
  %49 = call i32 @snprintf_uuid(i8* %45, i64 %47, %struct.uuid* %48)
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %41, %32
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i64 @EQUUID(%struct.uuid*, i64) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @snprintf_uuid(i8*, i64, %struct.uuid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
