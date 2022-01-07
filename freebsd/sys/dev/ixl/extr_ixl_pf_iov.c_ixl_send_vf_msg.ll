; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_send_vf_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_send_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_vf = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Sending msg (op=%s[%d], status=%d) to VF-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i32, i32, i8*, i32)* @ixl_send_vf_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_send_vf_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ixl_pf*, align 8
  %8 = alloca %struct.ixl_vf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40e_hw*, align 8
  %14 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %7, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  store %struct.i40e_hw* %16, %struct.i40e_hw** %13, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %13, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ixl_vf*, %struct.ixl_vf** %8, align 8
  %22 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ixl_vc_opcode_level(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ixl_vc_opcode_str(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ixl_vf*, %struct.ixl_vf** %8, align 8
  %33 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @I40E_VC_DEBUG(%struct.ixl_pf* %25, i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %36, i32 %37, i32 %38, i32 %39, i8* %40, i32 %41, i32* null)
  ret void
}

declare dso_local i32 @I40E_VC_DEBUG(%struct.ixl_pf*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ixl_vc_opcode_level(i32) #1

declare dso_local i32 @ixl_vc_opcode_str(i32) #1

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
