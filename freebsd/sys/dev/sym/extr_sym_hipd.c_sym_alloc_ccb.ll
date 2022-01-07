; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_alloc_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_alloc_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_17__, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_19__**, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@SYM_CONF_MAX_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"CCB\00", align 1
@SYM_SNS_BBUF_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SNS_BBUF\00", align 1
@idle = common dso_local global i32 0, align 4
@bad_i_t_l = common dso_local global i32 0, align 4
@msgin = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*)* @sym_alloc_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @sym_alloc_ccb(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  %6 = load i32, i32* @MA_NOTOWNED, align 4
  %7 = call i32 @SYM_LOCK_ASSERT(i32 %6)
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SYM_CONF_MAX_START, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %120

14:                                               ; preds = %1
  %15 = call i8* @sym_calloc_dma(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = icmp ne %struct.TYPE_19__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %120

20:                                               ; preds = %14
  %21 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %22 = call i8* @sym_calloc_dma(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = bitcast i8* %22 to %struct.TYPE_19__*
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = icmp ne %struct.TYPE_19__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %106

31:                                               ; preds = %20
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 6
  %37 = call i64 @bus_dmamap_create(i32 %34, i32 0, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %106

40:                                               ; preds = %31
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 5
  %47 = call i32 @callout_init(i32* %46, i32 1)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = call i32 @vtobus(%struct.TYPE_19__* %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @CCB_HASH_CODE(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %58, i64 %60
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %68, i64 %70
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = load i32, i32* @idle, align 4
  %74 = call i32 @SCRIPTA_BA(%struct.TYPE_18__* %72, i32 %73)
  %75 = call i8* @cpu_to_scr(i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = load i32, i32* @bad_i_t_l, align 4
  %83 = call i32 @SCRIPTB_BA(%struct.TYPE_18__* %81, i32 %82)
  %84 = call i8* @cpu_to_scr(i32 %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i8* %84, i8** %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = load i32*, i32** @msgin, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @HCB_BA(%struct.TYPE_18__* %90, i32 %93)
  %95 = call i8* @cpu_to_scr(i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = call i32 @sym_insque_head(i32* %101, i32* %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %2, align 8
  br label %120

106:                                              ; preds = %39, %30
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = icmp ne %struct.TYPE_19__* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %116 = call i32 @sym_mfree_dma(%struct.TYPE_19__* %114, i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = call i32 @sym_mfree_dma(%struct.TYPE_19__* %118, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %120

120:                                              ; preds = %117, %40, %19, %13
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %121
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i8* @sym_calloc_dma(i32, i8*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @vtobus(%struct.TYPE_19__*) #1

declare dso_local i32 @CCB_HASH_CODE(i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @HCB_BA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

declare dso_local i32 @sym_mfree_dma(%struct.TYPE_19__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
