; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_add_rx_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_add_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_dbch = type { i32, %struct.fw_xferq }
%struct.fw_xferq = type { i32, i32, i32* }
%struct.fwohcidb_tr = type { i32, i32*, i32, %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fwdma_alloc = type { i32 }

@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@OHCI_INPUT_MORE = common dso_local global i32 0, align 4
@FWXFERQ_STREAM = common dso_local global i32 0, align 4
@OHCI_UPDATE = common dso_local global i32 0, align 4
@OHCI_INPUT_LAST = common dso_local global i32 0, align 4
@OHCI_BRANCH_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwohci_add_rx_buf(%struct.fwohci_dbch* %0, %struct.fwohcidb_tr* %1, i32 %2, %struct.fwdma_alloc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwohci_dbch*, align 8
  %7 = alloca %struct.fwohcidb_tr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fwdma_alloc*, align 8
  %10 = alloca %struct.fwohcidb*, align 8
  %11 = alloca %struct.fw_xferq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  store %struct.fwohci_dbch* %0, %struct.fwohci_dbch** %6, align 8
  store %struct.fwohcidb_tr* %1, %struct.fwohcidb_tr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fwdma_alloc* %3, %struct.fwdma_alloc** %9, align 8
  %16 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %17 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %16, i32 0, i32 3
  %18 = load %struct.fwohcidb*, %struct.fwohcidb** %17, align 8
  store %struct.fwohcidb* %18, %struct.fwohcidb** %10, align 8
  %19 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %6, align 8
  %20 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %19, i32 0, i32 1
  store %struct.fw_xferq* %20, %struct.fw_xferq** %11, align 8
  %21 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %22 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %4
  %26 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %6, align 8
  %27 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %25
  %34 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %35 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %6, align 8
  %40 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %43 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %42, i32 0, i32 2
  %44 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %45 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %48 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %49 = call i32* @fwdma_malloc_size(i32 %41, i32* %43, i32 %46, i32* %47, i32 %48)
  %50 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %51 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %53 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %5, align 4
  br label %233

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %61 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %63 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %6, align 8
  %67 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %70 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %73 = call i32 @bus_dmamap_sync(i32 %68, i32 %71, i32 %72)
  br label %130

74:                                               ; preds = %25, %4
  %75 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %76 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %9, align 8
  %78 = icmp ne %struct.fwdma_alloc* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %81 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %83
  store i32 4, i32* %84, align 4
  %85 = load %struct.fwdma_alloc*, %struct.fwdma_alloc** %9, align 8
  %86 = getelementptr inbounds %struct.fwdma_alloc, %struct.fwdma_alloc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %89 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %79, %74
  %95 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %96 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %99 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %104 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %94
  %108 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %109 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32* @fwdma_v_addr(i32* %110, i32 %111)
  %113 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %114 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %116 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @fwdma_bus_addr(i32* %117, i32 %118)
  %120 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %121 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %107, %94
  %126 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %127 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %59
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %197, %130
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %134 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %200

137:                                              ; preds = %131
  %138 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %138, i64 %140
  %142 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @FWOHCI_DMA_WRITE(i32 %145, i32 %149)
  %151 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %151, i64 %153
  %155 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @OHCI_INPUT_MORE, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %159, %163
  %165 = call i32 @FWOHCI_DMA_WRITE(i32 %158, i32 %164)
  %166 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %167 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @FWXFERQ_STREAM, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %137
  %173 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %173, i64 %175
  %177 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @OHCI_UPDATE, align 4
  %182 = call i32 @FWOHCI_DMA_SET(i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %172, %137
  %184 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %184, i64 %186
  %188 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @FWOHCI_DMA_WRITE(i32 %191, i32 %195)
  br label %197

197:                                              ; preds = %183
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %131

200:                                              ; preds = %131
  %201 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %202 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  %205 = load %struct.fw_xferq*, %struct.fw_xferq** %11, align 8
  %206 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @FWXFERQ_STREAM, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %200
  %212 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %212, i64 %214
  %216 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @OHCI_INPUT_LAST, align 4
  %221 = call i32 @FWOHCI_DMA_SET(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %211, %200
  %223 = load %struct.fwohcidb*, %struct.fwohcidb** %10, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %223, i64 %225
  %227 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @OHCI_BRANCH_ALWAYS, align 4
  %232 = call i32 @FWOHCI_DMA_SET(i32 %230, i32 %231)
  store i32 0, i32* %5, align 4
  br label %233

233:                                              ; preds = %222, %56
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32* @fwdma_malloc_size(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32* @fwdma_v_addr(i32*, i32) #1

declare dso_local i32 @fwdma_bus_addr(i32*, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @FWOHCI_DMA_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
