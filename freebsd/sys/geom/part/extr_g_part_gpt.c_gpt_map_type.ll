; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_map_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_map_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_uuid_alias = type { i32, i64 }
%struct.uuid = type { i32 }

@gpt_uuid_alias_match = common dso_local global %struct.g_part_uuid_alias* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uuid*)* @gpt_map_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpt_map_type(%struct.uuid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uuid*, align 8
  %4 = alloca %struct.g_part_uuid_alias*, align 8
  store %struct.uuid* %0, %struct.uuid** %3, align 8
  %5 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** @gpt_uuid_alias_match, align 8
  %6 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %5, i64 0
  store %struct.g_part_uuid_alias* %6, %struct.g_part_uuid_alias** %4, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %4, align 8
  %9 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.uuid*, %struct.uuid** %3, align 8
  %14 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %4, align 8
  %15 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @EQUUID(%struct.uuid* %13, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %4, align 8
  %21 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %4, align 8
  %26 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %25, i32 1
  store %struct.g_part_uuid_alias* %26, %struct.g_part_uuid_alias** %4, align 8
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @EQUUID(%struct.uuid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
