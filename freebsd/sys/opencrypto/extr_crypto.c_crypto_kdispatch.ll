; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kdispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_kdispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cryptkop = type { i32 }

@cryptostats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ERESTART = common dso_local global i32 0, align 4
@crp_kq = common dso_local global i32 0, align 4
@krp_next = common dso_local global i32 0, align 4
@crp_sleep = common dso_local global i64 0, align 8
@crp_q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_kdispatch(%struct.cryptkop* %0) #0 {
  %2 = alloca %struct.cryptkop*, align 8
  %3 = alloca i32, align 4
  store %struct.cryptkop* %0, %struct.cryptkop** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  %6 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %7 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %8 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @crypto_kinvoke(%struct.cryptkop* %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ERESTART, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = call i32 (...) @CRYPTO_Q_LOCK()
  %16 = load %struct.cryptkop*, %struct.cryptkop** %2, align 8
  %17 = load i32, i32* @krp_next, align 4
  %18 = call i32 @TAILQ_INSERT_TAIL(i32* @crp_kq, %struct.cryptkop* %16, i32 %17)
  %19 = load i64, i64* @crp_sleep, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @wakeup_one(i32* @crp_q)
  br label %23

23:                                               ; preds = %21, %14
  %24 = call i32 (...) @CRYPTO_Q_UNLOCK()
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @crypto_kinvoke(%struct.cryptkop*, i32) #1

declare dso_local i32 @CRYPTO_Q_LOCK(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cryptkop*, i32) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @CRYPTO_Q_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
