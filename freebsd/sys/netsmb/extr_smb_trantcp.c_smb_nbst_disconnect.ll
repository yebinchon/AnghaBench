; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i64, %struct.socket*, i32 }
%struct.socket = type { i32 }
%struct.thread = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@NBF_CONNECTED = common dso_local global i32 0, align 4
@NBST_RETARGET = common dso_local global i64 0, align 8
@NBST_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.thread*)* @smb_nbst_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_disconnect(%struct.smb_vc* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nbpcb*, align 8
  %7 = alloca %struct.socket*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %8 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %9 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %8, i32 0, i32 0
  %10 = load %struct.nbpcb*, %struct.nbpcb** %9, align 8
  store %struct.nbpcb* %10, %struct.nbpcb** %6, align 8
  %11 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %12 = icmp eq %struct.nbpcb* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %15 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %14, i32 0, i32 1
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  %17 = icmp eq %struct.socket* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENOTCONN, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %13
  %21 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %22 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %21, i32 0, i32 1
  %23 = load %struct.socket*, %struct.socket** %22, align 8
  store %struct.socket* %23, %struct.socket** %7, align 8
  %24 = icmp ne %struct.socket* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* @NBF_CONNECTED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %29 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %33 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %32, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %33, align 8
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = call i32 @soshutdown(%struct.socket* %34, i32 2)
  %36 = load %struct.socket*, %struct.socket** %7, align 8
  %37 = call i32 @soclose(%struct.socket* %36)
  br label %38

38:                                               ; preds = %25, %20
  %39 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %40 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NBST_RETARGET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @NBST_CLOSED, align 8
  %46 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %47 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %38
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @soshutdown(%struct.socket*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
