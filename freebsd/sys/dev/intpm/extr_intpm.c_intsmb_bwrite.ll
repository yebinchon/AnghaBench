; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@SMBBLOCKTRANS_MAX = common dso_local global i32 0, align 4
@SMB_EINVAL = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCMD = common dso_local global i32 0, align 4
@PIIX4_SMBBLKDAT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT0 = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32, i8*)* @intsmb_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_bwrite(i32 %0, i32 %1, i8 signext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.intsmb_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.intsmb_softc* @device_get_softc(i32 %15)
  store %struct.intsmb_softc* %16, %struct.intsmb_softc** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @SMBBLOCKTRANS_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %92

25:                                               ; preds = %20
  %26 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %27 = call i32 @INTSMB_LOCK(%struct.intsmb_softc* %26)
  %28 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %29 = call i32 @intsmb_free(%struct.intsmb_softc* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %34 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %92

36:                                               ; preds = %25
  %37 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %38 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %41 = call i32 @bus_read_1(i32 %39, i32 %40)
  %42 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %43 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LSB, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @bus_write_1(i32 %44, i32 %45, i32 %49)
  %51 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %52 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PIIX4_SMBHSTCMD, align 4
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 @bus_write_1(i32 %53, i32 %54, i32 %56)
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %74, %36
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %64 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PIIX4_SMBBLKDAT, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 @bus_write_1(i32 %65, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %58

77:                                               ; preds = %58
  %78 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %79 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PIIX4_SMBHSTDAT0, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @bus_write_1(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %85 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_BLOCK, align 4
  %86 = call i32 @intsmb_start(%struct.intsmb_softc* %84, i32 %85, i32 0)
  %87 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %88 = call i32 @intsmb_stop(%struct.intsmb_softc* %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %90 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %77, %32, %23
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
