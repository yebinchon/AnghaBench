; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_recv_cuttext_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_recv_cuttext_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32 }
%struct.rfb_cuttext_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfb_softc*, i32)* @rfb_recv_cuttext_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfb_recv_cuttext_msg(%struct.rfb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfb_cuttext_msg, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.rfb_softc* %0, %struct.rfb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = bitcast %struct.rfb_cuttext_msg* %5 to i8*
  %10 = getelementptr i8, i8* %9, i64 1
  %11 = call i32 @stream_read(i32 %8, i8* %10, i32 3)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @htonl(i32 %13)
  %15 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 32, %27 ], [ %31, %28 ]
  %34 = trunc i64 %33 to i32
  %35 = call i32 @stream_read(i32 %21, i8* %22, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.rfb_cuttext_msg, %struct.rfb_cuttext_msg* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %16

40:                                               ; preds = %16
  ret void
}

declare dso_local i32 @stream_read(i32, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
