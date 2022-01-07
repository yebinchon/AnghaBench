; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@crypto_drivers_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"crypto_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc**, i8*)* @crypto_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_terminate(%struct.proc** %0, i8* %1) #0 {
  %3 = alloca %struct.proc**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.proc** %0, %struct.proc*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @crypto_drivers_mtx, i32 %6)
  %8 = load %struct.proc**, %struct.proc*** %3, align 8
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %5, align 8
  %10 = load %struct.proc**, %struct.proc*** %3, align 8
  store %struct.proc* null, %struct.proc** %10, align 8
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = icmp ne %struct.proc* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @wakeup_one(i8* %14)
  %16 = load %struct.proc*, %struct.proc** %5, align 8
  %17 = call i32 @PROC_LOCK(%struct.proc* %16)
  %18 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %19 = load %struct.proc*, %struct.proc** %5, align 8
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load i32, i32* @PWAIT, align 4
  %23 = call i32 @msleep(%struct.proc* %19, i32* %21, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = call i32 @PROC_UNLOCK(%struct.proc* %24)
  %26 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  br label %27

27:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @wakeup_one(i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

declare dso_local i32 @msleep(%struct.proc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
