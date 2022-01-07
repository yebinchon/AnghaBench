; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_add_tx_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_add_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_dbch = type { %struct.fw_xferq }
%struct.fw_xferq = type { i64 }
%struct.fwohcidb_tr = type { i32, i32, %struct.fwohcidb* }
%struct.fwohcidb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OHCI_OUTPUT_MORE = common dso_local global i32 0, align 4
@OHCI_KEY_ST2 = common dso_local global i32 0, align 4
@OHCI_OUTPUT_LAST = common dso_local global i32 0, align 4
@OHCI_UPDATE = common dso_local global i32 0, align 4
@OHCI_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_dbch*, %struct.fwohcidb_tr*, i32)* @fwohci_add_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_add_tx_buf(%struct.fwohci_dbch* %0, %struct.fwohcidb_tr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwohci_dbch*, align 8
  %6 = alloca %struct.fwohcidb_tr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwohcidb*, align 8
  %9 = alloca %struct.fw_xferq*, align 8
  %10 = alloca i32, align 4
  store %struct.fwohci_dbch* %0, %struct.fwohci_dbch** %5, align 8
  store %struct.fwohcidb_tr* %1, %struct.fwohcidb_tr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %12 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %11, i32 0, i32 2
  %13 = load %struct.fwohcidb*, %struct.fwohcidb** %12, align 8
  store %struct.fwohcidb* %13, %struct.fwohcidb** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %15 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %14, i32 0, i32 0
  store %struct.fw_xferq* %15, %struct.fw_xferq** %9, align 8
  %16 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %17 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %25 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fwdma_v_addr(i64 %26, i32 %27)
  %29 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %30 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %32 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %31, i32 0, i32 0
  store i32 3, i32* %32, align 8
  %33 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %34 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %33, i64 0
  %35 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OHCI_OUTPUT_MORE, align 4
  %40 = load i32, i32* @OHCI_KEY_ST2, align 4
  %41 = or i32 %39, %40
  %42 = or i32 %41, 8
  %43 = call i32 @FWOHCI_DMA_WRITE(i32 %38, i32 %42)
  %44 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %45 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %44, i64 0
  %46 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @FWOHCI_DMA_WRITE(i32 %49, i32 0)
  %51 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %52 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %51, i64 1
  %53 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @bzero(i8* %57, i32 8)
  %59 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %60 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %59, i64 2
  %61 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %66 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @fwdma_bus_addr(i64 %67, i32 %68)
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @FWOHCI_DMA_WRITE(i32 %64, i32 %72)
  %74 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %75 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %74, i64 2
  %76 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OHCI_OUTPUT_LAST, align 4
  %81 = load i32, i32* @OHCI_UPDATE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @OHCI_BRANCH_ALWAYS, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @FWOHCI_DMA_WRITE(i32 %79, i32 %84)
  %86 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %87 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %86, i64 0
  %88 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FWOHCI_DMA_WRITE(i32 %91, i32 0)
  %93 = load %struct.fwohcidb*, %struct.fwohcidb** %8, align 8
  %94 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %93, i64 2
  %95 = getelementptr inbounds %struct.fwohcidb, %struct.fwohcidb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @FWOHCI_DMA_WRITE(i32 %98, i32 0)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %23, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @fwdma_v_addr(i64, i32) #1

declare dso_local i32 @FWOHCI_DMA_WRITE(i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @fwdma_bus_addr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
