; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_fill_default_direct_cmd_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_fill_default_direct_cmd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_aq_desc = type { i8*, i8* }

@I40E_NONDMA_MEM = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_SI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_aq_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_aq_desc* %0, %struct.i40e_aq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %3, align 8
  %6 = bitcast %struct.i40e_aq_desc* %5 to i8*
  %7 = load i32, i32* @I40E_NONDMA_MEM, align 4
  %8 = call i32 @i40e_memset(i8* %6, i32 0, i32 16, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @CPU_TO_LE16(i32 %9)
  %11 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @I40E_AQ_FLAG_SI, align 4
  %14 = call i8* @CPU_TO_LE16(i32 %13)
  %15 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

declare dso_local i32 @i40e_memset(i8*, i32, i32, i32) #1

declare dso_local i8* @CPU_TO_LE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
