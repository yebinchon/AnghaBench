; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_send_msg_to_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_send_msg_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }
%union.nic_mbx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32, %union.nic_mbx*)* @nic_send_msg_to_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_send_msg_to_vf(%struct.nicpf* %0, i32 %1, %union.nic_mbx* %2) #0 {
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.nic_mbx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.nic_mbx* %2, %union.nic_mbx** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @nic_get_mbx_addr(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %union.nic_mbx*, %union.nic_mbx** %6, align 8
  %12 = bitcast %union.nic_mbx* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pass1_silicon(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, 0
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nic_reg_write(%struct.nicpf* %19, i64 %21, i32 %24)
  %26 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nic_reg_write(%struct.nicpf* %26, i64 %28, i32 %31)
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nic_reg_write(%struct.nicpf* %34, i64 %36, i32 %39)
  %41 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 0
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nic_reg_write(%struct.nicpf* %41, i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %33, %18
  ret void
}

declare dso_local i64 @nic_get_mbx_addr(i32) #1

declare dso_local i64 @pass1_silicon(i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
