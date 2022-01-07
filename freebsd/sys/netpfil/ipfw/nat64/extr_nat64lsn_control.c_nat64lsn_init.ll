; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@ipfw_nat64lsn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nat64lsn\00", align 1
@V_nat64lsn_eid = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4
@opcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat64lsn_init(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @nat64lsn_init_internal()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %12 = load i32, i32* @ipfw_nat64lsn, align 4
  %13 = call i64 @ipfw_add_eaction(%struct.ip_fw_chain* %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* @V_nat64lsn_eid, align 8
  %14 = load i64, i64* @V_nat64lsn_eid, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @scodes, align 4
  %21 = call i32 @IPFW_ADD_SOPT_HANDLER(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @opcodes, align 4
  %24 = call i32 @IPFW_ADD_OBJ_REWRITER(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @nat64lsn_init_internal(...) #1

declare dso_local i64 @ipfw_add_eaction(%struct.ip_fw_chain*, i32, i8*) #1

declare dso_local i32 @IPFW_ADD_SOPT_HANDLER(i32, i32) #1

declare dso_local i32 @IPFW_ADD_OBJ_REWRITER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
