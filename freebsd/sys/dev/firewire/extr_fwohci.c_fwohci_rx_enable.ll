; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_rx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, %struct.fwohci_dbch*, %struct.TYPE_5__, %struct.fwohci_dbch, %struct.fwohci_dbch }
%struct.TYPE_5__ = type { i32 }
%struct.fwohci_dbch = type { i32, i32, %struct.fwohcidb_tr*, %struct.TYPE_8__, i32, i64, %struct.fwohcidb_tr*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fwohcidb_tr = type { i32, i32, %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@OHCI_ARQOFF = common dso_local global i64 0, align 8
@OHCI_ARSOFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FWXFERQ_STREAM = common dso_local global i32 0, align 4
@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_ALWAYS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*, %struct.fwohci_dbch*)* @fwohci_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_rx_enable(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca %struct.fwohci_dbch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fwohcidb_tr*, align 8
  %14 = alloca %struct.fwohcidb*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %15 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %16 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %18, i32 0, i32 4
  %20 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %21 = icmp eq %struct.fwohci_dbch* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @OHCI_ARQOFF, align 8
  store i64 %23, i64* %12, align 8
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %25, i32 0, i32 3
  %27 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %28 = icmp eq %struct.fwohci_dbch* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @OHCI_ARSOFF, align 8
  store i64 %30, i64* %12, align 8
  br label %56

31:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %40, i32 0, i32 1
  %42 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %42, i64 %44
  %46 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %47 = icmp eq %struct.fwohci_dbch* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @OHCI_IROFF(i32 %49)
  store i64 %50, i64* %12, align 8
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %32

55:                                               ; preds = %48, %32
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %22
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %276

63:                                               ; preds = %57
  %64 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %65 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FWXFERQ_STREAM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %73 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %276

81:                                               ; preds = %71
  br label %94

82:                                               ; preds = %63
  %83 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %84 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EBUSY, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %276

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %96 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %97 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  %101 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %102 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %101, i32 0, i32 7
  %103 = call %struct.fwohcidb_tr* @STAILQ_FIRST(i32* %102)
  %104 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %105 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %104, i32 0, i32 2
  store %struct.fwohcidb_tr* %103, %struct.fwohcidb_tr** %105, align 8
  store i32 0, i32* %9, align 4
  %106 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %107 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %106, i32 0, i32 2
  %108 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %107, align 8
  %109 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %110 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %109, i32 0, i32 6
  store %struct.fwohcidb_tr* %108, %struct.fwohcidb_tr** %110, align 8
  br label %111

111:                                              ; preds = %126, %94
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %114 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %120 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %119, i32 0, i32 6
  %121 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %120, align 8
  %122 = load i32, i32* @link, align 4
  %123 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %121, i32 %122)
  %124 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %125 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %124, i32 0, i32 6
  store %struct.fwohcidb_tr* %123, %struct.fwohcidb_tr** %125, align 8
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %111

129:                                              ; preds = %111
  %130 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %131 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %130, i32 0, i32 2
  %132 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %131, align 8
  store %struct.fwohcidb_tr* %132, %struct.fwohcidb_tr** %13, align 8
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %216, %129
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %136 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %219

139:                                              ; preds = %133
  %140 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %141 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %144 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %143, i32 0, i32 0
  %145 = call i32 @fwohci_add_rx_buf(%struct.fwohci_dbch* %140, %struct.fwohcidb_tr* %141, i32 %142, i32* %144)
  %146 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %147 = load i32, i32* @link, align 4
  %148 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %146, i32 %147)
  %149 = icmp eq %struct.fwohcidb_tr* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %219

151:                                              ; preds = %139
  %152 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %153 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %152, i32 0, i32 2
  %154 = load %struct.fwohcidb*, %struct.fwohcidb** %153, align 8
  store %struct.fwohcidb* %154, %struct.fwohcidb** %14, align 8
  %155 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %156 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  %159 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %159, i64 %161
  %163 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %168 = load i32, i32* @link, align 4
  %169 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %167, i32 %168)
  %170 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @FWOHCI_DMA_WRITE(i32 %166, i32 %173)
  %175 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %176 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %151
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  %185 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %186 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = srem i32 %184, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %182
  %192 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %192, i64 %194
  %196 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @OHCI_INTERRUPT_ALWAYS, align 4
  %201 = call i32 @FWOHCI_DMA_SET(i32 %199, i32 %200)
  %202 = load %struct.fwohcidb*, %struct.fwohcidb** %14, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %202, i64 %204
  %206 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @FWOHCI_DMA_CLEAR(i32 %209, i32 15)
  br label %211

211:                                              ; preds = %191, %182
  br label %212

212:                                              ; preds = %211, %151
  %213 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %214 = load i32, i32* @link, align 4
  %215 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %213, i32 %214)
  store %struct.fwohcidb_tr* %215, %struct.fwohcidb_tr** %13, align 8
  br label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %133

219:                                              ; preds = %150, %133
  %220 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %221 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %220, i32 0, i32 6
  %222 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %221, align 8
  %223 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %222, i32 0, i32 2
  %224 = load %struct.fwohcidb*, %struct.fwohcidb** %223, align 8
  %225 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %13, align 8
  %226 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %224, i64 %229
  %231 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @FWOHCI_DMA_CLEAR(i32 %234, i32 15)
  %236 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %237 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %236, i32 0, i32 5
  store i64 0, i64* %237, align 8
  %238 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %239 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %242 = call i32 @fwdma_sync_multiseg_all(i32 %240, i32 %241)
  %243 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %244 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %247 = call i32 @fwdma_sync_multiseg_all(i32 %245, i32 %246)
  %248 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %249 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @FWXFERQ_STREAM, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %219
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %3, align 4
  br label %276

257:                                              ; preds = %219
  %258 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %259 = load i64, i64* %12, align 8
  %260 = call i32 @OHCI_DMACMD(i64 %259)
  %261 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %262 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %261, i32 0, i32 2
  %263 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %262, align 8
  %264 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %8, align 4
  %267 = or i32 %265, %266
  %268 = call i32 @OWRITE(%struct.fwohci_softc* %258, i32 %260, i32 %267)
  br label %269

269:                                              ; preds = %257
  %270 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %271 = load i64, i64* %12, align 8
  %272 = call i32 @OHCI_DMACTL(i64 %271)
  %273 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %274 = call i32 @OWRITE(%struct.fwohci_softc* %270, i32 %272, i32 %273)
  %275 = load i32, i32* %6, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %269, %255, %90, %79, %60
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i64 @OHCI_IROFF(i32) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @fwohci_add_rx_buf(%struct.fwohci_dbch*, %struct.fwohcidb_tr*, i32, i32*) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_CLEAR(i32, i32) #1

declare dso_local i32 @fwdma_sync_multiseg_all(i32, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OHCI_DMACMD(i64) #1

declare dso_local i32 @OHCI_DMACTL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
