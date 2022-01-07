; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@ipfw_nptv6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nptv6\00", align 1
@V_nptv6_eid = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4
@opcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nptv6_init(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %7 = load i32, i32* @ipfw_nptv6, align 4
  %8 = call i64 @ipfw_add_eaction(%struct.ip_fw_chain* %6, i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @V_nptv6_eid, align 8
  %9 = load i64, i64* @V_nptv6_eid, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @scodes, align 4
  %16 = call i32 @IPFW_ADD_SOPT_HANDLER(i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @opcodes, align 4
  %19 = call i32 @IPFW_ADD_OBJ_REWRITER(i32 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @ipfw_add_eaction(%struct.ip_fw_chain*, i32, i8*) #1

declare dso_local i32 @IPFW_ADD_SOPT_HANDLER(i32, i32) #1

declare dso_local i32 @IPFW_ADD_OBJ_REWRITER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
