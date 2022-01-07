; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.g_part_entry = type { i64, i64, %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_parms = type { i32 }
%struct.g_part_mbr_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.g_provider* }

@UINT32_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@g_debugflags = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_mbr_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_mbr_entry*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %11 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %12 = icmp eq %struct.g_part_entry* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %15 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call %struct.TYPE_6__* @LIST_FIRST(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %9, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.g_provider*, %struct.g_provider** %9, align 8
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
  br label %97

33:                                               ; preds = %3
  %34 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %35 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %38 = call i64 @mbr_align(%struct.g_part_table* %37, i32* null, i32* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %33
  %43 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %44 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %43, i32 0, i32 2
  %45 = load %struct.g_provider*, %struct.g_provider** %44, align 8
  store %struct.g_provider* %45, %struct.g_provider** %9, align 8
  %46 = load i32, i32* @g_debugflags, align 4
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %52 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %60 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @EBUSY, align 4
  store i32 %66, i32* %4, align 4
  br label %97

67:                                               ; preds = %55, %49, %42
  %68 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %69 = bitcast %struct.g_part_entry* %68 to %struct.g_part_mbr_entry*
  store %struct.g_part_mbr_entry* %69, %struct.g_part_mbr_entry** %8, align 8
  %70 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %71 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = sub nsw i64 %75, 1
  %77 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %78 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %8, align 8
  %81 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %84 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %85 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %8, align 8
  %88 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %8, align 8
  %91 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %8, align 8
  %94 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @mbr_set_chs(%struct.g_part_table* %83, i64 %86, i32* %89, i32* %92, i32* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %67, %65, %40, %13
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @mbr_align(%struct.g_part_table*, i32*, i32*) #1

declare dso_local i32 @mbr_set_chs(%struct.g_part_table*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
