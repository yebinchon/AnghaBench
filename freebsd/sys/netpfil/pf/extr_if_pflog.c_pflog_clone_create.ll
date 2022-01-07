; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pflog.c_pflog_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pflog.c_pflog_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.if_clone = type { i32 }

@PFLOGIFS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFT_PFLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@pflogname = common dso_local global i32 0, align 4
@PFLOGMTU = common dso_local global i32 0, align 4
@pflogioctl = common dso_local global i32 0, align 4
@pflogoutput = common dso_local global i32 0, align 4
@pflogstart = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@PFLOG_HDRLEN = common dso_local global i32 0, align 4
@DLT_PFLOG = common dso_local global i32 0, align 4
@V_pflogifs = common dso_local global %struct.ifnet** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @pflog_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pflog_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PFLOGIFS_MAX, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load i32, i32* @IFT_PFLOG, align 4
  %16 = call %struct.ifnet* @if_alloc(i32 %15)
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %18 = icmp eq %struct.ifnet* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %23 = load i32, i32* @pflogname, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @if_initname(%struct.ifnet* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @PFLOGMTU, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @pflogioctl, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @pflogoutput, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @pflogstart, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ifqmaxlen, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @PFLOG_HDRLEN, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %46 = call i32 @if_attach(%struct.ifnet* %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %48 = load i32, i32* @DLT_PFLOG, align 4
  %49 = load i32, i32* @PFLOG_HDRLEN, align 4
  %50 = call i32 @bpfattach(%struct.ifnet* %47, i32 %48, i32 %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %52 = load %struct.ifnet**, %struct.ifnet*** @V_pflogifs, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %52, i64 %54
  store %struct.ifnet* %51, %struct.ifnet** %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %21, %19, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
