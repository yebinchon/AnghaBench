; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_aesu_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_aesu_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_session = type { i32 }
%struct.cryptoini = type { i64 }

@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_session*, %struct.cryptoini*, %struct.cryptoini*)* @sec_aesu_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_aesu_newsession(%struct.sec_softc* %0, %struct.sec_session* %1, %struct.cryptoini* %2, %struct.cryptoini* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sec_softc*, align 8
  %7 = alloca %struct.sec_session*, align 8
  %8 = alloca %struct.cryptoini*, align 8
  %9 = alloca %struct.cryptoini*, align 8
  store %struct.sec_softc* %0, %struct.sec_softc** %6, align 8
  store %struct.sec_session* %1, %struct.sec_session** %7, align 8
  store %struct.cryptoini* %2, %struct.cryptoini** %8, align 8
  store %struct.cryptoini* %3, %struct.cryptoini** %9, align 8
  %10 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %11 = icmp eq %struct.cryptoini* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %24

13:                                               ; preds = %4
  %14 = load %struct.cryptoini*, %struct.cryptoini** %8, align 8
  %15 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @AES_BLOCK_LEN, align 4
  %22 = load %struct.sec_session*, %struct.sec_session** %7, align 8
  %23 = getelementptr inbounds %struct.sec_session, %struct.sec_session* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %19, %12
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
