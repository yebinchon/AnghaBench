; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_part_entry = type { i64, i64 }
%struct.g_part_parms = type { i64 }
%struct.g_part_bsd64_table = type { i32, i32, i32 }
%struct.g_provider = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.g_provider* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_bsd64_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd64_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_bsd64_table*, align 8
  %9 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = icmp eq %struct.g_part_entry* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %3
  %13 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %14 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call %struct.TYPE_4__* @LIST_FIRST(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %9, align 8
  %20 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %21 = bitcast %struct.g_part_table* %20 to %struct.g_part_bsd64_table*
  store %struct.g_part_bsd64_table* %21, %struct.g_part_bsd64_table** %8, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %8, align 8
  %26 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %24, %32
  %34 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %8, align 8
  %35 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rounddown2(i64 %33, i32 %36)
  %38 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  %42 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %8, align 8
  %43 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.g_part_bsd64_table*, %struct.g_part_bsd64_table** %8, align 8
  %45 = getelementptr inbounds %struct.g_part_bsd64_table, %struct.g_part_bsd64_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %49 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %4, align 4
  br label %61

50:                                               ; preds = %3
  %51 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %52 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %55 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = sub nsw i64 %57, 1
  %59 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %60 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %50, %12
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_4__* @LIST_FIRST(i32*) #1

declare dso_local i32 @rounddown2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
