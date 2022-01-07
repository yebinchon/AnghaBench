; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_xics.c_xicp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xicp_softc = type { i32, i32, %struct.xicp_intvec* }
%struct.xicp_intvec = type { i32, i8*, i8* }

@hwref = common dso_local global i32 0, align 4
@MAX_XICP_IRQS = common dso_local global i8* null, align 8
@XICP_PRIORITY = common dso_local global i32 0, align 4
@OPAL_SET_XIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8**)* @xicp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xicp_enable(i32 %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.xicp_softc*, align 8
  %10 = alloca %struct.xicp_intvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.xicp_softc* @device_get_softc(i32 %13)
  store %struct.xicp_softc* %14, %struct.xicp_softc** %9, align 8
  %15 = load i32, i32* @hwref, align 4
  %16 = call i32 @PCPU_GET(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.xicp_softc*, %struct.xicp_softc** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = call %struct.xicp_intvec* @xicp_setup_priv(%struct.xicp_softc* %17, i8* %18, i8** %19)
  store %struct.xicp_intvec* %20, %struct.xicp_intvec** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.xicp_intvec*, %struct.xicp_intvec** %10, align 8
  %23 = getelementptr inbounds %struct.xicp_intvec, %struct.xicp_intvec* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.xicp_intvec*, %struct.xicp_intvec** %10, align 8
  %26 = getelementptr inbounds %struct.xicp_intvec, %struct.xicp_intvec* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.xicp_intvec*, %struct.xicp_intvec** %10, align 8
  %29 = getelementptr inbounds %struct.xicp_intvec, %struct.xicp_intvec* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @mb()
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** @MAX_XICP_IRQS, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.xicp_intvec*, %struct.xicp_intvec** %10, align 8
  %36 = load %struct.xicp_softc*, %struct.xicp_softc** %9, align 8
  %37 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds %struct.xicp_intvec, %struct.xicp_intvec* %35, i64 %40
  %42 = load %struct.xicp_softc*, %struct.xicp_softc** %9, align 8
  %43 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %42, i32 0, i32 2
  store %struct.xicp_intvec* %41, %struct.xicp_intvec** %43, align 8
  br label %59

44:                                               ; preds = %4
  %45 = call i64 (...) @rtas_exists()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.xicp_softc*, %struct.xicp_softc** %9, align 8
  %49 = getelementptr inbounds %struct.xicp_softc, %struct.xicp_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @XICP_PRIORITY, align 4
  %54 = call i32 @rtas_call_method(i32 %50, i32 3, i32 1, i8* %51, i32 %52, i32 %53, i32* %11)
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.xicp_intvec*, %struct.xicp_intvec** %10, align 8
  %58 = call i32 @xicp_unmask(i32 %55, i8* %56, %struct.xicp_intvec* %57)
  br label %59

59:                                               ; preds = %34, %47, %44
  ret void
}

declare dso_local %struct.xicp_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local %struct.xicp_intvec* @xicp_setup_priv(%struct.xicp_softc*, i8*, i8**) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @rtas_exists(...) #1

declare dso_local i32 @rtas_call_method(i32, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @xicp_unmask(i32, i8*, %struct.xicp_intvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
