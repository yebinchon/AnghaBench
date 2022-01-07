; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.g_part_entry = type { i32, i64 }
%struct.g_part_vtoc8_table = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@gpe_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_vtoc8_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_write(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_vtoc8_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %14 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %15 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %14, i32 0, i32 0
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %5, align 8
  %17 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %18 = bitcast %struct.g_part_table* %17 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %18, %struct.g_part_vtoc8_table** %7, align 8
  %19 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %20 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %19, i32 0, i32 1
  %21 = call %struct.g_part_entry* @LIST_FIRST(i32* %20)
  store %struct.g_part_entry* %21, %struct.g_part_entry** %6, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %91, %2
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %25 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %22
  %29 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %30 = icmp ne %struct.g_part_entry* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %34 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %32, %36
  br label %38

38:                                               ; preds = %31, %28
  %39 = phi i1 [ false, %28 ], [ %37, %31 ]
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %38
  %45 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %46 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %44
  %50 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %51 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @be16enc(i32* %57, i32 0)
  %59 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %60 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @be16enc(i32* %66, i32 0)
  %68 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %69 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = call i32 @be32enc(i32* %75, i32 0)
  %77 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %78 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @be32enc(i32* %84, i32 0)
  br label %86

86:                                               ; preds = %49, %44
  %87 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %88 = load i32, i32* @gpe_entry, align 4
  %89 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %87, i32 %88)
  store %struct.g_part_entry* %89, %struct.g_part_entry** %6, align 8
  br label %90

90:                                               ; preds = %86, %38
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %22

94:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %95 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %96 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %95, i32 0, i32 0
  %97 = bitcast %struct.TYPE_6__* %96 to i8*
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %9, align 8
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %111, %94
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 22
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @be16dec(i32* %107)
  %109 = load i32, i32* %8, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %13, align 4
  br label %99

114:                                              ; preds = %99
  %115 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %116 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @be16enc(i32* %117, i32 %118)
  %120 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %123 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @g_write_data(%struct.g_consumer* %120, i32 0, i32* %121, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry*, i32) #1

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
