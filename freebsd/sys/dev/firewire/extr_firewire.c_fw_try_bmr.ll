; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_try_bmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_try_bmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8**, %struct.fw_pkt, i64 }
%struct.fw_pkt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.firewire_comm = type { i32, i32, i32 }

@M_FWXFER = common dso_local global i32 0, align 4
@FWBUSMGRELECT = common dso_local global i32 0, align 4
@FWTCODE_LREQ = common dso_local global i32 0, align 4
@EXTCODE_CMP_SWAP = common dso_local global i32 0, align 4
@FWLOCALBUS = common dso_local global i32 0, align 4
@BUS_MGR_ID = common dso_local global i32 0, align 4
@fw_try_bmr_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fw_try_bmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_try_bmr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fw_xfer*, align 8
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca %struct.fw_pkt*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.firewire_comm*
  store %struct.firewire_comm* %8, %struct.firewire_comm** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @M_FWXFER, align 4
  %10 = call %struct.fw_xfer* @fw_xfer_alloc_buf(i32 %9, i32 8, i32 4)
  store %struct.fw_xfer* %10, %struct.fw_xfer** %3, align 8
  %11 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %12 = icmp eq %struct.fw_xfer* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @FWBUSMGRELECT, align 4
  %19 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %20 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.fw_pkt* %23, %struct.fw_pkt** %5, align 8
  %24 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 65535, i32* %27, align 8
  %28 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %29 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @FWTCODE_LREQ, align 4
  %33 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %34 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  store i32 %32, i32* %36, align 8
  %37 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %38 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %42 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %46 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load i32, i32* @EXTCODE_CMP_SWAP, align 4
  %50 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %51 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* @FWLOCALBUS, align 4
  %55 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %56 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %60 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* @BUS_MGR_ID, align 4
  %64 = or i32 -268435456, %63
  %65 = load %struct.fw_pkt*, %struct.fw_pkt** %5, align 8
  %66 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 4
  %69 = call i8* @htonl(i32 63)
  %70 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %71 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %69, i8** %74, align 8
  %75 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %76 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %80 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* %78, i8** %83, align 8
  %84 = load i32, i32* @fw_try_bmr_callback, align 4
  %85 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %86 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %88 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %89 = call i32 @fw_asyreq(%struct.firewire_comm* %87, i32 -1, %struct.fw_xfer* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %14
  %93 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %94 = call i32 @fw_xfer_free_buf(%struct.fw_xfer* %93)
  br label %96

95:                                               ; preds = %14
  br label %96

96:                                               ; preds = %95, %92, %13
  ret void
}

declare dso_local %struct.fw_xfer* @fw_xfer_alloc_buf(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fw_asyreq(%struct.firewire_comm*, i32, %struct.fw_xfer*) #1

declare dso_local i32 @fw_xfer_free_buf(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
