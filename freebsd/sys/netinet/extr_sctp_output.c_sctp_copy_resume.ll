; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.uio = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@M_EOR = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_OUTPUT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.uio*, i32, i32, i32*, i32*, %struct.mbuf**)* @sctp_copy_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @sctp_copy_resume(%struct.uio* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.mbuf** %5) #0 {
  %7 = alloca %struct.uio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca %struct.mbuf*, align 8
  store %struct.uio* %0, %struct.uio** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.mbuf** %5, %struct.mbuf*** %12, align 8
  %14 = load %struct.uio*, %struct.uio** %7, align 8
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @M_PKTHDR, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @M_EOR, align 4
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %17, %24
  %26 = call %struct.mbuf* @m_uiotombuf(%struct.uio* %14, i32 %15, i32 %16, i32 0, i32 %25)
  store %struct.mbuf* %26, %struct.mbuf** %13, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, i32* null, i32* null, i32 %30, i32 %31)
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %37 = call i32 @m_length(%struct.mbuf* %36, i32* null)
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %40 = call %struct.mbuf* @m_last(%struct.mbuf* %39)
  %41 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* %40, %struct.mbuf** %41, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  ret %struct.mbuf* %43
}

declare dso_local %struct.mbuf* @m_uiotombuf(%struct.uio*, i32, i32, i32, i32) #1

declare dso_local i32 @SCTP_LTRACE_ERR_RET(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local %struct.mbuf* @m_last(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
