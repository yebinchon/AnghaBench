; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_batch_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_batch_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32 }

@crp_q = common dso_local global i32 0, align 4
@crp_next = common dso_local global i32 0, align 4
@crp_sleep = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_batch_enqueue(%struct.cryptop* %0) #0 {
  %2 = alloca %struct.cryptop*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %2, align 8
  %3 = call i32 (...) @CRYPTO_Q_LOCK()
  %4 = load %struct.cryptop*, %struct.cryptop** %2, align 8
  %5 = load i32, i32* @crp_next, align 4
  %6 = call i32 @TAILQ_INSERT_TAIL(i32* @crp_q, %struct.cryptop* %4, i32 %5)
  %7 = load i64, i64* @crp_sleep, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @wakeup_one(i32* @crp_q)
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 (...) @CRYPTO_Q_UNLOCK()
  ret void
}

declare dso_local i32 @CRYPTO_Q_LOCK(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cryptop*, i32) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @CRYPTO_Q_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
