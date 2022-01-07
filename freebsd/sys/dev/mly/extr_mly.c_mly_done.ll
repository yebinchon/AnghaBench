; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i64, i32, i32, i32, %struct.mly_command*, %struct.TYPE_4__*, i32, i64 }
%struct.mly_command = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { %union.mly_status_packet* }
%union.mly_status_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@MLY_HM_STSREADY = common dso_local global i32 0, align 4
@MLY_SLOT_MAX = common dso_local global i64 0, align 8
@MLY_SLOT_START = common dso_local global i64 0, align 8
@MLY_CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"got HM completion for illegal slot %u\0A\00", align 1
@MLY_HM_STSACK = common dso_local global i32 0, align 4
@MLY_AM_STSREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"got AM completion for illegal slot %u at %d\0A\00", align 1
@MLY_MMBOX_STATUS = common dso_local global i32 0, align 4
@MLY_STATE_INTERRUPTS_ON = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_done(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca %struct.mly_command*, align 8
  %4 = alloca %union.mly_status_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %7 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %8 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %7)
  store i32 0, i32* %6, align 4
  %9 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %10 = load i32, i32* @MLY_HM_STSREADY, align 4
  %11 = call i64 @MLY_ODBR_TRUE(%struct.mly_softc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %1
  %14 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %15 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @MLY_GET_REG2(%struct.mly_softc* %14, i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MLY_SLOT_MAX, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  %23 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %23, i32 0, i32 4
  %25 = load %struct.mly_command*, %struct.mly_command** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MLY_SLOT_START, align 8
  %28 = sub nsw i64 %26, %27
  %29 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %25, i64 %28
  store %struct.mly_command* %29, %struct.mly_command** %3, align 8
  %30 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %31 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i8* @MLY_GET_REG(%struct.mly_softc* %30, i64 %34)
  %36 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %37 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %39 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 3
  %43 = call i8* @MLY_GET_REG(%struct.mly_softc* %38, i64 %42)
  %44 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %45 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %47 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 4
  %51 = call i32 @MLY_GET_REG4(%struct.mly_softc* %46, i64 %50)
  %52 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %53 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %55 = call i32 @mly_remove_busy(%struct.mly_command* %54)
  %56 = load i32, i32* @MLY_CMD_BUSY, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %59 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %63 = call i32 @mly_enqueue_complete(%struct.mly_command* %62)
  store i32 1, i32* %6, align 4
  br label %68

64:                                               ; preds = %13
  %65 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (%struct.mly_softc*, i8*, i64, ...) @mly_printf(%struct.mly_softc* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %22
  %69 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %70 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MLY_HM_STSREADY, align 4
  %74 = call i32 @MLY_SET_REG(%struct.mly_softc* %69, i32 %72, i32 %73)
  %75 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %76 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %77 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MLY_HM_STSACK, align 4
  %80 = call i32 @MLY_SET_REG(%struct.mly_softc* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %1
  %82 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %83 = load i32, i32* @MLY_AM_STSREADY, align 4
  %84 = call i64 @MLY_ODBR_TRUE(%struct.mly_softc* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %174

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %154, %86
  %88 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %89 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %88, i32 0, i32 5
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %union.mly_status_packet*, %union.mly_status_packet** %91, align 8
  %93 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %94 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %union.mly_status_packet, %union.mly_status_packet* %92, i64 %95
  store %union.mly_status_packet* %96, %union.mly_status_packet** %4, align 8
  %97 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %98 = bitcast %union.mly_status_packet* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %167

103:                                              ; preds = %87
  %104 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %105 = bitcast %union.mly_status_packet* %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @MLY_SLOT_MAX, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %103
  %112 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %113 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %112, i32 0, i32 4
  %114 = load %struct.mly_command*, %struct.mly_command** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @MLY_SLOT_START, align 8
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %114, i64 %117
  store %struct.mly_command* %118, %struct.mly_command** %3, align 8
  %119 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %120 = bitcast %union.mly_status_packet* %119 to %struct.TYPE_5__*
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %124 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %126 = bitcast %union.mly_status_packet* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %130 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %132 = bitcast %union.mly_status_packet* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %136 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %138 = call i32 @mly_remove_busy(%struct.mly_command* %137)
  %139 = load i32, i32* @MLY_CMD_BUSY, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %142 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %146 = call i32 @mly_enqueue_complete(%struct.mly_command* %145)
  store i32 1, i32* %6, align 4
  br label %154

147:                                              ; preds = %103
  %148 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %151 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (%struct.mly_softc*, i8*, i64, ...) @mly_printf(%struct.mly_softc* %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %149, i64 %152)
  br label %154

154:                                              ; preds = %147, %111
  %155 = load %union.mly_status_packet*, %union.mly_status_packet** %4, align 8
  %156 = bitcast %union.mly_status_packet* %155 to %struct.TYPE_6__*
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %159 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 1
  %162 = load i32, i32* @MLY_MMBOX_STATUS, align 4
  %163 = sext i32 %162 to i64
  %164 = urem i64 %161, %163
  %165 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %166 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %87

167:                                              ; preds = %102
  %168 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %169 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %170 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @MLY_AM_STSREADY, align 4
  %173 = call i32 @MLY_SET_REG(%struct.mly_softc* %168, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %167, %81
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %179 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @MLY_STATE_INTERRUPTS_ON, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load i32, i32* @taskqueue_thread, align 4
  %186 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %187 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %186, i32 0, i32 2
  %188 = call i32 @taskqueue_enqueue(i32 %185, i32* %187)
  br label %192

189:                                              ; preds = %177
  %190 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %191 = call i32 @mly_complete(%struct.mly_softc* %190)
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %174
  ret void
}

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i64 @MLY_ODBR_TRUE(%struct.mly_softc*, i32) #1

declare dso_local i64 @MLY_GET_REG2(%struct.mly_softc*, i64) #1

declare dso_local i8* @MLY_GET_REG(%struct.mly_softc*, i64) #1

declare dso_local i32 @MLY_GET_REG4(%struct.mly_softc*, i64) #1

declare dso_local i32 @mly_remove_busy(%struct.mly_command*) #1

declare dso_local i32 @mly_enqueue_complete(%struct.mly_command*) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*, i64, ...) #1

declare dso_local i32 @MLY_SET_REG(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @mly_complete(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
