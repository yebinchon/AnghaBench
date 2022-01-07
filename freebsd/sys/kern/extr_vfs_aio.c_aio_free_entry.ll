; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i64, i32, i32, i32 }
%struct.kaiocb = type { i32, i64, i32, i64, i32, i32, i32, i32, %struct.kaiocb*, %struct.proc* }
%struct.aioliojob = type { i32, i64, i32, i64, i32, i32, i32, i32, %struct.aioliojob*, %struct.proc* }

@curproc = common dso_local global %struct.proc* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@KAIOCB_FINISHED = common dso_local global i32 0, align 4
@num_queue_count = common dso_local global i32 0, align 4
@plist = common dso_local global i32 0, align 4
@allist = common dso_local global i32 0, align 4
@lioj_list = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@aiolio_zone = common dso_local global i32 0, align 4
@aiocb_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaiocb*)* @aio_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_free_entry(%struct.kaiocb* %0) #0 {
  %2 = alloca %struct.kaiocb*, align 8
  %3 = alloca %struct.kaioinfo*, align 8
  %4 = alloca %struct.aioliojob*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.kaiocb* %0, %struct.kaiocb** %2, align 8
  %6 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %7 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %6, i32 0, i32 9
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.proc*, %struct.proc** @curproc, align 8
  %10 = load %struct.proc*, %struct.proc** %5, align 8
  %11 = icmp eq %struct.proc* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.proc*, %struct.proc** %5, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load %struct.kaioinfo*, %struct.kaioinfo** %15, align 8
  store %struct.kaioinfo* %16, %struct.kaioinfo** %3, align 8
  %17 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %18 = icmp ne %struct.kaioinfo* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @AIO_LOCK_ASSERT(%struct.kaioinfo* %21, i32 %22)
  %24 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %25 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @KAIOCB_FINISHED, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @MPASS(i32 %28)
  %30 = call i32 @atomic_subtract_int(i32* @num_queue_count, i32 1)
  %31 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %32 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %36 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %42 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %41, i32 0, i32 3
  %43 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %44 = load i32, i32* @plist, align 4
  %45 = call i32 @TAILQ_REMOVE(i32* %42, %struct.kaiocb* %43, i32 %44)
  %46 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %47 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %46, i32 0, i32 2
  %48 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %49 = load i32, i32* @allist, align 4
  %50 = call i32 @TAILQ_REMOVE(i32* %47, %struct.kaiocb* %48, i32 %49)
  %51 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %52 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %51, i32 0, i32 8
  %53 = load %struct.kaiocb*, %struct.kaiocb** %52, align 8
  %54 = bitcast %struct.kaiocb* %53 to %struct.aioliojob*
  store %struct.aioliojob* %54, %struct.aioliojob** %4, align 8
  %55 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %56 = icmp ne %struct.aioliojob* %55, null
  br i1 %56, label %57, label %93

57:                                               ; preds = %1
  %58 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %59 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %63 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %67 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %57
  %71 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %72 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %71, i32 0, i32 1
  %73 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %74 = bitcast %struct.aioliojob* %73 to %struct.kaiocb*
  %75 = load i32, i32* @lioj_list, align 4
  %76 = call i32 @TAILQ_REMOVE(i32* %72, %struct.kaiocb* %74, i32 %75)
  %77 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %78 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %77, i32 0, i32 5
  %79 = load i32, i32* @curthread, align 4
  %80 = call i32 @knlist_delete(i32* %78, i32 %79, i32 1)
  %81 = load %struct.proc*, %struct.proc** %5, align 8
  %82 = call i32 @PROC_LOCK(%struct.proc* %81)
  %83 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %84 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %83, i32 0, i32 6
  %85 = call i32 @sigqueue_take(i32* %84)
  %86 = load %struct.proc*, %struct.proc** %5, align 8
  %87 = call i32 @PROC_UNLOCK(%struct.proc* %86)
  %88 = load i32, i32* @aiolio_zone, align 4
  %89 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %90 = bitcast %struct.aioliojob* %89 to %struct.kaiocb*
  %91 = call i32 @uma_zfree(i32 %88, %struct.kaiocb* %90)
  br label %92

92:                                               ; preds = %70, %57
  br label %93

93:                                               ; preds = %92, %1
  %94 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %95 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %94, i32 0, i32 5
  %96 = load i32, i32* @curthread, align 4
  %97 = call i32 @knlist_delete(i32* %95, i32 %96, i32 1)
  %98 = load %struct.proc*, %struct.proc** %5, align 8
  %99 = call i32 @PROC_LOCK(%struct.proc* %98)
  %100 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %101 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %100, i32 0, i32 4
  %102 = call i32 @sigqueue_take(i32* %101)
  %103 = load %struct.proc*, %struct.proc** %5, align 8
  %104 = call i32 @PROC_UNLOCK(%struct.proc* %103)
  %105 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %106 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %105)
  %107 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %108 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %93
  %112 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %113 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @curthread, align 4
  %116 = call i32 @fdrop(i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %93
  %118 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %119 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @crfree(i32 %120)
  %122 = load i32, i32* @aiocb_zone, align 4
  %123 = load %struct.kaiocb*, %struct.kaiocb** %2, align 8
  %124 = call i32 @uma_zfree(i32 %122, %struct.kaiocb* %123)
  %125 = load %struct.kaioinfo*, %struct.kaioinfo** %3, align 8
  %126 = call i32 @AIO_LOCK(%struct.kaioinfo* %125)
  ret i32 0
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @AIO_LOCK_ASSERT(%struct.kaioinfo*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kaiocb*, i32) #1

declare dso_local i32 @knlist_delete(i32*, i32, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_take(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @uma_zfree(i32, %struct.kaiocb*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @fdrop(i64, i32) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
