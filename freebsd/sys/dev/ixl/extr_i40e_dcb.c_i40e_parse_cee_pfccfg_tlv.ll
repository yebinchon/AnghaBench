; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_parse_cee_pfccfg_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_parse_cee_pfccfg_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_cee_feat_tlv = type { i8**, i32 }
%struct.i40e_dcbx_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@I40E_CEE_FEAT_TLV_WILLING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_cee_feat_tlv*, %struct.i40e_dcbx_config*)* @i40e_parse_cee_pfccfg_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_parse_cee_pfccfg_tlv(%struct.i40e_cee_feat_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_cee_feat_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i8**, align 8
  store %struct.i40e_cee_feat_tlv* %0, %struct.i40e_cee_feat_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  %6 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_cee_feat_tlv, %struct.i40e_cee_feat_tlv* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %5, align 8
  %9 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_cee_feat_tlv, %struct.i40e_cee_feat_tlv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I40E_CEE_FEAT_TLV_WILLING_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
