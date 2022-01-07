; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_transient_map_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_transient_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i64, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@unmapped_buf_allowed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unmapped disabled\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Bio too short %p\00", align 1
@transient_maps = common dso_local global i32 0, align 4
@transient_arena = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@transient_map_retries = common dso_local global i64 0, align 8
@KTR_GEOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"g_down cannot map bp %p provider %s\00", align 1
@transient_map_hard_failures = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"g_down retrymap bp %p provider %s r %d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g_d_tra\00", align 1
@hz = common dso_local global i32 0, align 4
@transient_map_soft_failures = common dso_local global i32 0, align 4
@inflight_transient_maps = common dso_local global i32 0, align 4
@BIO_TRANSIENT_MAPPING = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @g_io_transient_map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_io_transient_map_bio(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %7 = load i32, i32* @unmapped_buf_allowed, align 4
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = call i64 @round_page(i64 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = sdiv i64 %17, %18
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.bio*, %struct.bio** %3, align 8
  %26 = bitcast %struct.bio* %25 to i8*
  %27 = call i32 @KASSERT(i32 %24, i8* %26)
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %28 = call i32 @atomic_add_long(i32* @transient_maps, i32 1)
  br label %29

29:                                               ; preds = %55, %1
  %30 = load i32, i32* @transient_arena, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @M_BESTFIT, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @vmem_alloc(i32 %30, i64 %31, i32 %34, i64* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %29
  %38 = load i64, i64* @transient_map_retries, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @transient_map_retries, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* @KTR_GEOM, align 4
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CTR2(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.bio* %46, i32 %51)
  %53 = call i32 @atomic_add_int(i32* @transient_map_hard_failures, i32 1)
  %54 = load i32, i32* @EDEADLK, align 4
  store i32 %54, i32* %2, align 4
  br label %99

55:                                               ; preds = %40, %37
  %56 = load i32, i32* @KTR_GEOM, align 4
  %57 = load %struct.bio*, %struct.bio** %3, align 8
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @CTR3(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.bio* %57, i32 %62, i64 %63)
  %65 = load i32, i32* @hz, align 4
  %66 = sdiv i32 %65, 10
  %67 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  %70 = call i32 @atomic_add_int(i32* @transient_map_soft_failures, i32 1)
  br label %29

71:                                               ; preds = %29
  %72 = call i32 @atomic_add_int(i32* @inflight_transient_maps, i32 1)
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.bio*, %struct.bio** %3, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @OFF_TO_IDX(i64 %77)
  %79 = call i32 @pmap_qenter(i64 %73, i32 %76, i32 %78)
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.bio*, %struct.bio** %3, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.bio*, %struct.bio** %3, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @BIO_TRANSIENT_MAPPING, align 4
  %88 = load %struct.bio*, %struct.bio** %3, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @BIO_UNMAPPED, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.bio*, %struct.bio** %3, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %71, %44
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i64 @vmem_alloc(i32, i64, i32, i64*) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.bio*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.bio*, i32, i64) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @pmap_qenter(i64, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
