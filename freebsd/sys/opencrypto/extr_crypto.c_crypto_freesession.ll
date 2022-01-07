; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_freesession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_freesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i8* }

@crypto_drivers_num = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"bogus crypto_session %p hid %u\00", align 1
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@cryptoses_zone = common dso_local global i32 0, align 4
@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_freesession(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.cryptocap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i64 @crypto_ses2hid(%struct.TYPE_6__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @crypto_drivers_num, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %22, i64 %23
  store %struct.cryptocap* %24, %struct.cryptocap** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  %28 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %29 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %32 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %10
  %36 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %37 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %10
  %41 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %42 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = call i32 @CRYPTODEV_FREESESSION(i32 %43, %struct.TYPE_6__* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @explicit_bzero(i8* %46, i64 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @M_CRYPTO_DATA, align 4
  %51 = call i32 @free(i8* %49, i32 %50)
  %52 = load i32, i32* @cryptoses_zone, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = call i32 @uma_zfree(i32 %52, %struct.TYPE_6__* %53)
  %55 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %56 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %63 = call i32 @crypto_remove(%struct.cryptocap* %62)
  br label %64

64:                                               ; preds = %61, %40
  %65 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  br label %66

66:                                               ; preds = %64, %9
  ret void
}

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local i64 @crypto_ses2hid(%struct.TYPE_6__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CRYPTODEV_FREESESSION(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @explicit_bzero(i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @crypto_remove(%struct.cryptocap*) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
