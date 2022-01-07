; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_apm_table = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@APM_DDR_SIG = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@APM_ENT_SIG = common dso_local global i64 0, align 8
@APM_ENT_TYPE_SELF = common dso_local global i32 0, align 4
@G_PART_PROBE_PRI_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_apm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_apm_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %10 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %11 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %177

16:                                               ; preds = %2
  %17 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %18 = bitcast %struct.g_part_table* %17 to %struct.g_part_apm_table*
  store %struct.g_part_apm_table* %18, %struct.g_part_apm_table** %7, align 8
  %19 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %20 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %22 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %21, i32 0, i32 0
  %23 = load %struct.g_provider*, %struct.g_provider** %22, align 8
  store %struct.g_provider* %23, %struct.g_provider** %6, align 8
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 4, %29
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOSPC, align 4
  store i32 %33, i32* %3, align 4
  br label %177

34:                                               ; preds = %16
  %35 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %36 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @g_read_data(%struct.g_consumer* %35, i64 0, i32 %38, i32* %9)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %177

44:                                               ; preds = %34
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @be16dec(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @APM_DDR_SIG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @be16dec(i8* %51)
  %53 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %54 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = call i32 @be16dec(i8* %57)
  %59 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %60 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = call i32 @be32dec(i8* %63)
  %65 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %66 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @g_free(i8* %68)
  %70 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %71 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %75 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %177

80:                                               ; preds = %50
  %81 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %82 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %86 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %89 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %87, %90
  %92 = icmp sgt i32 %84, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %3, align 4
  br label %177

95:                                               ; preds = %80
  br label %132

96:                                               ; preds = %44
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @be16dec(i8* %97)
  %99 = icmp ne i32 %98, 37396
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @g_free(i8* %101)
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %3, align 4
  br label %177

104:                                              ; preds = %96
  %105 = load i64, i64* @APM_DDR_SIG, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %108 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %111 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %114 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %117 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %120 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %118, %121
  %123 = load i32, i32* @UINT32_MAX, align 4
  %124 = call i32 @MIN(i32 %122, i32 %123)
  %125 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %126 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %129 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @g_free(i8* %130)
  br label %132

132:                                              ; preds = %104, %95
  %133 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %134 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %135 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %134, i32 0, i32 2
  %136 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %137 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @apm_read_ent(%struct.g_consumer* %133, i32 1, %struct.TYPE_4__* %135, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %177

144:                                              ; preds = %132
  %145 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %146 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @APM_ENT_SIG, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %3, align 4
  br label %177

153:                                              ; preds = %144
  %154 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %155 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @APM_ENT_TYPE_SELF, align 4
  %159 = call i64 @strcmp(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @ENXIO, align 4
  store i32 %162, i32* %3, align 4
  br label %177

163:                                              ; preds = %153
  %164 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %165 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %7, align 8
  %169 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %167, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* @ENXIO, align 4
  store i32 %174, i32* %3, align 4
  br label %177

175:                                              ; preds = %163
  %176 = load i32, i32* @G_PART_PROBE_PRI_NORM, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %173, %161, %151, %142, %100, %93, %78, %42, %32, %14
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i8* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i32 @be16dec(i8*) #1

declare dso_local i32 @be32dec(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @apm_read_ent(%struct.g_consumer*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
