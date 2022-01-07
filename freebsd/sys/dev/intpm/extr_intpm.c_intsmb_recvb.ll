; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_recvb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_recvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_BYTE = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT0 = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @intsmb_recvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_recvb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intsmb_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.intsmb_softc* @device_get_softc(i32 %10)
  store %struct.intsmb_softc* %11, %struct.intsmb_softc** %8, align 8
  %12 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %13 = call i32 @INTSMB_LOCK(%struct.intsmb_softc* %12)
  %14 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %15 = call i32 @intsmb_free(%struct.intsmb_softc* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %20 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %24 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LSB, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bus_write_1(i32 %25, i32 %26, i32 %29)
  %31 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %32 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_BYTE, align 4
  %33 = call i32 @intsmb_start(%struct.intsmb_softc* %31, i32 %32, i32 0)
  %34 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %35 = call i32 @intsmb_stop(%struct.intsmb_softc* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %40 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PIIX4_SMBHSTDAT0, align 4
  %43 = call signext i8 @bus_read_1(i32 %41, i32 %42)
  %44 = load i8*, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  br label %45

45:                                               ; preds = %38, %22
  %46 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %47 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

declare dso_local signext i8 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
