; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_setup_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_setup_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@tsec_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_setup_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_setup_multicast(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %6 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false)
  %7 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %11 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TSEC_REG_GADDR(i32 %24)
  %26 = call i32 @TSEC_WRITE(%struct.tsec_softc* %23, i32 %25, i32 -1)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %19

30:                                               ; preds = %19
  br label %51

31:                                               ; preds = %1
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load i32, i32* @tsec_hash_maddr, align 4
  %34 = bitcast [8 x i32]* %3 to i32**
  %35 = call i32 @if_foreach_llmaddr(%struct.ifnet* %32, i32 %33, i32** %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %48, %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @TSEC_REG_GADDR(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TSEC_WRITE(%struct.tsec_softc* %40, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %36

51:                                               ; preds = %30, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #2

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #2

declare dso_local i32 @TSEC_REG_GADDR(i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
