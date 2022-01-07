; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_generic_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ata_channel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ata_request*)* }

@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timeout waiting to issue command\0A\00", align 1
@ATA_R_TIMEOUT = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@ATA_R_ATAPI = common dso_local global i32 0, align 4
@ATA_R_DMA = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_F_DMA = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_PACKET_CMD = common dso_local global i32 0, align 4
@ATA_R_ATAPI_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"timeout waiting for PACKET command\0A\00", align 1
@ATA_IREASON = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATAPI_P_CMDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"timeout waiting for ATAPI ready\0A\00", align 1
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_R_ATAPI16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_generic_command(%struct.ata_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_request*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %3, align 8
  %9 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %10 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ata_channel* @device_get_softc(i32 %11)
  store %struct.ata_channel* %12, %struct.ata_channel** %4, align 8
  %13 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %14 = load i32, i32* @ATA_DRIVE, align 4
  %15 = load i32, i32* @ATA_D_IBM, align 4
  %16 = load i32, i32* @ATA_D_LBA, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %19 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ATA_DEV(i32 %20)
  %22 = or i32 %17, %21
  %23 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %13, i32 %14, i32 %22)
  %24 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %25 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ata_wait(%struct.ata_channel* %24, i32 %27, i32 0)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %32 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %36 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %37 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  store i32 -1, i32* %2, align 4
  br label %196

40:                                               ; preds = %1
  %41 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %42 = load i32, i32* @ATA_CONTROL, align 4
  %43 = load i32, i32* @ATA_A_4BIT, align 4
  %44 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %41, i32 %42, i32 %43)
  %45 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %46 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATA_R_ATAPI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %180

51:                                               ; preds = %40
  store i32 5000, i32* %5, align 4
  %52 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %53 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ATA_R_DMA, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %60 = load i32, i32* @ATA_FEATURE, align 4
  %61 = load i32, i32* @ATA_F_DMA, align 4
  %62 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %59, i32 %60, i32 %61)
  %63 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %64 = load i32, i32* @ATA_CYL_LSB, align 4
  %65 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %63, i32 %64, i32 0)
  %66 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %67 = load i32, i32* @ATA_CYL_MSB, align 4
  %68 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %66, i32 %67, i32 0)
  br label %86

69:                                               ; preds = %51
  %70 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %71 = load i32, i32* @ATA_FEATURE, align 4
  %72 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %70, i32 %71, i32 0)
  %73 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %74 = load i32, i32* @ATA_CYL_LSB, align 4
  %75 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %76 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %73, i32 %74, i32 %77)
  %79 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %80 = load i32, i32* @ATA_CYL_MSB, align 4
  %81 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %82 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %79, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %69, %58
  %87 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %88 = load i32, i32* @ATA_COMMAND, align 4
  %89 = load i32, i32* @ATA_PACKET_CMD, align 4
  %90 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %87, i32 %88, i32 %89)
  %91 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %92 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ATA_R_ATAPI_INTR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %196

98:                                               ; preds = %86
  %99 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %100 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %101 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ata_wait(%struct.ata_channel* %99, i32 %102, i32 0)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %111 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %115 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %116 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %109, %106
  store i32 -1, i32* %2, align 4
  br label %196

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %146, %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %5, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %127 = load i32, i32* @ATA_IREASON, align 4
  %128 = call i32 @ATA_IDX_INB(%struct.ata_channel* %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %130 = load i32, i32* @ATA_STATUS, align 4
  %131 = call i32 @ATA_IDX_INB(%struct.ata_channel* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @ATA_I_CMD, align 4
  %134 = load i32, i32* @ATA_I_IN, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ATA_S_DRQ, align 4
  %139 = load i32, i32* @ATA_S_BUSY, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = or i32 %136, %141
  %143 = load i32, i32* @ATAPI_P_CMDOUT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %125
  br label %148

146:                                              ; preds = %125
  %147 = call i32 @DELAY(i32 20)
  br label %121

148:                                              ; preds = %145, %121
  %149 = load i32, i32* %5, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %153 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @ATA_R_TIMEOUT, align 4
  %157 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %158 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  store i32 -1, i32* %2, align 4
  br label %196

161:                                              ; preds = %148
  %162 = call i32 @DELAY(i32 10)
  %163 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %164 = load i32, i32* @ATA_DATA, align 4
  %165 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %166 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %172 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ATA_R_ATAPI16, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 8, i32 6
  %179 = call i32 @ATA_IDX_OUTSW_STRM(%struct.ata_channel* %163, i32 %164, i32* %170, i32 %178)
  br label %195

180:                                              ; preds = %40
  %181 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %182 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %183, align 8
  %185 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %186 = call i32 %184(%struct.ata_request* %185)
  %187 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %188 = load i32, i32* @ATA_COMMAND, align 4
  %189 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %190 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %187, i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %180, %161
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %151, %119, %97, %30
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

declare dso_local i32 @ata_wait(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_IDX_OUTSW_STRM(%struct.ata_channel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
