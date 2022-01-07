; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i64, i32, i32*, %struct.TYPE_8__, i32, %struct.xbd_command* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.xbd_command = type { i64, i32 (%struct.xbd_command*)*, i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@XBD_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@XBD_Q_BUSY = common dso_local global i64 0, align 8
@BLKIF_OP_READ = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BLKIF_OP_WRITE = common dso_local global i64 0, align 8
@BLKIF_OP_WRITE_BARRIER = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@XBDF_WAIT_IDLE = common dso_local global i32 0, align 4
@XBD_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xbd_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_int(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xbd_softc*, align 8
  %4 = alloca %struct.xbd_command*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.xbd_softc*
  store %struct.xbd_softc* %11, %struct.xbd_softc** %3, align 8
  %12 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XBD_STATE_DISCONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @__predict_false(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %24, i32 0, i32 1
  %26 = call i32 @mtx_unlock(i32* %25)
  br label %198

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %157, %27
  %29 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = call i32 (...) @rmb()
  %36 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %37 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %138, %28
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %139

44:                                               ; preds = %40
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %45, i32 0, i32 3
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.TYPE_7__* @RING_GET_RESPONSE(%struct.TYPE_8__* %46, i64 %47)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %5, align 8
  %49 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %49, i32 0, i32 5
  %51 = load %struct.xbd_command*, %struct.xbd_command** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %51, i64 %54
  store %struct.xbd_command* %55, %struct.xbd_command** %4, align 8
  %56 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %57 = load i64, i64* @XBD_Q_BUSY, align 8
  %58 = call i32 @xbd_remove_cm(%struct.xbd_command* %56, i64 %57)
  %59 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %60 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %63 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gnttab_end_foreign_access_references(i32 %61, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %69 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BLKIF_OP_READ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %44
  %74 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %74, i32* %8, align 4
  br label %91

75:                                               ; preds = %44
  %76 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %77 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BLKIF_OP_WRITE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %83 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BLKIF_OP_WRITE_BARRIER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %88, i32* %8, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %87
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %93 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %96 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @bus_dmamap_sync(i32 %94, i32 %97, i32 %98)
  %100 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %101 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %104 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bus_dmamap_unload(i32 %102, i32 %105)
  %107 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %108 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %109 = call i32 @xbd_cm_thaw(%struct.xbd_softc* %107, %struct.xbd_command* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %114 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %116 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %91
  %120 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %121 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %122 = call i32 @xbd_bio_complete(%struct.xbd_softc* %120, %struct.xbd_command* %121)
  br label %138

123:                                              ; preds = %91
  %124 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %125 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %124, i32 0, i32 1
  %126 = load i32 (%struct.xbd_command*)*, i32 (%struct.xbd_command*)** %125, align 8
  %127 = icmp ne i32 (%struct.xbd_command*)* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %130 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %129, i32 0, i32 1
  %131 = load i32 (%struct.xbd_command*)*, i32 (%struct.xbd_command*)** %130, align 8
  %132 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %133 = call i32 %131(%struct.xbd_command* %132)
  br label %137

134:                                              ; preds = %123
  %135 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %136 = call i32 @xbd_free_command(%struct.xbd_command* %135)
  br label %137

137:                                              ; preds = %134, %128
  br label %138

138:                                              ; preds = %137, %119
  br label %40

139:                                              ; preds = %40
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %142 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %146 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %144, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %139
  %151 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %152 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %151, i32 0, i32 3
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_8__* %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %28

158:                                              ; preds = %150
  br label %167

159:                                              ; preds = %139
  %160 = load i64, i64* %6, align 8
  %161 = add nsw i64 %160, 1
  %162 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %163 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i64 %161, i64* %166, align 8
  br label %167

167:                                              ; preds = %159, %158
  %168 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %169 = load i64, i64* @XBD_Q_BUSY, align 8
  %170 = call i64 @xbd_queue_length(%struct.xbd_softc* %168, i64 %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %174 = load i32, i32* @XBDF_WAIT_IDLE, align 4
  %175 = call i32 @xbd_thaw(%struct.xbd_softc* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %167
  %177 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %178 = call i32 @xbd_startio(%struct.xbd_softc* %177)
  %179 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %180 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @XBD_STATE_SUSPENDED, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i64 @__predict_false(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %176
  %188 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %189 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @XBD_Q_BUSY, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = call i32 @wakeup(i32* %192)
  br label %194

194:                                              ; preds = %187, %176
  %195 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %196 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %195, i32 0, i32 1
  %197 = call i32 @mtx_unlock(i32* %196)
  br label %198

198:                                              ; preds = %194, %23
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.TYPE_7__* @RING_GET_RESPONSE(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @xbd_remove_cm(%struct.xbd_command*, i64) #1

declare dso_local i32 @gnttab_end_foreign_access_references(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xbd_cm_thaw(%struct.xbd_softc*, %struct.xbd_command*) #1

declare dso_local i32 @xbd_bio_complete(%struct.xbd_softc*, %struct.xbd_command*) #1

declare dso_local i32 @xbd_free_command(%struct.xbd_command*) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @xbd_queue_length(%struct.xbd_softc*, i64) #1

declare dso_local i32 @xbd_thaw(%struct.xbd_softc*, i32) #1

declare dso_local i32 @xbd_startio(%struct.xbd_softc*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
