; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_unmapped_mbuf_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_unmapped_mbuf_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, i32, i32, i32, i32*, i64*, i32* }

@vm_offset_t = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"off + len > trail (%d + %d > %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mbuf*, i32*, i32*, i32)* @_bus_dmamap_load_unmapped_mbuf_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_load_unmapped_mbuf_sg(i32 %0, i32 %1, %struct.mbuf* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf_ext_pgs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %23 = call i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf* %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %26, align 8
  store %struct.mbuf_ext_pgs* %27, %struct.mbuf_ext_pgs** %13, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %32 = load i32, i32* @vm_offset_t, align 4
  %33 = call i32 @mtod(%struct.mbuf* %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %35 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %6
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %41 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %46 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %16, align 4
  br label %77

50:                                               ; preds = %38
  %51 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %52 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %20, align 4
  store i32 0, i32* %16, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %66 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @kernel_pmap, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @_bus_dmamap_load_buffer(i32 %63, i32 %64, i32* %70, i32 %71, i32 %72, i32 %73, i32* %74, i32* %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %50, %44
  br label %78

78:                                               ; preds = %77, %6
  %79 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %80 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %138, %78
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %85 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = icmp sgt i32 %92, 0
  br label %94

94:                                               ; preds = %91, %88, %82
  %95 = phi i1 [ false, %88 ], [ false, %82 ], [ %93, %91 ]
  br i1 %95, label %96, label %141

96:                                               ; preds = %94
  %97 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs* %97, i32 %98, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %138

108:                                              ; preds = %96
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %21, align 4
  store i32 0, i32* %16, align 4
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @min(i32 %115, i32 %116)
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %124 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %123, i32 0, i32 5
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @_bus_dmamap_load_phys(i32 %121, i32 %122, i64 %132, i32 %133, i32 %134, i32* %135, i32* %136)
  store i32 %137, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %138

138:                                              ; preds = %108, %104
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %82

141:                                              ; preds = %94
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %148, %149
  %151 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %152 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp sle i32 %150, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %159 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @KASSERT(i32 %155, i8* %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %13, align 8
  %167 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @kernel_pmap, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = call i32 @_bus_dmamap_load_buffer(i32 %164, i32 %165, i32* %171, i32 %172, i32 %173, i32 %174, i32* %175, i32* %176)
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %147, %144, %141
  %179 = load i32, i32* %14, align 4
  ret i32 %179
}

declare dso_local i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf*) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @_bus_dmamap_load_buffer(i32, i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs*, i32, i32) #1

declare dso_local i32 @_bus_dmamap_load_phys(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
