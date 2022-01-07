; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_send_vf_nack_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_send_vf_nack_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Sending NACK (op=%s[%d], err=%s[%d]) to VF-%d from %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i32, i32, i8*, i32)* @ixl_send_vf_nack_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_send_vf_nack_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ixl_pf*, align 8
  %8 = alloca %struct.ixl_vf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %7, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @ixl_vc_opcode_str(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %18 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %17, i32 0, i32 0
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @i40e_stat_str(i32* %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ixl_vf*, %struct.ixl_vf** %8, align 8
  %23 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @I40E_VC_DEBUG(%struct.ixl_pf* %13, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %20, i32 %21, i32 %24, i8* %25, i32 %26)
  %28 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %29 = load %struct.ixl_vf*, %struct.ixl_vf** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ixl_send_vf_msg(%struct.ixl_pf* %28, %struct.ixl_vf* %29, i32 %30, i32 %31, i32* null, i32 0)
  ret void
}

declare dso_local i32 @I40E_VC_DEBUG(%struct.ixl_pf*, i32, i8*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ixl_vc_opcode_str(i32) #1

declare dso_local i32 @i40e_stat_str(i32*, i32) #1

declare dso_local i32 @ixl_send_vf_msg(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
