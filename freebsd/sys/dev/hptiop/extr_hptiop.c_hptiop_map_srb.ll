; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_map_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_map_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hpt_iop_hba = type { i64, i32, %struct.hpt_iop_srb**, i32, i32, i64 }
%struct.hpt_iop_srb = type { i32, i32, i32, i32, %struct.hpt_iop_hba*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"hptiop_map_srb error\00", align 1
@HPT_SRB_MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@HPT_SRB_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dmamap create failed\00", align 1
@IOPMU_MAX_MEM_SUPPORT_MASK_32G = common dso_local global i32 0, align 4
@HPT_SRB_FLAG_HIGH_MEM_ACESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid alignment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @hptiop_map_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_map_srb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpt_iop_hba*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpt_iop_srb*, align 8
  %12 = alloca %struct.hpt_iop_srb*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %15, %struct.hpt_iop_hba** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 31
  %20 = and i32 %19, -32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %4
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %129

31:                                               ; preds = %23
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 31
  %36 = and i64 %35, -32
  %37 = inttoptr i64 %36 to %struct.hpt_iop_srb*
  store %struct.hpt_iop_srb* %37, %struct.hpt_iop_srb** %11, align 8
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %126, %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @HPT_SRB_MAX_QUEUE_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %129

42:                                               ; preds = %38
  %43 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %11, align 8
  %44 = bitcast %struct.hpt_iop_srb* %43 to i8*
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @HPT_SRB_MAX_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = bitcast i8* %49 to %struct.hpt_iop_srb*
  store %struct.hpt_iop_srb* %50, %struct.hpt_iop_srb** %12, align 8
  %51 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %52 = ptrtoint %struct.hpt_iop_srb* %51 to i64
  %53 = and i64 %52, 31
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %42
  %56 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %57 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %60 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %59, i32 0, i32 5
  %61 = call i64 @bus_dmamap_create(i32 %58, i32 0, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %65 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %129

68:                                               ; preds = %55
  %69 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %70 = call i32 @bzero(%struct.hpt_iop_srb* %69, i32 32)
  %71 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %72 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %73 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %72, i32 0, i32 4
  store %struct.hpt_iop_hba* %71, %struct.hpt_iop_hba** %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %76 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %78 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 5
  %84 = sext i32 %83 to i64
  %85 = trunc i64 %84 to i32
  %86 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %87 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @IOPMU_MAX_MEM_SUPPORT_MASK_32G, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i32, i32* @HPT_SRB_FLAG_HIGH_MEM_ACESS, align 4
  %94 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %95 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %81
  br label %101

97:                                               ; preds = %68
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %100 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %96
  %102 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %103 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %102, i32 0, i32 2
  %104 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %105 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %104, i32 0, i32 3
  %106 = call i32 @callout_init_mtx(i32* %103, i32* %105, i32 0)
  %107 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %108 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %109 = call i32 @hptiop_free_srb(%struct.hpt_iop_hba* %107, %struct.hpt_iop_srb* %108)
  %110 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %12, align 8
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %112 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %111, i32 0, i32 2
  %113 = load %struct.hpt_iop_srb**, %struct.hpt_iop_srb*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %113, i64 %115
  store %struct.hpt_iop_srb* %110, %struct.hpt_iop_srb** %116, align 8
  %117 = load i32, i32* @HPT_SRB_MAX_SIZE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %125

120:                                              ; preds = %42
  %121 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %122 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %129

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %38

129:                                              ; preds = %26, %63, %120, %38
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bzero(%struct.hpt_iop_srb*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @hptiop_free_srb(%struct.hpt_iop_hba*, %struct.hpt_iop_srb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
