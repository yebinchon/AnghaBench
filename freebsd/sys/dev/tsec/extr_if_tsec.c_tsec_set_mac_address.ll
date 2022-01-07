; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"tsec_set_mac_address: (%d <= %zd\00", align 1
@TSEC_REG_MACSTNADDR2 = common dso_local global i32 0, align 4
@TSEC_REG_MACSTNADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_set_mac_address(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %7 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %9 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %8)
  %10 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ule i64 %11, 8
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = call i32 @KASSERT(i32 %13, i8* inttoptr (i64 8 to i8*))
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %19 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IF_LLADDR(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %40, %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8 %33, i8* %39, align 1
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %45 = load i32, i32* @TSEC_REG_MACSTNADDR2, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TSEC_WRITE(%struct.tsec_softc* %44, i32 %45, i32 %47)
  %49 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %50 = load i32, i32* @TSEC_REG_MACSTNADDR1, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TSEC_WRITE(%struct.tsec_softc* %49, i32 %50, i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i64 @IF_LLADDR(i32) #2

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
