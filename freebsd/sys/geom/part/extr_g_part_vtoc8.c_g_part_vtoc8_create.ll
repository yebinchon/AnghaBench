; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, i32, i32, i64 }
%struct.g_part_parms = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_vtoc8_table = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FreeBSD%lldM cyl %u alt %u hd %u sec %u\00", align 1
@VTOC_VERSION = common dso_local global i32 0, align 4
@VTOC8_NPARTS = common dso_local global i32 0, align 4
@VTOC_SANITY = common dso_local global i32 0, align 4
@VTOC_MAGIC = common dso_local global i32 0, align 4
@VTOC_RAW_PART = common dso_local global i32 0, align 4
@VTOC_TAG_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_vtoc8_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_create(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca %struct.g_part_vtoc8_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %13 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %14 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %13, i32 0, i32 0
  %15 = load %struct.g_provider*, %struct.g_provider** %14, align 8
  store %struct.g_provider* %15, %struct.g_provider** %6, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOSPC, align 4
  store i32 %22, i32* %3, align 4
  br label %174

23:                                               ; preds = %2
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %174

31:                                               ; preds = %23
  %32 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %33 = bitcast %struct.g_part_table* %32 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %33, %struct.g_part_vtoc8_table** %8, align 8
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = load i32, i32* @UINT32_MAX, align 4
  %42 = call i32 @MIN(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %44 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %47 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %51 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %54 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %52, %55
  store i32 %56, i32* %12, align 4
  store i32 2, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %62 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %66 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 2048
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %75 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %78 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sprintf(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %71, i32 %72, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %82 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 11
  %84 = load i32, i32* @VTOC_VERSION, align 4
  %85 = call i32 @be32enc(i32* %83, i32 %84)
  %86 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %87 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 10
  %89 = load i32, i32* @VTOC8_NPARTS, align 4
  %90 = call i32 @be16enc(i32* %88, i32 %89)
  %91 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %92 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 9
  %94 = load i32, i32* @VTOC_SANITY, align 4
  %95 = call i32 @be32enc(i32* %93, i32 %94)
  %96 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %97 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 8
  %99 = call i32 @be16enc(i32* %98, i32 3600)
  %100 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %101 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 7
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @be16enc(i32* %102, i32 %103)
  %105 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %106 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @be16enc(i32* %107, i32 %108)
  %110 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %111 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @be16enc(i32* %112, i32 %113)
  %115 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %116 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %119 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be16enc(i32* %117, i32 %120)
  %122 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %123 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %126 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @be16enc(i32* %124, i32 %127)
  %129 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %130 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* @VTOC_MAGIC, align 4
  %133 = call i32 @be16enc(i32* %131, i32 %132)
  %134 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %135 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %139 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %141 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %140, i32 0, i32 3
  store i32 1, i32* %141, align 4
  %142 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %143 = load i32, i32* @VTOC_RAW_PART, align 4
  %144 = add nsw i32 %143, 1
  %145 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %146 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %149 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table* %142, i32 %144, i64 %147, i32 %150)
  store %struct.g_part_entry* %151, %struct.g_part_entry** %7, align 8
  %152 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %153 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  %154 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %155 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* @VTOC_RAW_PART, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* @VTOC_TAG_BACKUP, align 4
  %163 = call i32 @be16enc(i32* %161, i32 %162)
  %164 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %8, align 8
  %165 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load i32, i32* @VTOC_RAW_PART, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @be32enc(i32* %171, i32 %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %31, %29, %21
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
