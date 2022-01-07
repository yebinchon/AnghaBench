; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32, i32, i32, i64, i32*, i32, %struct.bio*, i32, i32 }
%struct.bio = type { i64, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.buf*, %struct.swdevt* }
%struct.swdevt = type { i32, %struct.g_consumer* }
%struct.g_consumer = type { i32 }

@sw_dev_mtx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"swap_pager: cannot allocate bio\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@swapgeom_done = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.swdevt*)* @swapgeom_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapgeom_strategy(%struct.buf* %0, %struct.swdevt* %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.swdevt*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store %struct.swdevt* %1, %struct.swdevt** %4, align 8
  %7 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %8 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %9 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %8, i32 0, i32 1
  %10 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  store %struct.g_consumer* %10, %struct.g_consumer** %6, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %12 = icmp eq %struct.g_consumer* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %15 = load i32, i32* @ENXIO, align 4
  %16 = load %struct.buf*, %struct.buf** %3, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BIO_ERROR, align 4
  %19 = load %struct.buf*, %struct.buf** %3, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.buf*, %struct.buf** %3, align 8
  %24 = call i32 @bufdone(%struct.buf* %23)
  br label %134

25:                                               ; preds = %2
  %26 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %27 = call i32 @swapgeom_acquire(%struct.g_consumer* %26)
  %28 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %29 = load %struct.buf*, %struct.buf** %3, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BIO_WRITE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %35, %struct.bio** %5, align 8
  br label %38

36:                                               ; preds = %25
  %37 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %37, %struct.bio** %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = icmp eq %struct.bio* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %43 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %44 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %45 = call i32 @swapgeom_release(%struct.g_consumer* %43, %struct.swdevt* %44)
  %46 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = load %struct.buf*, %struct.buf** %3, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @BIO_ERROR, align 4
  %51 = load %struct.buf*, %struct.buf** %3, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.buf*, %struct.buf** %3, align 8
  %57 = call i32 @bufdone(%struct.buf* %56)
  br label %134

58:                                               ; preds = %38
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = load %struct.buf*, %struct.buf** %3, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 7
  store %struct.bio* %59, %struct.bio** %61, align 8
  %62 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 10
  store %struct.swdevt* %62, %struct.swdevt** %64, align 8
  %65 = load %struct.buf*, %struct.buf** %3, align 8
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 9
  store %struct.buf* %65, %struct.buf** %67, align 8
  %68 = load %struct.buf*, %struct.buf** %3, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio*, %struct.bio** %5, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.buf*, %struct.buf** %3, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %77 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.buf*, %struct.buf** %3, align 8
  %85 = getelementptr inbounds %struct.buf, %struct.buf* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.bio*, %struct.bio** %5, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @swapgeom_done, align 4
  %90 = load %struct.bio*, %struct.bio** %5, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.buf*, %struct.buf** %3, align 8
  %93 = call i32 @buf_mapped(%struct.buf* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %122, label %95

95:                                               ; preds = %58
  %96 = load %struct.buf*, %struct.buf** %3, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.bio*, %struct.bio** %5, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* @unmapped_buf, align 4
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.buf*, %struct.buf** %3, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @PAGE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.buf*, %struct.buf** %3, align 8
  %113 = getelementptr inbounds %struct.buf, %struct.buf* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.bio*, %struct.bio** %5, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @BIO_UNMAPPED, align 4
  %118 = load %struct.bio*, %struct.bio** %5, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %130

122:                                              ; preds = %58
  %123 = load %struct.buf*, %struct.buf** %3, align 8
  %124 = getelementptr inbounds %struct.buf, %struct.buf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bio*, %struct.bio** %5, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.bio*, %struct.bio** %5, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 3
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %122, %95
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %133 = call i32 @g_io_request(%struct.bio* %131, %struct.g_consumer* %132)
  br label %134

134:                                              ; preds = %130, %41, %13
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @swapgeom_acquire(%struct.g_consumer*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @swapgeom_release(%struct.g_consumer*, %struct.swdevt*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
