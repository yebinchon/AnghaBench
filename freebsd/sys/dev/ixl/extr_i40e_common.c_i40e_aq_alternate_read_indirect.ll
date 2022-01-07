; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_read_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_read_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_alternate_ind_write = type { i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_alternate_read_indirect = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_alternate_read_indirect(%struct.i40e_hw* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i40e_aq_desc, align 4
  %11 = alloca %struct.i40e_aqc_alternate_ind_write*, align 8
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_alternate_ind_write*
  store %struct.i40e_aqc_alternate_ind_write* %15, %struct.i40e_aqc_alternate_ind_write** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %19, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32, i32* @i40e_aqc_opc_alternate_read_indirect, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %10, i32 %21)
  %23 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %24 = call i32 @CPU_TO_LE16(i32 %23)
  %25 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %29 = call i32 @CPU_TO_LE16(i32 %28)
  %30 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %35 = sdiv i32 %34, 4
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @CPU_TO_LE16(i32 %39)
  %41 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %20
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @CPU_TO_LE32(i32 %45)
  %47 = load %struct.i40e_aqc_alternate_ind_write*, %struct.i40e_aqc_alternate_ind_write** %11, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_alternate_ind_write, %struct.i40e_aqc_alternate_ind_write* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @CPU_TO_LE32(i32 %49)
  %51 = load %struct.i40e_aqc_alternate_ind_write*, %struct.i40e_aqc_alternate_ind_write** %11, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_alternate_ind_write, %struct.i40e_aqc_alternate_ind_write* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 4, %55
  %57 = call i32 @I40E_LO_DWORD(i32 %56)
  %58 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %53, %struct.i40e_aq_desc* %10, i8* %54, i32 %57, i32* null)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %44, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, i32*) #1

declare dso_local i32 @I40E_LO_DWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
