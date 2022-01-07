; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_read_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }

@KCS_STATUS_STATE_READ = common dso_local global i64 0, align 8
@KCS_STATUS_OBF = common dso_local global i32 0, align 4
@KCS_DATA = common dso_local global i32 0, align 4
@KCS_DATA_IN_READ = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, i32*)* @kcs_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcs_read_byte(%struct.ipmi_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %9 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @KCS_STATUS_STATE(i32 %10)
  %12 = load i64, i64* @KCS_STATUS_STATE_READ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %16 = call i32 @kcs_wait_for_obf(%struct.ipmi_softc* %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @KCS_STATUS_OBF, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %14
  %23 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %24 = load i32, i32* @KCS_DATA, align 4
  %25 = call i32 @INB(%struct.ipmi_softc* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %28 = load i32, i32* @KCS_DATA, align 4
  %29 = load i32, i32* @KCS_DATA_IN_READ, align 4
  %30 = call i32 @OUTB(%struct.ipmi_softc* %27, i32 %28, i32 %29)
  store i32 1, i32* %3, align 4
  br label %49

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @KCS_STATUS_STATE(i32 %32)
  %34 = load i64, i64* @KCS_STATUS_STATE_IDLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %38 = call i32 @kcs_wait_for_obf(%struct.ipmi_softc* %37, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @KCS_STATUS_OBF, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %46 = load i32, i32* @KCS_DATA, align 4
  %47 = call i32 @INB(%struct.ipmi_softc* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  store i32 2, i32* %3, align 4
  br label %49

48:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44, %43, %22, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @kcs_wait_for_ibf(%struct.ipmi_softc*, i32) #1

declare dso_local i64 @KCS_STATUS_STATE(i32) #1

declare dso_local i32 @kcs_wait_for_obf(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @OUTB(%struct.ipmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
