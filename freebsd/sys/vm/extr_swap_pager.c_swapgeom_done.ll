; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapgeom_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.swdevt*, i64, i64, i32, %struct.g_consumer*, %struct.buf* }
%struct.swdevt = type { i32 }
%struct.g_consumer = type { i32 }
%struct.buf = type { i32*, i64, i64, i64, i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@sw_dev_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @swapgeom_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapgeom_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.swdevt*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 5
  %8 = load %struct.buf*, %struct.buf** %7, align 8
  store %struct.buf* %8, %struct.buf** %4, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 4
  %11 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  store %struct.g_consumer* %11, %struct.g_consumer** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @BIO_ERROR, align 4
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.buf*, %struct.buf** %4, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.buf*, %struct.buf** %4, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.buf*, %struct.buf** %4, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.buf*, %struct.buf** %4, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.buf*, %struct.buf** %4, align 8
  %45 = call i32 @bufdone(%struct.buf* %44)
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load %struct.swdevt*, %struct.swdevt** %47, align 8
  store %struct.swdevt* %48, %struct.swdevt** %3, align 8
  %49 = call i32 @mtx_lock(i32* @sw_dev_mtx)
  %50 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %51 = load %struct.swdevt*, %struct.swdevt** %3, align 8
  %52 = call i32 @swapgeom_release(%struct.g_consumer* %50, %struct.swdevt* %51)
  %53 = call i32 @mtx_unlock(i32* @sw_dev_mtx)
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = call i32 @g_destroy_bio(%struct.bio* %54)
  ret void
}

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @swapgeom_release(%struct.g_consumer*, %struct.swdevt*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
