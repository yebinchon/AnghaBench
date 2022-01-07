; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.g_part_entry = type { i32, i64, i64, %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_parms = type { i32 }
%struct.g_part_vtoc8_table = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.g_provider* }

@EINVAL = common dso_local global i32 0, align 4
@g_debugflags = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_vtoc8_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_vtoc8_table*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %11 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %12 = icmp eq %struct.g_part_entry* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %15 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call %struct.TYPE_8__* @LIST_FIRST(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.g_provider*, %struct.g_provider** %19, align 8
  store %struct.g_provider* %20, %struct.g_provider** %9, align 8
  %21 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %23 = call i32 @vtoc8_set_rawsize(%struct.g_part_table* %21, %struct.g_provider* %22)
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %26 = bitcast %struct.g_part_table* %25 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %26, %struct.g_part_vtoc8_table** %8, align 8
  %27 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %28 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %31 = call i64 @vtoc8_align(%struct.g_part_vtoc8_table* %30, i32* null, i32* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %24
  %36 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %37 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %36, i32 0, i32 3
  %38 = load %struct.g_provider*, %struct.g_provider** %37, align 8
  store %struct.g_provider* %38, %struct.g_provider** %9, align 8
  %39 = load i32, i32* @g_debugflags, align 4
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %45 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %53 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %4, align 4
  br label %83

60:                                               ; preds = %48, %42, %35
  %61 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %62 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %69 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %71 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %75 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @be32enc(i32* %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %60, %58, %33, %13
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_8__* @LIST_FIRST(i32*) #1

declare dso_local i32 @vtoc8_set_rawsize(%struct.g_part_table*, %struct.g_provider*) #1

declare dso_local i64 @vtoc8_align(%struct.g_part_vtoc8_table*, i32*, i32*) #1

declare dso_local i32 @be32enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
