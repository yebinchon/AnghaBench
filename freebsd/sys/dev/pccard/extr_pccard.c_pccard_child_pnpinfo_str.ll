; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_child_pnpinfo_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_child_pnpinfo_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32 }
%struct.pccard_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@SBUF_INCLUDENUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"manufacturer=0x%04x product=0x%04x cisvendor=\22\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\22 cisproduct=\22\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\22 function_type=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @pccard_child_pnpinfo_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_child_pnpinfo_str(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pccard_ivar*, align 8
  %10 = alloca %struct.pccard_function*, align 8
  %11 = alloca %struct.pccard_softc*, align 8
  %12 = alloca %struct.sbuf, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %13)
  store %struct.pccard_ivar* %14, %struct.pccard_ivar** %9, align 8
  %15 = load %struct.pccard_ivar*, %struct.pccard_ivar** %9, align 8
  %16 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %15, i32 0, i32 0
  %17 = load %struct.pccard_function*, %struct.pccard_function** %16, align 8
  store %struct.pccard_function* %17, %struct.pccard_function** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %18)
  store %struct.pccard_softc* %19, %struct.pccard_softc** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %23 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @sbuf_new(%struct.sbuf* %12, i8* %20, i64 %21, i32 %24)
  %26 = load %struct.pccard_softc*, %struct.pccard_softc** %11, align 8
  %27 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pccard_softc*, %struct.pccard_softc** %11, align 8
  %31 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  %35 = load %struct.pccard_softc*, %struct.pccard_softc** %11, align 8
  %36 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @devctl_safe_quote_sb(%struct.sbuf* %12, i32 %40)
  %42 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pccard_softc*, %struct.pccard_softc** %11, align 8
  %44 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @devctl_safe_quote_sb(%struct.sbuf* %12, i32 %48)
  %50 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %51 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = call i32 @sbuf_finish(%struct.sbuf* %12)
  %55 = call i32 @sbuf_delete(%struct.sbuf* %12)
  ret i32 0
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i64, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @devctl_safe_quote_sb(%struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
