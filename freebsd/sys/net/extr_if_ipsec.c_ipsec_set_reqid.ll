; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_reqid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_set_reqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { i64, i32 }
%struct.secasindex = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@idhash = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"saidx is NULL, but family is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipsec_softc*, i64)* @ipsec_set_reqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_set_reqid(%struct.ipsec_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipsec_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.secasindex*, align 8
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @ipsec_ioctl_sx, i32 %7)
  %9 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %86

18:                                               ; preds = %14, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @ipsec_check_reqid(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EEXIST, align 4
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %21
  %28 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %34 = load i32, i32* @idhash, align 4
  %35 = call i32 @CK_LIST_REMOVE(%struct.ipsec_softc* %33, i32 %34)
  %36 = call i32 (...) @IPSEC_WAIT()
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @ipsec_idhash(i64 %41)
  %43 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %44 = load i32, i32* @idhash, align 4
  %45 = call i32 @CK_LIST_INSERT_HEAD(i32 %42, %struct.ipsec_softc* %43, i32 %44)
  br label %53

46:                                               ; preds = %18
  %47 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %48 = call i64 @ipsec_init_reqid(%struct.ipsec_softc* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @EEXIST, align 4
  store i32 %51, i32* %3, align 4
  br label %86

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %86

59:                                               ; preds = %53
  %60 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %61 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %62 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc* %60, i32 %61, i32 %64)
  store %struct.secasindex* %65, %struct.secasindex** %6, align 8
  %66 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %67 = icmp ne %struct.secasindex* %66, null
  %68 = zext i1 %67 to i32
  %69 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @KASSERT(i32 %68, i8* %73)
  %75 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %76 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %77 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %80 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.ipsec_softc*, %struct.ipsec_softc** %4, align 8
  %83 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ipsec_set_tunnel(%struct.ipsec_softc* %75, i32* %78, i32* %81, i64 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %59, %58, %50, %25, %17
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @ipsec_check_reqid(i64) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.ipsec_softc*, i32) #1

declare dso_local i32 @IPSEC_WAIT(...) #1

declare dso_local i32 @CK_LIST_INSERT_HEAD(i32, %struct.ipsec_softc*, i32) #1

declare dso_local i32 @ipsec_idhash(i64) #1

declare dso_local i64 @ipsec_init_reqid(%struct.ipsec_softc*) #1

declare dso_local %struct.secasindex* @ipsec_getsaidx(%struct.ipsec_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ipsec_set_tunnel(%struct.ipsec_softc*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
