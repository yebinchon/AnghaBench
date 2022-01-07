; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_mps_rpl_backdoor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_mps_rpl_backdoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_mps_rplc = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@A_MPS_VF_RPLCT_MAP3 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP2 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP1 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP0 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP7 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP6 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP5 = common dso_local global i32 0, align 4
@A_MPS_VF_RPLCT_MAP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.fw_ldst_mps_rplc*)* @mps_rpl_backdoor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_rpl_backdoor(%struct.adapter* %0, %struct.fw_ldst_mps_rplc* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.fw_ldst_mps_rplc*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.fw_ldst_mps_rplc* %1, %struct.fw_ldst_mps_rplc** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = call i64 @is_t5(%struct.adapter* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @A_MPS_VF_RPLCT_MAP3, align 4
  %11 = call i32 @t4_read_reg(%struct.adapter* %9, i32 %10)
  %12 = call i8* @htonl(i32 %11)
  %13 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %14 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %13, i32 0, i32 7
  store i8* %12, i8** %14, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = load i32, i32* @A_MPS_VF_RPLCT_MAP2, align 4
  %17 = call i32 @t4_read_reg(%struct.adapter* %15, i32 %16)
  %18 = call i8* @htonl(i32 %17)
  %19 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %20 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @A_MPS_VF_RPLCT_MAP1, align 4
  %23 = call i32 @t4_read_reg(%struct.adapter* %21, i32 %22)
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %26 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @A_MPS_VF_RPLCT_MAP0, align 4
  %29 = call i32 @t4_read_reg(%struct.adapter* %27, i32 %28)
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %32 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i32, i32* @A_MPS_VF_RPLCT_MAP7, align 4
  %36 = call i32 @t4_read_reg(%struct.adapter* %34, i32 %35)
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %39 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = load i32, i32* @A_MPS_VF_RPLCT_MAP6, align 4
  %42 = call i32 @t4_read_reg(%struct.adapter* %40, i32 %41)
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %45 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i32, i32* @A_MPS_VF_RPLCT_MAP5, align 4
  %48 = call i32 @t4_read_reg(%struct.adapter* %46, i32 %47)
  %49 = call i8* @htonl(i32 %48)
  %50 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %51 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = load i32, i32* @A_MPS_VF_RPLCT_MAP4, align 4
  %54 = call i32 @t4_read_reg(%struct.adapter* %52, i32 %53)
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %57 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %33, %8
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = load i32, i32* @A_MPS_VF_RPLCT_MAP3, align 4
  %61 = call i32 @t4_read_reg(%struct.adapter* %59, i32 %60)
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %64 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @A_MPS_VF_RPLCT_MAP2, align 4
  %67 = call i32 @t4_read_reg(%struct.adapter* %65, i32 %66)
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %70 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = load i32, i32* @A_MPS_VF_RPLCT_MAP1, align 4
  %73 = call i32 @t4_read_reg(%struct.adapter* %71, i32 %72)
  %74 = call i8* @htonl(i32 %73)
  %75 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %76 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = load i32, i32* @A_MPS_VF_RPLCT_MAP0, align 4
  %79 = call i32 @t4_read_reg(%struct.adapter* %77, i32 %78)
  %80 = call i8* @htonl(i32 %79)
  %81 = load %struct.fw_ldst_mps_rplc*, %struct.fw_ldst_mps_rplc** %4, align 8
  %82 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
