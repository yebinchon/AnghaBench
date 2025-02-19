; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_reset_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_reset_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { i32 }

@VIRTCHNL_OP_RESET_VF = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i64)* @ixl_vf_reset_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_reset_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %13 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %14 = load i32, i32* @VIRTCHNL_OP_RESET_VF, align 4
  %15 = load i32, i32* @I40E_ERR_PARAM, align 4
  %16 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %12, %struct.ixl_vf* %13, i32 %14, i32 %15)
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %19 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %20 = call i32 @ixl_reset_vf(%struct.ixl_pf* %18, %struct.ixl_vf* %19)
  br label %21

21:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_reset_vf(%struct.ixl_pf*, %struct.ixl_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
