; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_g_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_spa* }
%struct.g_spa = type { i32, i32, i32, i32 }

@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @nvdimm_spa_g_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvdimm_spa_g_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_spa*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.g_spa*, %struct.g_spa** %9, align 8
  store %struct.g_spa* %10, %struct.g_spa** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BIO_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BIO_WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16, %1
  %23 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %24 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %23, i32 0, i32 2
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %27 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = call i32 @devstat_start_transaction_bio(i32 %28, %struct.bio* %29)
  %31 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %32 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %31, i32 0, i32 2
  %33 = call i32 @mtx_unlock(i32* %32)
  br label %34

34:                                               ; preds = %22, %16
  %35 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %36 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %39 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = call i32 @bioq_disksort(i32* %39, %struct.bio* %40)
  %42 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %43 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %42, i32 0, i32 1
  %44 = call i32 @wakeup(i32* %43)
  %45 = load %struct.g_spa*, %struct.g_spa** %3, align 8
  %46 = getelementptr inbounds %struct.g_spa, %struct.g_spa* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devstat_start_transaction_bio(i32, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
