; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_poll_command1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_poll_command1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.amr_command = type { i32, i32, i32, i32, i32, i32* }

@AMR_STATE_INTEN = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"amrpoll\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"adapter is busy\0A\00", align 1
@AMR_MBOX_CMDSIZE = common dso_local global i32 0, align 4
@AMR_QIDB_SUBMIT = common dso_local global i32 0, align 4
@AMR_STATUS_SUCCESS = common dso_local global i32 0, align 4
@AMR_QIDB_ACK = common dso_local global i32 0, align 4
@AMR_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*, %struct.amr_command*)* @amr_quartz_poll_command1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_quartz_poll_command1(%struct.amr_softc* %0, %struct.amr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amr_softc*, align 8
  %5 = alloca %struct.amr_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %4, align 8
  store %struct.amr_command* %1, %struct.amr_command** %5, align 8
  %8 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %9 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %8, i32 0, i32 2
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %12 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AMR_STATE_INTEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %20 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %25 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %26 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %25, i32 0, i32 2
  %27 = load i32, i32* @PRIBIO, align 4
  %28 = load i32, i32* @PCATCH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @hz, align 4
  %31 = call i32 @msleep(%struct.amr_softc* %24, i32* %26, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = icmp sgt i32 %32, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %37

36:                                               ; preds = %23
  br label %18

37:                                               ; preds = %35, %18
  %38 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %39 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %44 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %48 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %47, i32 0, i32 2
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %51 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %56 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %59 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_dmamap_unload(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %42
  %63 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %64 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 1, i32* %3, align 4
  br label %219

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %68 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %67, i32 0, i32 4
  %69 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %70 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = bitcast %struct.TYPE_2__* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* @AMR_MBOX_CMDSIZE, align 4
  %76 = call i32 @bcopy(i32* %68, i8* %74, i32 %75)
  %77 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %78 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 254, i32* %80, align 4
  %81 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %82 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 255, i32* %84, align 4
  %85 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %86 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 255, i32* %88, align 4
  %89 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %90 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %94 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 0, i32* %96, align 4
  %97 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %98 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  store i32 1, i32* %100, align 4
  %101 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %102 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %103 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AMR_QIDB_SUBMIT, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @AMR_QPUT_IDB(%struct.amr_softc* %101, i32 %106)
  br label %108

108:                                              ; preds = %115, %66
  %109 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %110 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 255
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 @DELAY(i32 1)
  br label %108

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %125, %117
  %119 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %120 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 255
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 @DELAY(i32 1)
  br label %118

127:                                              ; preds = %118
  %128 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %129 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %134 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %136 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AMR_STATUS_SUCCESS, align 4
  %139 = icmp ne i32 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %149, %127
  %143 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %144 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 119
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 @DELAY(i32 1)
  br label %142

151:                                              ; preds = %142
  %152 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %153 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  store i32 0, i32* %155, align 4
  %156 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %157 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  store i32 119, i32* %159, align 4
  %160 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %161 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %162 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @AMR_QIDB_ACK, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @AMR_QPUT_IDB(%struct.amr_softc* %160, i32 %165)
  br label %167

167:                                              ; preds = %173, %151
  %168 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %169 = call i32 @AMR_QGET_IDB(%struct.amr_softc* %168)
  %170 = load i32, i32* @AMR_QIDB_ACK, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = call i32 @DELAY(i32 1)
  br label %167

175:                                              ; preds = %167
  %176 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %177 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %176, i32 0, i32 2
  %178 = call i32 @mtx_unlock(i32* %177)
  %179 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %180 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @AMR_CMD_DATAIN, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %187 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %190 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %193 = call i32 @bus_dmamap_sync(i32 %188, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %175
  %195 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %196 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %203 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %206 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %209 = call i32 @bus_dmamap_sync(i32 %204, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %201, %194
  %211 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %212 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %215 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @bus_dmamap_unload(i32 %213, i32 %216)
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %210, %62
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.amr_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @AMR_QPUT_IDB(%struct.amr_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMR_QGET_IDB(%struct.amr_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
