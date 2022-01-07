; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ddf_meta = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@M_MD_DDF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@hdr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_meta*, %struct.ddf_meta*)* @ddf_meta_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_meta_copy(%struct.ddf_meta* %0, %struct.ddf_meta* %1) #0 {
  %3 = alloca %struct.ddf_meta*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %3, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %4, align 8
  %6 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %7 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %10 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %12 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %15 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  store i32 %13, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @M_MD_DDF, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i8* @malloc(i32 %16, i32 %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %22 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %21, i32 0, i32 7
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %24 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %27 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @memcpy(i32* %25, i32* %28, i32 %29)
  %31 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GET32(%struct.ddf_meta* %31, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @M_MD_DDF, align 4
  %39 = load i32, i32* @M_WAITOK, align 4
  %40 = call i8* @malloc(i32 %37, i32 %38, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %43 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %42, i32 0, i32 6
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %45 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %48 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET32(%struct.ddf_meta* %50, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @memcpy(i32* %46, i32* %49, i32 %56)
  %58 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GET32(%struct.ddf_meta* %58, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* @M_MD_DDF, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @malloc(i32 %64, i32 %65, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %70 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %72 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %75 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GET32(%struct.ddf_meta* %77, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i32 @memcpy(i32* %73, i32* %76, i32 %83)
  %85 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @GET32(%struct.ddf_meta* %85, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* @M_MD_DDF, align 4
  %93 = load i32, i32* @M_WAITOK, align 4
  %94 = call i8* @malloc(i32 %91, i32 %92, i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %97 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %99 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %102 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET32(%struct.ddf_meta* %104, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @memcpy(i32* %100, i32* %103, i32 %110)
  %112 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @GET32(%struct.ddf_meta* %112, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* @M_MD_DDF, align 4
  %120 = load i32, i32* @M_WAITOK, align 4
  %121 = call i8* @malloc(i32 %118, i32 %119, i32 %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %124 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %126 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %129 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @GET32(%struct.ddf_meta* %131, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = mul nsw i32 %135, %136
  %138 = call i32 @memcpy(i32* %127, i32* %130, i32 %137)
  %139 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @GET32(%struct.ddf_meta* %139, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* @M_MD_DDF, align 4
  %147 = load i32, i32* @M_WAITOK, align 4
  %148 = call i8* @malloc(i32 %145, i32 %146, i32 %147)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %151 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  %152 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %153 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %156 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @GET32(%struct.ddf_meta* %158, i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 %162, %163
  %165 = call i32 @memcpy(i32* %154, i32* %157, i32 %164)
  %166 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %167 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %198

170:                                              ; preds = %2
  %171 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @GET32(%struct.ddf_meta* %171, i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load i32, i32* @M_MD_DDF, align 4
  %179 = load i32, i32* @M_WAITOK, align 4
  %180 = call i8* @malloc(i32 %177, i32 %178, i32 %179)
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %183 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %182, i32 0, i32 1
  store i32* %181, i32** %183, align 8
  %184 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %185 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %188 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hdr, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @GET32(%struct.ddf_meta* %190, i32 %193)
  %195 = load i32, i32* %5, align 4
  %196 = mul nsw i32 %194, %195
  %197 = call i32 @memcpy(i32* %186, i32* %189, i32 %196)
  br label %198

198:                                              ; preds = %170, %2
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
