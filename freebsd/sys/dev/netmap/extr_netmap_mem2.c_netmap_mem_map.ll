; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32, i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.netmap_adapter = type { i32*, i32, %struct.netmap_lut }
%struct.netmap_lut = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"plut already allocated for %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"allocating physical lut for %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to allocate physical lut for %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to map cluster #%d from the %s pool\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_pool*, %struct.netmap_adapter*)* @netmap_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem_map(%struct.netmap_obj_pool* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_obj_pool*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netmap_lut*, align 8
  %10 = alloca i32, align 4
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %12 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %14, i32 0, i32 2
  store %struct.netmap_lut* %15, %struct.netmap_lut** %9, align 8
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %169

21:                                               ; preds = %2
  %22 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %23 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nm_prdis(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %169

31:                                               ; preds = %21
  %32 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nm_prdis(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.TYPE_4__* @nm_alloc_plut(i32 %36)
  %38 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %39 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %41 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp eq %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %3, align 4
  br label %169

50:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %57 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %65 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %51

69:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %154, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %160

74:                                               ; preds = %70
  %75 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %76 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %75, i32 0, i32 5
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %154

85:                                               ; preds = %74
  %86 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %87 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = ptrtoint i32* %89 to i32
  %91 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %92 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %99 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %98, i32 0, i32 5
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %107 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netmap_load_map(%struct.netmap_adapter* %86, i32 %90, i64* %97, i32* %105, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %85
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %115 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %116)
  br label %160

118:                                              ; preds = %85
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %150, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %122 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %119
  %126 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %127 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %138 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.netmap_lut*, %struct.netmap_lut** %9, align 8
  %142 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 %140, i64* %149, align 8
  br label %150

150:                                              ; preds = %125
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %119

153:                                              ; preds = %119
  br label %154

154:                                              ; preds = %153, %84
  %155 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %156 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %7, align 4
  br label %70

160:                                              ; preds = %112, %70
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %165 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %166 = call i32 @netmap_mem_unmap(%struct.netmap_obj_pool* %164, %struct.netmap_adapter* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %44, %26, %20
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @nm_prdis(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @nm_alloc_plut(i32) #1

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i32 @netmap_load_map(%struct.netmap_adapter*, i32, i64*, i32*, i32) #1

declare dso_local i32 @netmap_mem_unmap(%struct.netmap_obj_pool*, %struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
