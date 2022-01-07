; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { %struct.nbpcb*, %struct.nbpcb* }
%struct.thread = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@M_NBDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, %struct.thread*)* @smb_nbst_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_done(%struct.smb_vc* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nbpcb*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %7 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %8 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %7, i32 0, i32 0
  %9 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  store %struct.nbpcb* %9, %struct.nbpcb** %6, align 8
  %10 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %11 = icmp eq %struct.nbpcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOTCONN, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = call i32 @smb_nbst_disconnect(%struct.smb_vc* %15, %struct.thread* %16)
  %18 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %19 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %18, i32 0, i32 1
  %20 = load %struct.nbpcb*, %struct.nbpcb** %19, align 8
  %21 = icmp ne %struct.nbpcb* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %24 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %23, i32 0, i32 1
  %25 = load %struct.nbpcb*, %struct.nbpcb** %24, align 8
  %26 = load i32, i32* @M_SONAME, align 4
  %27 = call i32 @free(%struct.nbpcb* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %14
  %29 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %30 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %29, i32 0, i32 0
  %31 = load %struct.nbpcb*, %struct.nbpcb** %30, align 8
  %32 = icmp ne %struct.nbpcb* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %35 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %34, i32 0, i32 0
  %36 = load %struct.nbpcb*, %struct.nbpcb** %35, align 8
  %37 = load i32, i32* @M_SONAME, align 4
  %38 = call i32 @free(%struct.nbpcb* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.nbpcb*, %struct.nbpcb** %6, align 8
  %41 = load i32, i32* @M_NBDATA, align 4
  %42 = call i32 @free(%struct.nbpcb* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @smb_nbst_disconnect(%struct.smb_vc*, %struct.thread*) #1

declare dso_local i32 @free(%struct.nbpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
