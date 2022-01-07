; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_populate_sglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_populate_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32 }
%struct.cryptop = type { i32, i32, i64 }
%struct.mbuf = type { i32 }
%struct.uio = type { i32 }

@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sglist*, %struct.cryptop*)* @ccr_populate_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_populate_sglist(%struct.sglist* %0, %struct.cryptop* %1) #0 {
  %3 = alloca %struct.sglist*, align 8
  %4 = alloca %struct.cryptop*, align 8
  %5 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %3, align 8
  store %struct.cryptop* %1, %struct.cryptop** %4, align 8
  %6 = load %struct.sglist*, %struct.sglist** %3, align 8
  %7 = call i32 @sglist_reset(%struct.sglist* %6)
  %8 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %9 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.sglist*, %struct.sglist** %3, align 8
  %16 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %17 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mbuf*
  %20 = call i32 @sglist_append_mbuf(%struct.sglist* %15, %struct.mbuf* %19)
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %23 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CRYPTO_F_IOV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.sglist*, %struct.sglist** %3, align 8
  %30 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %31 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.uio*
  %34 = call i32 @sglist_append_uio(%struct.sglist* %29, %struct.uio* %33)
  store i32 %34, i32* %5, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.sglist*, %struct.sglist** %3, align 8
  %37 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %38 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %41 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sglist_append(%struct.sglist* %36, i64 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %35, %28
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @sglist_reset(%struct.sglist*) #1

declare dso_local i32 @sglist_append_mbuf(%struct.sglist*, %struct.mbuf*) #1

declare dso_local i32 @sglist_append_uio(%struct.sglist*, %struct.uio*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
