; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gfmultword4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_gfmult.c_gfmultword4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128table4 = type { i32* }
%struct.gf128 = type { i32* }

@reduction = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32, i32*, %struct.gf128table4*)* @gfmultword4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gfmultword4(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.gf128table4* %5) #0 {
  %7 = alloca %struct.gf128, align 8
  %8 = alloca %struct.gf128, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gf128table4*, align 8
  %14 = alloca %struct.gf128, align 8
  %15 = alloca %struct.gf128, align 8
  %16 = alloca %struct.gf128, align 8
  %17 = alloca %struct.gf128, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.gf128, align 8
  %25 = alloca %struct.gf128, align 8
  %26 = alloca %struct.gf128, align 8
  %27 = alloca %struct.gf128, align 8
  %28 = alloca %struct.gf128, align 8
  %29 = alloca %struct.gf128, align 8
  %30 = alloca %struct.gf128, align 8
  %31 = alloca %struct.gf128, align 8
  %32 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  store i32* %4, i32** %32, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.gf128table4* %5, %struct.gf128table4** %13, align 8
  store i32 0, i32* %23, align 4
  br label %33

33:                                               ; preds = %152, %6
  %34 = load i32, i32* %23, align 4
  %35 = icmp slt i32 %34, 64
  br i1 %35, label %36, label %155

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = srem i32 %37, 16
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %10, align 4
  %40 = srem i32 %39, 16
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %11, align 4
  %42 = srem i32 %41, 16
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %12, align 4
  %44 = srem i32 %43, 16
  store i32 %44, i32* %21, align 4
  %45 = load %struct.gf128table4*, %struct.gf128table4** %13, align 8
  %46 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %18, align 4
  %50 = call i32* @readrow(i32* %48, i32 %49)
  %51 = getelementptr inbounds %struct.gf128, %struct.gf128* %24, i32 0, i32 0
  store i32* %50, i32** %51, align 8
  %52 = bitcast %struct.gf128* %14 to i8*
  %53 = bitcast %struct.gf128* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.gf128table4*, %struct.gf128table4** %13, align 8
  %55 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %19, align 4
  %59 = call i32* @readrow(i32* %57, i32 %58)
  %60 = getelementptr inbounds %struct.gf128, %struct.gf128* %25, i32 0, i32 0
  store i32* %59, i32** %60, align 8
  %61 = bitcast %struct.gf128* %15 to i8*
  %62 = bitcast %struct.gf128* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load %struct.gf128table4*, %struct.gf128table4** %13, align 8
  %64 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %20, align 4
  %68 = call i32* @readrow(i32* %66, i32 %67)
  %69 = getelementptr inbounds %struct.gf128, %struct.gf128* %26, i32 0, i32 0
  store i32* %68, i32** %69, align 8
  %70 = bitcast %struct.gf128* %16 to i8*
  %71 = bitcast %struct.gf128* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load %struct.gf128table4*, %struct.gf128table4** %13, align 8
  %73 = getelementptr inbounds %struct.gf128table4, %struct.gf128table4* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %21, align 4
  %77 = call i32* @readrow(i32* %75, i32 %76)
  %78 = getelementptr inbounds %struct.gf128, %struct.gf128* %27, i32 0, i32 0
  store i32* %77, i32** %78, align 8
  %79 = bitcast %struct.gf128* %17 to i8*
  %80 = bitcast %struct.gf128* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  %81 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = srem i32 %84, 16
  store i32 %85, i32* %22, align 4
  %86 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 4
  %91 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %94, 16
  %96 = shl i32 %95, 60
  %97 = or i32 %90, %96
  %98 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %97, i32* %100, align 4
  %101 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 4
  store i32 %105, i32* %103, align 4
  %106 = load i64*, i64** @reduction, align 8
  %107 = load i32, i32* %22, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %111, 48
  %113 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %9, align 4
  %119 = ashr i32 %118, 4
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = ashr i32 %120, 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = ashr i32 %122, 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = ashr i32 %124, 4
  store i32 %125, i32* %12, align 4
  %126 = getelementptr inbounds %struct.gf128, %struct.gf128* %16, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds %struct.gf128, %struct.gf128* %17, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32* @gf128_add(i32* %127, i32* %129)
  %131 = getelementptr inbounds %struct.gf128, %struct.gf128* %31, i32 0, i32 0
  store i32* %130, i32** %131, align 8
  %132 = getelementptr inbounds %struct.gf128, %struct.gf128* %15, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds %struct.gf128, %struct.gf128* %31, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32* @gf128_add(i32* %133, i32* %135)
  %137 = getelementptr inbounds %struct.gf128, %struct.gf128* %30, i32 0, i32 0
  store i32* %136, i32** %137, align 8
  %138 = getelementptr inbounds %struct.gf128, %struct.gf128* %14, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds %struct.gf128, %struct.gf128* %30, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32* @gf128_add(i32* %139, i32* %141)
  %143 = getelementptr inbounds %struct.gf128, %struct.gf128* %29, i32 0, i32 0
  store i32* %142, i32** %143, align 8
  %144 = getelementptr inbounds %struct.gf128, %struct.gf128* %8, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds %struct.gf128, %struct.gf128* %29, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32* @gf128_add(i32* %145, i32* %147)
  %149 = getelementptr inbounds %struct.gf128, %struct.gf128* %28, i32 0, i32 0
  store i32* %148, i32** %149, align 8
  %150 = bitcast %struct.gf128* %8 to i8*
  %151 = bitcast %struct.gf128* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 8, i1 false)
  br label %152

152:                                              ; preds = %36
  %153 = load i32, i32* %23, align 4
  %154 = add nsw i32 %153, 4
  store i32 %154, i32* %23, align 4
  br label %33

155:                                              ; preds = %33
  %156 = bitcast %struct.gf128* %7 to i8*
  %157 = bitcast %struct.gf128* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 8, i1 false)
  %158 = getelementptr inbounds %struct.gf128, %struct.gf128* %7, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  ret i32* %159
}

declare dso_local i32* @readrow(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @gf128_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
