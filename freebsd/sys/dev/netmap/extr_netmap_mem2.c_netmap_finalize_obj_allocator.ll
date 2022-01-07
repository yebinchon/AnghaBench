; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_finalize_obj_allocator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_finalize_obj_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32, i32, i32, i32, i32, i64, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unable to create lookup table for '%s'\00", align 1
@M_NETMAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to create cluster at %d for '%s' allocator\00", align 1
@netmap_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Pre-allocated %d clusters (%d/%zuKB) for '%s'\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_pool*)* @netmap_finalize_obj_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_finalize_obj_allocator(%struct.netmap_obj_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_obj_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %3, align 8
  %8 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %8, i32 0, i32 9
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %201

13:                                               ; preds = %1
  %14 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %18 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %20 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %23 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %24, i32 0, i32 4
  store i32 1, i32* %25, align 8
  %26 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_2__* @nm_alloc_lut(i32 %28)
  %30 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %30, i32 0, i32 9
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %33 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %32, i32 0, i32 9
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %13
  %37 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %38 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %197

41:                                               ; preds = %13
  %42 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %164, %41
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %48 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %165

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %54 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @M_NETMAP, align 4
  %59 = load i32, i32* @M_NOWAIT, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i8* @contigmalloc(i64 %57, i32 %58, i32 %61, i64 0, i64 -1, i32 %62, i32 0)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %141

66:                                               ; preds = %51
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %69 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %125

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %121, %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %87 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = srem i32 %85, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %84
  %92 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %93 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %92, i32 0, i32 9
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %91
  %102 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %103 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %102, i32 0, i32 9
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i32, i32* @M_NETMAP, align 4
  %112 = call i32 @contigfree(i8* %109, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %101, %91, %84
  %114 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %115 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %114, i32 0, i32 9
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* null, i8** %120, align 8
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %4, align 4
  br label %80

124:                                              ; preds = %80
  br label %125

125:                                              ; preds = %124, %74
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %128 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %131 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %136 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %134, %137
  %139 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %140 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %165

141:                                              ; preds = %51
  br label %142

142:                                              ; preds = %155, %141
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load i8*, i8** %7, align 8
  %148 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %149 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %148, i32 0, i32 9
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* %147, i8** %154, align 8
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  %158 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %159 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %7, align 8
  br label %142

164:                                              ; preds = %142
  br label %45

165:                                              ; preds = %125, %45
  %166 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %167 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %171 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = mul i64 %169, %172
  %174 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %175 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %174, i32 0, i32 7
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* @netmap_verbose, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %165
  %179 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %180 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %183 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = lshr i64 %184, 10
  %186 = trunc i64 %185 to i32
  %187 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %188 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = lshr i64 %189, 10
  %191 = trunc i64 %190 to i32
  %192 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %193 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @nm_prinf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %186, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %178, %165
  store i32 0, i32* %2, align 4
  br label %201

197:                                              ; preds = %36
  %198 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %199 = call i32 @netmap_reset_obj_allocator(%struct.netmap_obj_pool* %198)
  %200 = load i32, i32* @ENOMEM, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %196, %12
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.TYPE_2__* @nm_alloc_lut(i32) #1

declare dso_local i32 @nm_prerr(i8*, i32, ...) #1

declare dso_local i8* @contigmalloc(i64, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @contigfree(i8*, i64, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @netmap_reset_obj_allocator(%struct.netmap_obj_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
