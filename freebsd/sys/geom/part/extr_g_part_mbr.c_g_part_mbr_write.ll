; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32 }
%struct.g_consumer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.g_part_entry = type { i32, i32 }
%struct.g_part_mbr_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.g_part_mbr_table = type { i32* }

@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@gpe_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_mbr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_write(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_part_entry*, align 8
  %6 = alloca %struct.g_part_mbr_entry*, align 8
  %7 = alloca %struct.g_part_mbr_table*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %11 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %12 = bitcast %struct.g_part_table* %11 to %struct.g_part_mbr_table*
  store %struct.g_part_mbr_table* %12, %struct.g_part_mbr_table** %7, align 8
  %13 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %14 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %13, i32 0, i32 1
  %15 = call %struct.g_part_entry* @LIST_FIRST(i32* %14)
  store %struct.g_part_entry* %15, %struct.g_part_entry** %5, align 8
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %131, %2
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %19 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %134

22:                                               ; preds = %16
  %23 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %7, align 8
  %24 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @DOSPARTOFF, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @DOSPARTSIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %36 = icmp ne %struct.g_part_entry* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %40 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %45 = bitcast %struct.g_part_entry* %44 to %struct.g_part_mbr_entry*
  br label %47

46:                                               ; preds = %37, %22
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi %struct.g_part_mbr_entry* [ %45, %43 ], [ null, %46 ]
  store %struct.g_part_mbr_entry* %48, %struct.g_part_mbr_entry** %6, align 8
  %49 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %50 = icmp ne %struct.g_part_mbr_entry* %49, null
  br i1 %50, label %51, label %119

51:                                               ; preds = %47
  %52 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %53 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %119, label %56

56:                                               ; preds = %51
  %57 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %58 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %64 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %70 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %76 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %82 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %88 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %94 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %100 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  %107 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %108 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32enc(i32* %106, i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  %114 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %115 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32enc(i32* %113, i32 %117)
  br label %123

119:                                              ; preds = %51, %47
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* @DOSPARTSIZE, align 4
  %122 = call i32 @bzero(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %56
  %124 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %6, align 8
  %125 = icmp ne %struct.g_part_mbr_entry* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %128 = load i32, i32* @gpe_entry, align 4
  %129 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %127, i32 %128)
  store %struct.g_part_entry* %129, %struct.g_part_entry** %5, align 8
  br label %130

130:                                              ; preds = %126, %123
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %16

134:                                              ; preds = %16
  %135 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %136 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %7, align 8
  %137 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %140 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @g_write_data(%struct.g_consumer* %135, i32 0, i32* %138, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry*, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
