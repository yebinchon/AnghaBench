; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.qlnxr_mr = type { %struct.TYPE_2__, %struct.ib_mr, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_pd = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unsupported access flags received for dma mr\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"kzalloc(mr) failed %d\0A\00", align 1
@QLNXR_MR_DMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ecore_rdma_alloc_tid failed %d\0A\00", align 1
@ECORE_RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"ecore_rdma_register_tid failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lkey = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qlnxr_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnxr_mr*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %13)
  store %struct.qlnxr_dev* %14, %struct.qlnxr_dev** %7, align 8
  %15 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %16 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %15)
  store %struct.qlnxr_pd* %16, %struct.qlnxr_pd** %8, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.qlnxr_mr* @kzalloc(i32 52, i32 %30)
  store %struct.qlnxr_mr* %31, %struct.qlnxr_mr** %6, align 8
  %32 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %33 = icmp ne %struct.qlnxr_mr* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %188

40:                                               ; preds = %29
  %41 = load i32, i32* @QLNXR_MR_DMA, align 4
  %42 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %43 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %45 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %48 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @ecore_rdma_alloc_tid(i32 %46, i32* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %185

57:                                               ; preds = %40
  %58 = load i32, i32* @ECORE_RDMA_TID_REGISTERED_MR, align 4
  %59 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %60 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 9
  store i32 %58, i32* %61, align 4
  %62 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %63 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %66 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 8
  store i32 %64, i32* %67, align 4
  %68 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %69 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %78 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %87 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %96 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %105 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %108 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 6
  store i32 1, i32* %109, align 4
  %110 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %111 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %114 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %113, i32 0, i32 0
  %115 = call i32 @ecore_rdma_register_tid(i32 %112, %struct.TYPE_2__* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %57
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %176

122:                                              ; preds = %57
  %123 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %124 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %129 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %127, %131
  %133 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %134 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %137 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %122
  %142 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %143 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %149 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %147, %141, %122
  %154 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %155 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %160 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %158, %162
  %164 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %165 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  br label %167

167:                                              ; preds = %153, %147
  %168 = load i32*, i32** %10, align 8
  %169 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %170 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %175 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %174, i32 0, i32 1
  store %struct.ib_mr* %175, %struct.ib_mr** %3, align 8
  br label %194

176:                                              ; preds = %118
  %177 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %178 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %181 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ecore_rdma_free_tid(i32 %179, i32 %183)
  br label %185

185:                                              ; preds = %176, %53
  %186 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %6, align 8
  %187 = call i32 @kfree(%struct.qlnxr_mr* %186)
  br label %188

188:                                              ; preds = %185, %34
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %9, align 4
  %193 = call %struct.ib_mr* @ERR_PTR(i32 %192)
  store %struct.ib_mr* %193, %struct.ib_mr** %3, align 8
  br label %194

194:                                              ; preds = %188, %167
  %195 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %195
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @ecore_rdma_alloc_tid(i32, i32*) #1

declare dso_local i32 @ecore_rdma_register_tid(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ecore_rdma_free_tid(i32, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_mr*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
