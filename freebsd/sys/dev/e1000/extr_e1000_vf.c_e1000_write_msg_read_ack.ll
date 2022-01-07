; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_write_msg_read_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_write_msg_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32)* @e1000_write_msg_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_write_msg_read_ack(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_mbx_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %7, align 8
  %13 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %18 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.e1000_hw.1*, i32*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32, i32)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %20(%struct.e1000_hw.1* %22, i32* %23, i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %3
  %29 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.e1000_hw.0*, i32*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32, i32)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.0*
  %35 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %36 = call i32 %32(%struct.e1000_hw.0* %34, i32* %16, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %28, %3
  %38 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
