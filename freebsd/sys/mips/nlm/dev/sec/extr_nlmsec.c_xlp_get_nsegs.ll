; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_get_nsegs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_get_nsegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i32, i32, i64 }
%struct.mbuf = type { %struct.mbuf*, i32 }
%struct.uio = type { i32, i64 }
%struct.iovec = type { i32 }

@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*, i32*)* @xlp_get_nsegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_get_nsegs(%struct.cryptop* %0, i32* %1) #0 {
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %10 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  %16 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %17 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mbuf*
  store %struct.mbuf* %19, %struct.mbuf** %5, align 8
  br label %20

20:                                               ; preds = %23, %15
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NLM_CRYPTO_NUM_SEGS_REQD(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  store %struct.mbuf* %33, %struct.mbuf** %5, align 8
  br label %20

34:                                               ; preds = %20
  br label %77

35:                                               ; preds = %2
  %36 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %37 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CRYPTO_F_IOV, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  store %struct.uio* null, %struct.uio** %6, align 8
  store %struct.iovec* null, %struct.iovec** %7, align 8
  store i32 0, i32* %8, align 4
  %43 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %44 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.uio*
  store %struct.uio* %46, %struct.uio** %6, align 8
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.iovec*
  store %struct.iovec* %50, %struct.iovec** %7, align 8
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %57, %42
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.iovec*, %struct.iovec** %7, align 8
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NLM_CRYPTO_NUM_SEGS_REQD(i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = load %struct.iovec*, %struct.iovec** %7, align 8
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 1
  store %struct.iovec* %68, %struct.iovec** %7, align 8
  br label %54

69:                                               ; preds = %54
  br label %76

70:                                               ; preds = %35
  %71 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %72 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @NLM_CRYPTO_NUM_SEGS_REQD(i32 %73)
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %69
  br label %77

77:                                               ; preds = %76, %34
  ret i32 0
}

declare dso_local i32 @NLM_CRYPTO_NUM_SEGS_REQD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
