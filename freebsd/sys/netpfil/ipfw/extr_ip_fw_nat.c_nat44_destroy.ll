; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_nat.c_nat44_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cfg_nat = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat44_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat44_destroy(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.cfg_nat*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %11 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %12 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %20 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %18
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strnlen(i32 %37, i32 4)
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %32
  %44 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %45 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %44)
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %47 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.cfg_nat* @lookup_nat_name(i32* %47, i32 %50)
  store %struct.cfg_nat* %51, %struct.cfg_nat** %9, align 8
  %52 = load %struct.cfg_nat*, %struct.cfg_nat** %9, align 8
  %53 = icmp eq %struct.cfg_nat* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %56 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %55)
  %57 = load i32, i32* @ESRCH, align 4
  store i32 %57, i32* %4, align 4
  br label %75

58:                                               ; preds = %43
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %60 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %59)
  %61 = load %struct.cfg_nat*, %struct.cfg_nat** %9, align 8
  %62 = load i32, i32* @_next, align 4
  %63 = call i32 @LIST_REMOVE(%struct.cfg_nat* %61, i32 %62)
  %64 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %65 = load %struct.cfg_nat*, %struct.cfg_nat** %9, align 8
  %66 = getelementptr inbounds %struct.cfg_nat, %struct.cfg_nat* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @flush_nat_ptrs(%struct.ip_fw_chain* %64, i32 %67)
  %69 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %70 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %69)
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %72 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %71)
  %73 = load %struct.cfg_nat*, %struct.cfg_nat** %9, align 8
  %74 = call i32 @free_nat_instance(%struct.cfg_nat* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %58, %54, %41, %30, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.cfg_nat* @lookup_nat_name(i32*, i32) #1

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
