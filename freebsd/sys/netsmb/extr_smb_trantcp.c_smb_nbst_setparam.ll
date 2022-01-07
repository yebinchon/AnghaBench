; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, i32, i8*)* @smb_nbst_setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_setparam(%struct.smb_vc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_vc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nbpcb*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %10 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %9, i32 0, i32 0
  %11 = load %struct.nbpcb*, %struct.nbpcb** %10, align 8
  store %struct.nbpcb* %11, %struct.nbpcb** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %17 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %16 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
