; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32 }

@IIC_FASTEST = common dso_local global i32 0, align 4
@RTL8366_IIC_ADDR = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@RTL_IICBUS_READ = common dso_local global i32 0, align 4
@RTL_IICBUS_TIMEOUT = common dso_local global i32 0, align 4
@RTL8366RB_CIR = common dso_local global i32 0, align 4
@RTL8366SR_CIR = common dso_local global i32 0, align 4
@IIC_LAST_READ = common dso_local global i32 0, align 4
@RTL8366RB_CIR_ID8366RB = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [16 x i8] c"chip id 0x%04x\0A\00", align 1
@RTL8366RB = common dso_local global i32 0, align 4
@RTL8366SR_CIR_ID8366SR = common dso_local global i8 0, align 1
@RTL8366SR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366rb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %12)
  store %struct.rtl8366rb_softc* %13, %struct.rtl8366rb_softc** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %143, %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %146

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IIC_FASTEST, align 4
  %24 = load i32, i32* @RTL8366_IIC_ADDR, align 4
  %25 = call i32 @iicbus_reset(i32 %22, i32 %23, i32 %24, i32* null)
  store i32 3, i32* %8, align 4
  br label %26

26:                                               ; preds = %30, %21
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @IICBUS_STOP(i32 %31)
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @IIC_WAIT, align 4
  %37 = call i32 @iicbus_request_bus(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %152

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @RTL8366_IIC_ADDR, align 4
  %44 = load i32, i32* @RTL_IICBUS_READ, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RTL_IICBUS_TIMEOUT, align 4
  %47 = call i32 @iicbus_start(i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %152

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* @RTL8366RB_CIR, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* @RTL8366RB_CIR, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %62, i8* %63, align 1
  br label %74

64:                                               ; preds = %51
  %65 = load i32, i32* @RTL8366SR_CIR, align 4
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %67, i8* %68, align 1
  %69 = load i32, i32* @RTL8366SR_CIR, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %72, i8* %73, align 1
  br label %74

74:                                               ; preds = %64, %54
  %75 = load i32, i32* %4, align 4
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %77 = load i32, i32* @RTL_IICBUS_TIMEOUT, align 4
  %78 = call i32 @iicbus_write(i32 %75, i8* %76, i32 2, i32* %11, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %152

82:                                               ; preds = %74
  %83 = load i32, i32* %4, align 4
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %85 = load i32, i32* @IIC_LAST_READ, align 4
  %86 = call i32 @iicbus_read(i32 %83, i8* %84, i32 2, i32* %11, i32 %85, i32 0)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %152

90:                                               ; preds = %82
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 255
  %95 = shl i32 %94, 8
  %96 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = and i32 %98, 255
  %100 = or i32 %95, %99
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %9, align 1
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %90
  %105 = load i8, i8* %9, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* @RTL8366RB_CIR_ID8366RB, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* %2, align 4
  %112 = load i8, i8* %9, align 1
  %113 = call i32 @DPRINTF(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 signext %112)
  %114 = load i32, i32* @RTL8366RB, align 4
  %115 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %116 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %6, align 4
  br label %146

117:                                              ; preds = %104, %90
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i8, i8* %9, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @RTL8366SR_CIR_ID8366SR, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i32, i32* %2, align 4
  %128 = load i8, i8* %9, align 1
  %129 = call i32 @DPRINTF(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 signext %128)
  %130 = load i32, i32* @RTL8366SR, align 4
  %131 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %132 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  store i32 0, i32* %6, align 4
  br label %146

133:                                              ; preds = %120, %117
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @iicbus_stop(i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @iicbus_release_bus(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %133
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %18

146:                                              ; preds = %126, %110, %18
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %146
  br label %152

152:                                              ; preds = %151, %89, %81, %50, %40
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @iicbus_stop(i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %2, align 4
  %157 = call i32 @iicbus_release_bus(i32 %155, i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %163

161:                                              ; preds = %152
  %162 = load i32, i32* @ENXIO, align 4
  br label %163

163:                                              ; preds = %161, %160
  %164 = phi i32 [ 0, %160 ], [ %162, %161 ]
  ret i32 %164
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @IICBUS_STOP(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @iicbus_start(i32, i32, i32) #1

declare dso_local i32 @iicbus_write(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @iicbus_read(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @DPRINTF(i32, i8*, i8 signext) #1

declare dso_local i32 @iicbus_stop(i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
