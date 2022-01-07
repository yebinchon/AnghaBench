; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_eprom_read32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_eprom_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64 }

@__const.urtw_eprom_read32.readcmd = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 0], align 4
@URTW_EPROM_CMD = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_PROGRAM_MODE = common dso_local global i32 0, align 4
@URTW_EPROM_DELAY = common dso_local global i32 0, align 4
@URTW_EPROM_ENABLE = common dso_local global i32 0, align 4
@URTW_EEPROM_93C56 = common dso_local global i64 0, align 8
@URTW_EPROM_DISABLE = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL_MODE = common dso_local global i32 0, align 4
@URTW_READCMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32, i32*)* @urtw_eprom_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_eprom_read32(%struct.urtw_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([3 x i32]* @__const.urtw_eprom_read32.readcmd to i8*), i64 12, i1 false)
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %16 = load i32, i32* @URTW_EPROM_CMD, align 4
  %17 = load i32, i32* @URTW_EPROM_CMD_PROGRAM_MODE, align 4
  %18 = call i32 @urtw_write8_m(%struct.urtw_softc* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @URTW_EPROM_DELAY, align 4
  %20 = call i32 @DELAY(i32 %19)
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %22 = load i32, i32* @URTW_EPROM_ENABLE, align 4
  %23 = call i64 @urtw_eprom_cs(%struct.urtw_softc* %21, i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %149

27:                                               ; preds = %3
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %29 = call i64 @urtw_eprom_ck(%struct.urtw_softc* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %149

33:                                               ; preds = %27
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %36 = call i64 @urtw_eprom_sendbits(%struct.urtw_softc* %34, i32* %35, i32 3)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %149

40:                                               ; preds = %33
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %42 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @URTW_EEPROM_93C56, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  store i32 8, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 128
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 32
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 16
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 8
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %60, i32* %61, align 16
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 2
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 1
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 %69, i32* %70, align 4
  br label %90

71:                                               ; preds = %40
  store i32 6, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 32
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 16
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 8
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 2
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %85, i32* %86, align 16
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 1
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %71, %46
  %91 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @urtw_eprom_sendbits(%struct.urtw_softc* %91, i32* %92, i32 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %149

98:                                               ; preds = %90
  %99 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %100 = call i64 @urtw_eprom_writebit(%struct.urtw_softc* %99, i32 0)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %149

104:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 16
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %110 = call i64 @urtw_eprom_ck(%struct.urtw_softc* %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %149

114:                                              ; preds = %108
  %115 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %116 = call i64 @urtw_eprom_readbit(%struct.urtw_softc* %115, i32* %10)
  store i64 %116, i64* %12, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %149

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 15, %122
  %124 = shl i32 %121, %123
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %105

131:                                              ; preds = %105
  %132 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %133 = load i32, i32* @URTW_EPROM_DISABLE, align 4
  %134 = call i64 @urtw_eprom_cs(%struct.urtw_softc* %132, i32 %133)
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %149

138:                                              ; preds = %131
  %139 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %140 = call i64 @urtw_eprom_ck(%struct.urtw_softc* %139)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %149

144:                                              ; preds = %138
  %145 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %146 = load i32, i32* @URTW_EPROM_CMD, align 4
  %147 = load i32, i32* @URTW_EPROM_CMD_NORMAL_MODE, align 4
  %148 = call i32 @urtw_write8_m(%struct.urtw_softc* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %143, %137, %119, %113, %103, %97, %39, %32, %26
  %150 = load i64, i64* %12, align 8
  ret i64 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i64 @urtw_eprom_cs(%struct.urtw_softc*, i32) #2

declare dso_local i64 @urtw_eprom_ck(%struct.urtw_softc*) #2

declare dso_local i64 @urtw_eprom_sendbits(%struct.urtw_softc*, i32*, i32) #2

declare dso_local i64 @urtw_eprom_writebit(%struct.urtw_softc*, i32) #2

declare dso_local i64 @urtw_eprom_readbit(%struct.urtw_softc*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
