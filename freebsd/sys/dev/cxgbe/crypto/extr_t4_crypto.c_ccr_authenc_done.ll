; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_authenc_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_authenc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32 }
%struct.ccr_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cryptop = type { i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32 }
%struct.cpl_fw6_pld = type { i32* }

@EBADMSG = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*, %struct.cpl_fw6_pld*, i32)* @ccr_authenc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_authenc_done(%struct.ccr_softc* %0, %struct.ccr_session* %1, %struct.cryptop* %2, %struct.cpl_fw6_pld* %3, i32 %4) #0 {
  %6 = alloca %struct.ccr_softc*, align 8
  %7 = alloca %struct.ccr_session*, align 8
  %8 = alloca %struct.cryptop*, align 8
  %9 = alloca %struct.cpl_fw6_pld*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cryptodesc*, align 8
  store %struct.ccr_softc* %0, %struct.ccr_softc** %6, align 8
  store %struct.ccr_session* %1, %struct.ccr_session** %7, align 8
  store %struct.cryptop* %2, %struct.cryptop** %8, align 8
  store %struct.cpl_fw6_pld* %3, %struct.cpl_fw6_pld** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %13 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %12, i32 0, i32 2
  %14 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  store %struct.cryptodesc* %14, %struct.cryptodesc** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @EBADMSG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %5
  %19 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %9, align 8
  %20 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be64toh(i32 %23)
  %25 = call i32 @CHK_PAD_ERR_BIT(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %18
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %27
  %35 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %36 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %39 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %42 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ccr_session*, %struct.ccr_session** %7, align 8
  %45 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %9, align 8
  %49 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %48, i64 1
  %50 = ptrtoint %struct.cpl_fw6_pld* %49 to i32
  %51 = call i32 @crypto_copyback(i32 %37, i32 %40, i32 %43, i32 %47, i32 %50)
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %34, %27, %18, %5
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @CHK_PAD_ERR_BIT(i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
