; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i64, i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }

@NBST_SESSION = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NB_SSN_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.mbuf*, %struct.thread*)* @smb_nbst_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_send(%struct.smb_vc* %0, %struct.mbuf* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_vc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.nbpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %11 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %10, i32 0, i32 0
  %12 = load %struct.nbpcb*, %struct.nbpcb** %11, align 8
  store %struct.nbpcb* %12, %struct.nbpcb** %8, align 8
  %13 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %14 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NBST_SESSION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOTCONN, align 4
  store i32 %19, i32* %9, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i32 @M_PREPEND(%struct.mbuf* %21, i32 4, i32 %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = load i32, i32* @NB_SSN_MESSAGE, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = call i64 @m_fixhdr(%struct.mbuf* %26)
  %28 = sub nsw i64 %27, 4
  %29 = call i32 @nb_sethdr(%struct.mbuf* %24, i32 %25, i64 %28)
  %30 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %31 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = load %struct.thread*, %struct.thread** %7, align 8
  %35 = call i32 @nb_sosend(i32 %32, %struct.mbuf* %33, i32 0, %struct.thread* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = call i32 @m_freem(%struct.mbuf* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @M_PREPEND(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @nb_sethdr(%struct.mbuf*, i32, i64) #1

declare dso_local i64 @m_fixhdr(%struct.mbuf*) #1

declare dso_local i32 @nb_sosend(i32, %struct.mbuf*, i32, %struct.thread*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
