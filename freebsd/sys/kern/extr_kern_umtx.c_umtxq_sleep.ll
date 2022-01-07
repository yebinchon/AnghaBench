; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.umtx_q = type { i32, i32 }
%struct.abs_timeout = type { i64 }
%struct.umtxq_chain = type { i32 }

@rtc_generation = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@UQF_UMTXQ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umtx_q*, i8*, %struct.abs_timeout*)* @umtxq_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtxq_sleep(%struct.umtx_q* %0, i8* %1, %struct.abs_timeout* %2) #0 {
  %4 = alloca %struct.umtx_q*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.abs_timeout*, align 8
  %7 = alloca %struct.umtxq_chain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.umtx_q* %0, %struct.umtx_q** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.abs_timeout* %2, %struct.abs_timeout** %6, align 8
  %10 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %11 = icmp ne %struct.abs_timeout* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %14 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i8* @atomic_load_acq_int(i32* @rtc_generation)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %22 = call i32 @abs_timeout_update(%struct.abs_timeout* %21)
  br label %23

23:                                               ; preds = %17, %12, %3
  %24 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %25 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %24, i32 0, i32 1
  %26 = call %struct.umtxq_chain* @umtxq_getchain(i32* %25)
  store %struct.umtxq_chain* %26, %struct.umtxq_chain** %7, align 8
  %27 = load %struct.umtxq_chain*, %struct.umtxq_chain** %7, align 8
  %28 = call i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain* %27)
  br label %29

29:                                               ; preds = %85, %23
  %30 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %31 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UQF_UMTXQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %89

37:                                               ; preds = %29
  %38 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %39 = icmp ne %struct.abs_timeout* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %42 = call i32 @abs_timeout_gethz(%struct.abs_timeout* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %46, i32* %8, align 4
  br label %89

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %51 = load %struct.umtxq_chain*, %struct.umtxq_chain** %7, align 8
  %52 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %51, i32 0, i32 0
  %53 = load i32, i32* @PCATCH, align 4
  %54 = load i32, i32* @PDROP, align 4
  %55 = or i32 %53, %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @msleep(%struct.umtx_q* %50, i32* %52, i32 %55, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EINTR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ERESTART, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %49
  %67 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %68 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %67, i32 0, i32 1
  %69 = call i32 @umtxq_lock(i32* %68)
  br label %89

70:                                               ; preds = %62
  %71 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %72 = icmp ne %struct.abs_timeout* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %75 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = call i8* @atomic_load_acq_int(i32* @rtc_generation)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.abs_timeout*, %struct.abs_timeout** %6, align 8
  %84 = call i32 @abs_timeout_update(%struct.abs_timeout* %83)
  br label %85

85:                                               ; preds = %82, %70
  %86 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %87 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %86, i32 0, i32 1
  %88 = call i32 @umtxq_lock(i32* %87)
  br label %29

89:                                               ; preds = %66, %45, %36
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i8* null, i8** %91, align 8
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i8* @atomic_load_acq_int(i32*) #1

declare dso_local i32 @abs_timeout_update(%struct.abs_timeout*) #1

declare dso_local %struct.umtxq_chain* @umtxq_getchain(i32*) #1

declare dso_local i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain*) #1

declare dso_local i32 @abs_timeout_gethz(%struct.abs_timeout*) #1

declare dso_local i32 @msleep(%struct.umtx_q*, i32*, i32, i8*, i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
