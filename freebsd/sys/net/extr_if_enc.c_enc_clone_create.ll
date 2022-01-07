; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_softc = type { %struct.ifnet* }
%struct.ifnet = type { %struct.enc_softc*, i32, i32, i32 }
%struct.if_clone = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_ENC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@V_enc_sc = common dso_local global %struct.enc_softc* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@encname = common dso_local global i32 0, align 4
@ENCMTU = common dso_local global i32 0, align 4
@enc_ioctl = common dso_local global i32 0, align 4
@enc_output = common dso_local global i32 0, align 4
@DLT_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @enc_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.enc_softc*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @M_DEVBUF, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.enc_softc* @malloc(i32 8, i32 %10, i32 %13)
  store %struct.enc_softc* %14, %struct.enc_softc** %9, align 8
  %15 = load i32, i32* @IFT_ENC, align 4
  %16 = call %struct.ifnet* @if_alloc(i32 %15)
  %17 = load %struct.enc_softc*, %struct.enc_softc** %9, align 8
  %18 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %17, i32 0, i32 0
  store %struct.ifnet* %16, %struct.ifnet** %18, align 8
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %20 = icmp eq %struct.ifnet* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.enc_softc*, %struct.enc_softc** %9, align 8
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = call i32 @free(%struct.enc_softc* %22, i32 %23)
  %25 = load i32, i32* @ENOSPC, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.enc_softc*, %struct.enc_softc** @V_enc_sc, align 8
  %28 = icmp ne %struct.enc_softc* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = call i32 @if_free(%struct.ifnet* %30)
  %32 = load %struct.enc_softc*, %struct.enc_softc** %9, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.enc_softc* %32, i32 %33)
  %35 = load i32, i32* @EEXIST, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.enc_softc*, %struct.enc_softc** %9, align 8
  store %struct.enc_softc* %37, %struct.enc_softc** @V_enc_sc, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %39 = load i32, i32* @encname, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @if_initname(%struct.ifnet* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @ENCMTU, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @enc_ioctl, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @enc_output, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.enc_softc*, %struct.enc_softc** %9, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  store %struct.enc_softc* %51, %struct.enc_softc** %53, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %55 = call i32 @if_attach(%struct.ifnet* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %57 = load i32, i32* @DLT_ENC, align 4
  %58 = call i32 @bpfattach(%struct.ifnet* %56, i32 %57, i32 4)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %36, %29, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.enc_softc* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.enc_softc*, i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
