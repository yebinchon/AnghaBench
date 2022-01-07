; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32 }
%struct.g_part_entry = type { i32, i32 }
%struct.g_part_bsd_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.g_part_bsd_table = type { i32* }

@gpe_entry = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_bsd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_write(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_bsd_entry*, align 8
  %8 = alloca %struct.g_part_bsd_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %5, align 8
  %18 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %19 = bitcast %struct.g_part_table* %18 to %struct.g_part_bsd_table*
  store %struct.g_part_bsd_table* %19, %struct.g_part_bsd_table** %8, align 8
  %20 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %21 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %20, i32 0, i32 1
  %22 = call %struct.g_part_entry* @LIST_FIRST(i32* %21)
  store %struct.g_part_entry* %22, %struct.g_part_entry** %6, align 8
  %23 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %8, align 8
  %24 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %10, align 8
  store i32 1, i32* %14, align 4
  br label %31

31:                                               ; preds = %118, %2
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %34 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 148
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %40, 1
  %42 = mul nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %11, align 8
  %45 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %46 = icmp ne %struct.g_part_entry* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %50 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %55 = bitcast %struct.g_part_entry* %54 to %struct.g_part_bsd_entry*
  br label %57

56:                                               ; preds = %47, %37
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi %struct.g_part_bsd_entry* [ %55, %53 ], [ null, %56 ]
  store %struct.g_part_bsd_entry* %58, %struct.g_part_bsd_entry** %7, align 8
  %59 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %60 = icmp ne %struct.g_part_bsd_entry* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %57
  %62 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %63 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %70 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32enc(i32* %68, i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %77 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32enc(i32* %75, i32 %79)
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %84 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32enc(i32* %82, i32 %86)
  %88 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %89 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 12
  store i32 %91, i32* %93, align 4
  %94 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %95 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 13
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 14
  %102 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %103 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16enc(i32* %101, i32 %105)
  br label %110

107:                                              ; preds = %61, %57
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @bzero(i32* %108, i32 16)
  br label %110

110:                                              ; preds = %107, %66
  %111 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %7, align 8
  %112 = icmp ne %struct.g_part_bsd_entry* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %115 = load i32, i32* @gpe_entry, align 4
  %116 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %114, i32 %115)
  store %struct.g_part_entry* %116, %struct.g_part_entry** %6, align 8
  br label %117

117:                                              ; preds = %113, %110
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %31

121:                                              ; preds = %31
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 136
  %124 = call i32 @le16enc(i32* %123, i32 0)
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 148
  %127 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %128 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 16
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  store i32* %132, i32** %12, align 8
  store i32 0, i32* %9, align 4
  %133 = load i32*, i32** %10, align 8
  store i32* %133, i32** %11, align 8
  br label %134

134:                                              ; preds = %143, %121
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = icmp ult i32* %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @le16dec(i32* %139)
  %141 = load i32, i32* %9, align 4
  %142 = xor i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %11, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32* %145, i32** %11, align 8
  br label %134

146:                                              ; preds = %134
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 136
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @le16enc(i32* %148, i32 %149)
  %151 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %152 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %8, align 8
  %153 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @BBSIZE, align 4
  %156 = call i32 @g_write_data(%struct.g_consumer* %151, i32 0, i32* %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  ret i32 %157
}

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry*, i32) #1

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
