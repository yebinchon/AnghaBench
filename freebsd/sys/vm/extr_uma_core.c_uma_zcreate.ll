; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zcreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_zctor_args = type { i8*, i64, i32, i32, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"invalid zone alignment %d for \22%s\22\00", align 1
@booted = common dso_local global i64 0, align 8
@BOOT_BUCKETS = common dso_local global i64 0, align 8
@uma_reclaim_lock = common dso_local global i32 0, align 4
@zones = common dso_local global i32 0, align 4
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@UMA_ZONE_NUMA = common dso_local global i32 0, align 4
@UMA_ZONE_ZINIT = common dso_local global i32 0, align 4
@trash_ctor = common dso_local global i32* null, align 8
@trash_dtor = common dso_local global i32* null, align 8
@trash_fini = common dso_local global i32* null, align 8
@trash_init = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uma_zcreate(i8* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.uma_zctor_args, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %15, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @powerof2(i32 %21)
  %23 = load i32, i32* %15, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @KASSERT(i32 %22, i8* %24)
  %26 = call i32 @memset(%struct.uma_zctor_args* %17, i32 0, i32 64)
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 8
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 7
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 6
  store i32* %35, i32** %36, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 5
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %17, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load i64, i64* @booted, align 8
  %45 = load i64, i64* @BOOT_BUCKETS, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %50

48:                                               ; preds = %8
  %49 = call i32 @sx_slock(i32* @uma_reclaim_lock)
  store i32 1, i32* %19, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* @zones, align 4
  %52 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i32 @zone_alloc_item(i32 %51, %struct.uma_zctor_args* %17, i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @sx_sunlock(i32* @uma_reclaim_lock)
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %18, align 4
  ret i32 %60
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @memset(%struct.uma_zctor_args*, i32, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @zone_alloc_item(i32, %struct.uma_zctor_args*, i32, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
