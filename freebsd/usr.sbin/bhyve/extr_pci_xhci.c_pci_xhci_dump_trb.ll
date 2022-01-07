; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dump_trb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dump_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_trb = type { i32, i32, i32 }

@pci_xhci_dump_trb.trbtypes = internal global [24 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SETUP_STAGE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DATA_STAGE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"STATUS_STAGE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ISOCH\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"EVENT_DATA\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ENABLE_SLOT\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"DISABLE_SLOT\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ADDRESS_DEVICE\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"CONFIGURE_EP\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"EVALUATE_CTX\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"RESET_EP\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"STOP_EP\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SET_TR_DEQUEUE\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"RESET_DEVICE\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"FORCE_EVENT\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"NEGOTIATE_BW\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SET_LATENCY_TOL\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"GET_PORT_BW\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"FORCE_HEADER\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"NOOP_CMD\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"pci_xhci: trb[@%p] type x%02x %s 0:x%016lx 2:x%08x 3:x%08x\0D\0A\00", align 1
@XHCI_TRB_TYPE_NOOP_CMD = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_trb*)* @pci_xhci_dump_trb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_dump_trb(%struct.xhci_trb* %0) #0 {
  %2 = alloca %struct.xhci_trb*, align 8
  %3 = alloca i64, align 8
  store %struct.xhci_trb* %0, %struct.xhci_trb** %2, align 8
  %4 = load %struct.xhci_trb*, %struct.xhci_trb** %2, align 8
  %5 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @XHCI_TRB_3_TYPE_GET(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.xhci_trb*, %struct.xhci_trb** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @XHCI_TRB_TYPE_NOOP_CMD, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds [24 x i8*], [24 x i8*]* @pci_xhci_dump_trb.trbtypes, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %17 ]
  %20 = load %struct.xhci_trb*, %struct.xhci_trb** %2, align 8
  %21 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xhci_trb*, %struct.xhci_trb** %2, align 8
  %24 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xhci_trb*, %struct.xhci_trb** %2, align 8
  %27 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @DPRINTF(i8* %30)
  ret void
}

declare dso_local i64 @XHCI_TRB_3_TYPE_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
