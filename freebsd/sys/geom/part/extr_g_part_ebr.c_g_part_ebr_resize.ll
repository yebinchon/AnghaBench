; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_parms = type { i32 }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.g_provider* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_ebr_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %9 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %10 = icmp ne %struct.g_part_entry* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %12, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %15 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call %struct.TYPE_4__* @LIST_FIRST(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %8, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  %28 = load i32, i32* @UINT32_MAX, align 4
  %29 = call i64 @MIN(i32 %27, i32 %28)
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %32 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %13, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_4__* @LIST_FIRST(i32*) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
