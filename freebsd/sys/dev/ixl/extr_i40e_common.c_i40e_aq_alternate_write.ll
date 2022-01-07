; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_alternate_write = type { i8*, i8*, i8*, i8* }

@i40e_aqc_opc_alternate_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_alternate_write(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_alternate_write*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.i40e_aqc_alternate_write*
  store %struct.i40e_aqc_alternate_write* %16, %struct.i40e_aqc_alternate_write** %12, align 8
  %17 = load i32, i32* @i40e_aqc_opc_alternate_write, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @CPU_TO_LE32(i32 %19)
  %21 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %12, align 8
  %22 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @CPU_TO_LE32(i32 %23)
  %25 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %12, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @CPU_TO_LE32(i32 %27)
  %29 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %12, align 8
  %30 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @CPU_TO_LE32(i32 %31)
  %33 = load %struct.i40e_aqc_alternate_write*, %struct.i40e_aqc_alternate_write** %12, align 8
  %34 = getelementptr inbounds %struct.i40e_aqc_alternate_write, %struct.i40e_aqc_alternate_write* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %36 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %35, %struct.i40e_aq_desc* %11, i32* null, i32 0, i32* null)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  ret i32 %37
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
