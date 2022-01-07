; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_9__*, %struct.qlnxr_dev*, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"idr_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sgid_lock\00", align 1
@QLNXR_MAX_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"dev->sb_start = 0x%x\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@ECORE_RDMA_MAX_CNQ_SIZE = common dso_local global i32 0, align 4
@QLNXR_ROCE_MAX_CNQ_SIZE = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@ECORE_ROCE_PROTOCOL_INDEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"qlnxr%d@pci:%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exit -ENOMEM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*)* @qlnxr_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_alloc_resources(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  %8 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %9 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @bzero(%struct.TYPE_9__* %15, i32 %19)
  %21 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %22 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %21, i32 0, i32 8
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 7
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %27)
  %29 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %30 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %29, i32 0, i32 6
  %31 = call i32 @idr_init(i32* %30)
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* @QLNXR_MAX_MSIX, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @bzero(%struct.TYPE_9__* %34, i32 %38)
  %40 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %41 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* @QLNXR_MAX_MSIX, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @bzero(%struct.TYPE_9__* %42, i32 %46)
  %48 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %49 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ecore_rdma_get_sb_id(i32 %50, i32 0)
  %52 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %56 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @u32, align 4
  %60 = load i32, i32* @ECORE_RDMA_MAX_CNQ_SIZE, align 4
  %61 = load i32, i32* @QLNXR_ROCE_MAX_CNQ_SIZE, align 4
  %62 = call i32 @min_t(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %169, %1
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %66 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %172

69:                                               ; preds = %63
  %70 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %71 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %74 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %80 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i32 @qlnx_alloc_mem_sb(%struct.TYPE_8__* %72, %struct.TYPE_9__* %78, i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %175

89:                                               ; preds = %69
  %90 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %91 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %95 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %96 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %99 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 6
  %105 = call i32 @ecore_chain_alloc(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 8, i32* %104, i32* null)
  store i32 %105, i32* %6, align 4
  %106 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %107 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %108 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  store %struct.qlnxr_dev* %106, %struct.qlnxr_dev** %113, align 8
  %114 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %115 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %114, i32 0, i32 3
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %121 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %120, i32 0, i32 2
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %126, align 8
  %127 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %128 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %127, i32 0, i32 3
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @ECORE_ROCE_PROTOCOL_INDEX, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %140 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  store i32* %138, i32** %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %148 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32 %146, i32* %153, align 8
  %154 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %155 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %164 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @sprintf(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %167)
  br label %169

169:                                              ; preds = %89
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %63

172:                                              ; preds = %63
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

175:                                              ; preds = %88
  %176 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %177 = call i32 @qlnxr_free_resources(%struct.qlnxr_dev* %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %172
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i64 @ecore_rdma_get_sb_id(i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @qlnx_alloc_mem_sb(%struct.TYPE_8__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @ecore_chain_alloc(i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @qlnxr_free_resources(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
