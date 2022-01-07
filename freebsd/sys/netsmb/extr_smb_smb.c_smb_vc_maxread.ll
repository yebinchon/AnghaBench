; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_vc_maxread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_vc_maxread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_CAP_LARGE_READX = common dso_local global i32 0, align 4
@SMB_FLAGS2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@SMB_HDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*)* @smb_vc_maxread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_vc_maxread(%struct.smb_vc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_vc*, align 8
  store %struct.smb_vc* %0, %struct.smb_vc** %3, align 8
  %4 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %5 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SMB_CAP_LARGE_READX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %13 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 61440, i32* %2, align 4
  br label %27

19:                                               ; preds = %11, %1
  %20 = load %struct.smb_vc*, %struct.smb_vc** %3, align 8
  %21 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMB_HDRLEN, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 64
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
