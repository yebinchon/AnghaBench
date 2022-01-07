; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cryptocap = type { i64, i32 }
%struct.cryptkop = type { i64, i64 }
%struct.crypto_ret_worker = type { i32, i32 }

@cryptostats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@crypto_drivers_num = common dso_local global i64 0, align 8
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"cc_koperations == 0\00", align 1
@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4
@krp_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_kdone(%struct.cryptkop* %0) #0 {
  %2 = alloca %struct.cryptkop*, align 8
  %3 = alloca %struct.crypto_ret_worker*, align 8
  %4 = alloca %struct.cryptocap*, align 8
  store %struct.cryptkop* %0, %struct.cryptkop** %2, align 8
  %5 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %6 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  %14 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %15 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @crypto_drivers_num, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %12
  %20 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %21 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %22 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %20, i64 %23
  store %struct.cryptocap* %24, %struct.cryptocap** %4, align 8
  %25 = load %struct.cryptocap*, %struct.cryptocap** %4, align 8
  %26 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cryptocap*, %struct.cryptocap** %4, align 8
  %32 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.cryptocap*, %struct.cryptocap** %4, align 8
  %36 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %19
  %42 = load %struct.cryptocap*, %struct.cryptocap** %4, align 8
  %43 = call i32 @crypto_remove(%struct.cryptocap* %42)
  br label %44

44:                                               ; preds = %41, %19
  br label %45

45:                                               ; preds = %44, %12
  %46 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %47 = call %struct.crypto_ret_worker* @CRYPTO_RETW(i32 0)
  store %struct.crypto_ret_worker* %47, %struct.crypto_ret_worker** %3, align 8
  %48 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %3, align 8
  %49 = call i32 @CRYPTO_RETW_LOCK(%struct.crypto_ret_worker* %48)
  %50 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %3, align 8
  %51 = call i64 @CRYPTO_RETW_EMPTY(%struct.crypto_ret_worker* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %3, align 8
  %55 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %54, i32 0, i32 1
  %56 = call i32 @wakeup_one(i32* %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %3, align 8
  %59 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %58, i32 0, i32 0
  %60 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %61 = load i32, i32* @krp_next, align 4
  %62 = call i32 @TAILQ_INSERT_TAIL(i32* %59, %struct.cryptkop* %60, i32 %61)
  %63 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %3, align 8
  %64 = call i32 @CRYPTO_RETW_UNLOCK(%struct.crypto_ret_worker* %63)
  ret void
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @crypto_remove(%struct.cryptocap*) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

declare dso_local %struct.crypto_ret_worker* @CRYPTO_RETW(i32) #1

declare dso_local i32 @CRYPTO_RETW_LOCK(%struct.crypto_ret_worker*) #1

declare dso_local i64 @CRYPTO_RETW_EMPTY(%struct.crypto_ret_worker*) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cryptkop*, i32) #1

declare dso_local i32 @CRYPTO_RETW_UNLOCK(%struct.crypto_ret_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
