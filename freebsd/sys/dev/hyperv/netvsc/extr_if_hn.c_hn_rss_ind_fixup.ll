; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_ind_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_ind_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, %struct.ndis_rssprm_toeplitz }
%struct.ndis_rssprm_toeplitz = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"invalid # of channels %d\00", align 1
@NDIS_HASH_INDCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RSS indirect table %d fixup: %u -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_rss_ind_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rss_ind_fixup(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.ndis_rssprm_toeplitz*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %6 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 2
  store %struct.ndis_rssprm_toeplitz* %7, %struct.ndis_rssprm_toeplitz** %3, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %13, i8* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NDIS_HASH_INDCNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load %struct.ndis_rssprm_toeplitz*, %struct.ndis_rssprm_toeplitz** %3, align 8
  %24 = getelementptr inbounds %struct.ndis_rssprm_toeplitz, %struct.ndis_rssprm_toeplitz* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %22
  %33 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %34 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ndis_rssprm_toeplitz*, %struct.ndis_rssprm_toeplitz** %3, align 8
  %38 = getelementptr inbounds %struct.ndis_rssprm_toeplitz, %struct.ndis_rssprm_toeplitz* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @if_printf(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %43, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.ndis_rssprm_toeplitz*, %struct.ndis_rssprm_toeplitz** %3, align 8
  %50 = getelementptr inbounds %struct.ndis_rssprm_toeplitz, %struct.ndis_rssprm_toeplitz* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %32, %22
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %18

59:                                               ; preds = %18
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
