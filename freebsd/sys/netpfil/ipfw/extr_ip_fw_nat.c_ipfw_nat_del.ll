; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_ipfw_nat_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt = type { i32 }
%struct.cfg_nat = type { i32 }

@V_layer3_chain = common dso_local global %struct.ip_fw_chain zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*)* @ipfw_nat_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_nat_del(%struct.sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockopt*, align 8
  %4 = alloca %struct.cfg_nat*, align 8
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32, align 4
  store %struct.sockopt* %0, %struct.sockopt** %3, align 8
  store %struct.ip_fw_chain* @V_layer3_chain, %struct.ip_fw_chain** %5, align 8
  %7 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %8 = call i32 @sooptcopyin(%struct.sockopt* %7, i32* %6, i32 4, i32 4)
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %10 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %9)
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.cfg_nat* @lookup_nat(i32* %12, i32 %13)
  store %struct.cfg_nat* %14, %struct.cfg_nat** %4, align 8
  %15 = load %struct.cfg_nat*, %struct.cfg_nat** %4, align 8
  %16 = icmp eq %struct.cfg_nat* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %19 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %23 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %22)
  %24 = load %struct.cfg_nat*, %struct.cfg_nat** %4, align 8
  %25 = load i32, i32* @_next, align 4
  %26 = call i32 @LIST_REMOVE(%struct.cfg_nat* %24, i32 %25)
  %27 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @flush_nat_ptrs(%struct.ip_fw_chain* %27, i32 %28)
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %31 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %30)
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %33 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %32)
  %34 = load %struct.cfg_nat*, %struct.cfg_nat** %4, align 8
  %35 = call i32 @free_nat_instance(%struct.cfg_nat* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %21, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.cfg_nat* @lookup_nat(i32*, i32) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @LIST_REMOVE(%struct.cfg_nat*, i32) #1

declare dso_local i32 @flush_nat_ptrs(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @free_nat_instance(%struct.cfg_nat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
