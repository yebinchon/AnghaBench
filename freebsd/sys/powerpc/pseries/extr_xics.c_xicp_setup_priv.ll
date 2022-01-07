; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_setup_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_setup_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xicp_intvec = type opaque
%struct.xicp_softc = type { i64, i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"Too many XICP interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xicp_intvec* (%struct.xicp_softc*, i32, i8**)* @xicp_setup_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xicp_intvec* @xicp_setup_priv(%struct.xicp_softc* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.xicp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store %struct.xicp_softc* %0, %struct.xicp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %7 = load i8**, i8*** %6, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  %11 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %12 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %16 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @nitems(i32* %17)
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %23 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %26 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %29 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %30
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.xicp_softc*, %struct.xicp_softc** %4, align 8
  %36 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %35, i32 0, i32 1
  %37 = call i32 @mtx_unlock(i32* %36)
  br label %38

38:                                               ; preds = %10, %3
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.xicp_intvec*
  ret %struct.xicp_intvec* %41
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
