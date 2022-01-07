; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, i32, i32, i32, i64 }
%struct.g_part_parms = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_bsd_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.g_part_bsd_table = type { i32, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DISKMAGIC = common dso_local global i32 0, align 4
@RAW_PART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_bsd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_create(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca %struct.g_part_bsd_entry*, align 8
  %9 = alloca %struct.g_part_bsd_table*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %14 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %15 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %14, i32 0, i32 0
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %6, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOSPC, align 4
  store i32 %23, i32* %3, align 4
  br label %156

24:                                               ; preds = %2
  %25 = load i32, i32* @BBSIZE, align 4
  %26 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOTBLK, align 4
  store i32 %32, i32* %3, align 4
  br label %156

33:                                               ; preds = %24
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = load i32, i32* @UINT32_MAX, align 4
  %42 = call i32 @MIN(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %44 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %47 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %54 = bitcast %struct.g_part_table* %53 to %struct.g_part_bsd_table*
  store %struct.g_part_bsd_table* %54, %struct.g_part_bsd_table** %9, align 8
  %55 = load i32, i32* @BBSIZE, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = load i32, i32* @M_ZERO, align 4
  %58 = or i32 %56, %57
  %59 = call i32* @g_malloc(i32 %55, i32 %58)
  %60 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %9, align 8
  %61 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %9, align 8
  %63 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %66 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* @DISKMAGIC, align 4
  %73 = call i32 @le32enc(i32* %71, i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 40
  %76 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32enc(i32* %75, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 44
  %82 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %83 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le32enc(i32* %81, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 48
  %88 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %89 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32enc(i32* %87, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 52
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @le32enc(i32* %93, i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 56
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @le32enc(i32* %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 60
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @le32enc(i32* %101, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 72
  %106 = call i32 @le16enc(i32* %105, i32 3600)
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 132
  %109 = load i32, i32* @DISKMAGIC, align 4
  %110 = call i32 @le32enc(i32* %108, i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 138
  %113 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %114 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @le16enc(i32* %112, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 140
  %119 = load i32, i32* @BBSIZE, align 4
  %120 = call i32 @le32enc(i32* %118, i32 %119)
  %121 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %122 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %126 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %128 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %130 = load i64, i64* @RAW_PART, align 8
  %131 = add nsw i64 %130, 1
  %132 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %133 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %136 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table* %129, i64 %131, i64 %134, i32 %137)
  store %struct.g_part_entry* %138, %struct.g_part_entry** %7, align 8
  %139 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %140 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %142 = bitcast %struct.g_part_entry* %141 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %142, %struct.g_part_bsd_entry** %8, align 8
  %143 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %144 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %148 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %9, align 8
  %151 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %154 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %33, %31, %22
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @g_malloc(i32, i32) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
