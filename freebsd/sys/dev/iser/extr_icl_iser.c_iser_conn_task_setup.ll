; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_task_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_task_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.icl_pdu = type { i32 }
%struct.ccb_scsiio = type { i32 }
%struct.icl_iser_pdu = type { %struct.ccb_scsiio* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_task_setup(%struct.icl_conn* %0, %struct.icl_pdu* %1, %struct.ccb_scsiio* %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.icl_conn*, align 8
  %7 = alloca %struct.icl_pdu*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.icl_iser_pdu*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %6, align 8
  store %struct.icl_pdu* %1, %struct.icl_pdu** %7, align 8
  store %struct.ccb_scsiio* %2, %struct.ccb_scsiio** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %13 = call %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu* %12)
  store %struct.icl_iser_pdu* %13, %struct.icl_iser_pdu** %11, align 8
  %14 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %15 = bitcast %struct.icl_pdu* %14 to i8*
  %16 = load i8**, i8*** %10, align 8
  store i8* %15, i8** %16, align 8
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %18 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %11, align 8
  %19 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %18, i32 0, i32 0
  store %struct.ccb_scsiio* %17, %struct.ccb_scsiio** %19, align 8
  ret i32 0
}

declare dso_local %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
