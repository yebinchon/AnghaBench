; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_crypto_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_crypto_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32, i64 }
%struct.des1_state = type { i32, i32 }

@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CRYPTO_F_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @des1_crypto_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des1_crypto_cb(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.des1_state*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %6 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %7 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.des1_state*
  store %struct.des1_state* %9, %struct.des1_state** %5, align 8
  %10 = load %struct.des1_state*, %struct.des1_state** %5, align 8
  %11 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_ses2caps(i32 %12)
  %14 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %20 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %27 = call i32 @crypto_dispatch(%struct.cryptop* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.des1_state*, %struct.des1_state** %5, align 8
  %30 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %29, i32 0, i32 0
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %36 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRYPTO_F_DONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %28
  %42 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %43 = call i32 @wakeup(%struct.cryptop* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.des1_state*, %struct.des1_state** %5, align 8
  %46 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @crypto_ses2caps(i32) #1

declare dso_local i32 @crypto_dispatch(%struct.cryptop*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.cryptop*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
