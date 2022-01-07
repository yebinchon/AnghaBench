; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32 }

@CS4231_IADDR = common dso_local global i32 0, align 4
@MODE_CHANGE_ENABLE = common dso_local global i32 0, align 4
@CS_CLOCK_DATA_FORMAT = common dso_local global i32 0, align 4
@CS4231_IDATA = common dso_local global i32 0, align 4
@CS_TIMEOUT = common dso_local global i32 0, align 4
@CS_IN_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout setting playback speed\0A\00", align 1
@PCMDIR_REC = common dso_local global i32 0, align 4
@CS_REC_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout setting capture format\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"timeout waiting for !MCE\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"trying to hardware reset\0A\00", align 1
@CODEC_COLD_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@AUTO_CAL_ENABLE = common dso_local global i32 0, align 4
@AUTO_CAL_IN_PROG = common dso_local global i32 0, align 4
@CS_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@CS_TEST_AND_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*, i32, i32)* @cs4231_chan_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_chan_fs(%struct.cs4231_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cs4231_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %10 = call i32 @CS4231_LOCK_ASSERT(%struct.cs4231_softc* %9)
  store i32 0, i32* %8, align 4
  %11 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %12 = load i32, i32* @CS4231_IADDR, align 4
  %13 = load i32, i32* @MODE_CHANGE_ENABLE, align 4
  %14 = load i32, i32* @CS_CLOCK_DATA_FORMAT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @CS_WRITE(%struct.cs4231_softc* %11, i32 %12, i32 %15)
  %17 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %18 = load i32, i32* @CS4231_IDATA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @CS_WRITE(%struct.cs4231_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %22 = load i32, i32* @CS4231_IDATA, align 4
  %23 = call i32 @CS_READ(%struct.cs4231_softc* %21, i32 %22)
  %24 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %25 = load i32, i32* @CS4231_IDATA, align 4
  %26 = call i32 @CS_READ(%struct.cs4231_softc* %24, i32 %25)
  %27 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %41, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %33 = load i32, i32* @CS4231_IADDR, align 4
  %34 = call i32 @CS_READ(%struct.cs4231_softc* %32, i32 %33)
  %35 = load i32, i32* @CS_IN_INIT, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = call i32 @DELAY(i32 10)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %28

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %49 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PCMDIR_REC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %54
  %59 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %60 = load i32, i32* @CS4231_IADDR, align 4
  %61 = load i32, i32* @MODE_CHANGE_ENABLE, align 4
  %62 = load i32, i32* @CS_REC_FORMAT, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @CS_WRITE(%struct.cs4231_softc* %59, i32 %60, i32 %63)
  %65 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %66 = load i32, i32* @CS4231_IDATA, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @CS_WRITE(%struct.cs4231_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %70 = load i32, i32* @CS4231_IDATA, align 4
  %71 = call i32 @CS_READ(%struct.cs4231_softc* %69, i32 %70)
  %72 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %73 = load i32, i32* @CS4231_IDATA, align 4
  %74 = call i32 @CS_READ(%struct.cs4231_softc* %72, i32 %73)
  %75 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %89, %58
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %81 = load i32, i32* @CS4231_IADDR, align 4
  %82 = call i32 @CS_READ(%struct.cs4231_softc* %80, i32 %81)
  %83 = load i32, i32* @CS_IN_INIT, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = call i32 @DELAY(i32 10)
  br label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %7, align 4
  br label %76

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %97 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %95, %92
  br label %103

103:                                              ; preds = %102, %54
  %104 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %105 = load i32, i32* @CS4231_IADDR, align 4
  %106 = call i32 @CS_WRITE(%struct.cs4231_softc* %104, i32 %105, i32 0)
  %107 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %121, %103
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %113 = load i32, i32* @CS4231_IADDR, align 4
  %114 = call i32 @CS_READ(%struct.cs4231_softc* %112, i32 %113)
  %115 = load i32, i32* @CS_IN_INIT, align 4
  %116 = icmp eq i32 %114, %115
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i1 [ false, %108 ], [ %116, %111 ]
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = call i32 @DELAY(i32 10)
  br label %121

121:                                              ; preds = %119
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %7, align 4
  br label %108

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %129 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %134
  %138 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %139 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %143 = call i32 @cs4231_disable(%struct.cs4231_softc* %142)
  %144 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %145 = load i32, i32* @CODEC_COLD_RESET, align 4
  %146 = call i32 @cs4231_enable(%struct.cs4231_softc* %144, i32 %145)
  %147 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %148 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %147)
  %149 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %150 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @mixer_reinit(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %137
  %155 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %156 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %154, %137
  %160 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %161 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %160)
  br label %162

162:                                              ; preds = %159, %134
  ret void
}

declare dso_local i32 @CS4231_LOCK_ASSERT(%struct.cs4231_softc*) #1

declare dso_local i32 @CS_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @CS_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cs4231_disable(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_enable(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i64 @mixer_reinit(i32) #1

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
