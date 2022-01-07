; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, %struct.TYPE_2__, %struct.com_s* }
%struct.TYPE_2__ = type { i32 }
%struct.com_s = type { i32, i32, i32, i32, %struct.tty*, i32*, i32, i32 }

@ETC_NONE = common dso_local global i32 0, align 4
@CD1400_COR2 = common dso_local global i32 0, align 4
@CD1400_COR2_ETC = common dso_local global i32 0, align 4
@CD1400_ETC_STOPBREAK = common dso_local global i32 0, align 4
@CD1400_CCR_CMDRESET = common dso_local global i32 0, align 4
@CD1400_CCR_FTF = common dso_local global i32 0, align 4
@CD1400_SRER = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CD1400_MSVR2_CD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@CD1400_CCR_CMDCHANCTL = common dso_local global i32 0, align 4
@CD1400_CCR_XMTEN = common dso_local global i32 0, align 4
@CD1400_CCR_RCVDIS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @cyclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyclose(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.com_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 4
  %9 = load %struct.com_s*, %struct.com_s** %8, align 8
  store %struct.com_s* %9, %struct.com_s** %4, align 8
  %10 = load %struct.com_s*, %struct.com_s** %4, align 8
  %11 = getelementptr inbounds %struct.com_s, %struct.com_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.com_s*, %struct.com_s** %4, align 8
  %14 = getelementptr inbounds %struct.com_s, %struct.com_s* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = call i32 (...) @spltty()
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @critical_enter()
  %18 = call i32 (...) @COM_LOCK()
  %19 = load i32, i32* @ETC_NONE, align 4
  %20 = load %struct.com_s*, %struct.com_s** %4, align 8
  %21 = getelementptr inbounds %struct.com_s, %struct.com_s* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.com_s*, %struct.com_s** %4, align 8
  %23 = load i32, i32* @CD1400_COR2, align 4
  %24 = load i32, i32* @CD1400_COR2_ETC, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.com_s*, %struct.com_s** %4, align 8
  %27 = getelementptr inbounds %struct.com_s, %struct.com_s* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = call i32 @cd_setreg(%struct.com_s* %22, i32 %23, i32 %31)
  %33 = call i32 (...) @COM_UNLOCK()
  %34 = call i32 (...) @critical_exit()
  %35 = load %struct.com_s*, %struct.com_s** %4, align 8
  %36 = load i32, i32* @CD1400_ETC_STOPBREAK, align 4
  %37 = call i32 @cd_etc(%struct.com_s* %35, i32 %36)
  %38 = load %struct.com_s*, %struct.com_s** %4, align 8
  %39 = load i32, i32* @CD1400_CCR_CMDRESET, align 4
  %40 = load i32, i32* @CD1400_CCR_FTF, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cd1400_channel_cmd(%struct.com_s* %38, i32 %41)
  %43 = call i32 (...) @critical_enter()
  %44 = call i32 (...) @COM_LOCK()
  %45 = load %struct.com_s*, %struct.com_s** %4, align 8
  %46 = load i32, i32* @CD1400_SRER, align 4
  %47 = load %struct.com_s*, %struct.com_s** %4, align 8
  %48 = getelementptr inbounds %struct.com_s, %struct.com_s* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = call i32 @cd_setreg(%struct.com_s* %45, i32 %46, i32 0)
  %50 = call i32 (...) @COM_UNLOCK()
  %51 = call i32 (...) @critical_exit()
  %52 = load %struct.com_s*, %struct.com_s** %4, align 8
  %53 = getelementptr inbounds %struct.com_s, %struct.com_s* %52, i32 0, i32 4
  %54 = load %struct.tty*, %struct.tty** %53, align 8
  store %struct.tty* %54, %struct.tty** %2, align 8
  %55 = load %struct.tty*, %struct.tty** %2, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HUPCL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %1
  %62 = load %struct.tty*, %struct.tty** %2, align 8
  %63 = getelementptr inbounds %struct.tty, %struct.tty* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = load %struct.com_s*, %struct.com_s** %4, align 8
  %68 = getelementptr inbounds %struct.com_s, %struct.com_s* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CD1400_MSVR2_CD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load %struct.tty*, %struct.tty** %2, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CLOCAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73, %66, %61
  %82 = load %struct.tty*, %struct.tty** %2, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TS_ISOPEN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %81, %73, %1
  %89 = load %struct.tty*, %struct.tty** %2, align 8
  %90 = load i32, i32* @SER_DTR, align 4
  %91 = call i32 @cymodem(%struct.tty* %89, i32 0, i32 %90)
  %92 = load i32, i32* @CD1400_CCR_CMDCHANCTL, align 4
  %93 = load i32, i32* @CD1400_CCR_XMTEN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CD1400_CCR_RCVDIS, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.com_s*, %struct.com_s** %4, align 8
  %98 = getelementptr inbounds %struct.com_s, %struct.com_s* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.com_s*, %struct.com_s** %4, align 8
  %100 = load %struct.com_s*, %struct.com_s** %4, align 8
  %101 = getelementptr inbounds %struct.com_s, %struct.com_s* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cd1400_channel_cmd(%struct.com_s* %99, i32 %102)
  %104 = load %struct.tty*, %struct.tty** %2, align 8
  %105 = call i32 @ttydtrwaitstart(%struct.tty* %104)
  br label %106

106:                                              ; preds = %88, %81
  %107 = load i64, i64* @FALSE, align 8
  %108 = load %struct.tty*, %struct.tty** %2, align 8
  %109 = getelementptr inbounds %struct.tty, %struct.tty* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.tty*, %struct.tty** %2, align 8
  %111 = getelementptr inbounds %struct.tty, %struct.tty* %110, i32 0, i32 2
  %112 = call i32 @wakeup(i64* %111)
  %113 = load %struct.tty*, %struct.tty** %2, align 8
  %114 = call i64* @TSA_CARR_ON(%struct.tty* %113)
  %115 = call i32 @wakeup(i64* %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @splx(i32 %116)
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cd_etc(%struct.com_s*, i32) #1

declare dso_local i32 @cd1400_channel_cmd(%struct.com_s*, i32) #1

declare dso_local i32 @cymodem(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydtrwaitstart(%struct.tty*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i64* @TSA_CARR_ON(%struct.tty*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
