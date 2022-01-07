; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_gpt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@gpt_uuid_freebsd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_gpt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_gpt_name(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.g_part_gpt_entry*, align 8
  %10 = alloca i8, align 1
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %12 = bitcast %struct.g_part_entry* %11 to %struct.g_part_gpt_entry*
  store %struct.g_part_gpt_entry* %12, %struct.g_part_gpt_entry** %9, align 8
  %13 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %9, align 8
  %14 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @EQUUID(i32* %15, i32* @gpt_uuid_freebsd)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 115, i32 112
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %10, align 1
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i8, i8* %10, align 1
  %24 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %25 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %23, i32 %26)
  %28 = load i8*, i8** %7, align 8
  ret i8* %28
}

declare dso_local i64 @EQUUID(i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
