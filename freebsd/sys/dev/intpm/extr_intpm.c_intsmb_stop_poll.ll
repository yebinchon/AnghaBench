; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_stop_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_stop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i64, i32 }

@PIIX4_SMBHSTSTS = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSY = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_INTREN = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsmb_softc*)* @intsmb_stop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_stop_poll(%struct.intsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsmb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %3, align 8
  %8 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %9 = call i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 32767
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %18 = call i32 @bus_read_1(i32 %16, i32 %17)
  %19 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %22, %10
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 32767
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %36 = call i32 @bus_read_1(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %45 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @intsmb_error(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %72

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %61 = call i32 @bus_read_1(i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PIIX4_SMBHSTCNT_INTREN, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @bus_write_1(i32 %64, i32 %65, i32 %69)
  %71 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %54, %41
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @intsmb_error(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
