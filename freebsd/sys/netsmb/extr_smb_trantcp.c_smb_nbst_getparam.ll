; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_getparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_smb_nbst_getparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { %struct.nbpcb* }
%struct.nbpcb = type { i32, i32, %struct.timespec }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vc*, i32, i8*)* @smb_nbst_getparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_nbst_getparam(%struct.smb_vc* %0, i32 %1, i8* %2) #0 {
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
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 130, label %19
    i32 128, label %25
  ]

13:                                               ; preds = %3
  %14 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %15 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %21 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.timespec*
  %28 = load %struct.nbpcb*, %struct.nbpcb** %8, align 8
  %29 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %28, i32 0, i32 2
  %30 = bitcast %struct.timespec* %27 to i8*
  %31 = bitcast %struct.timespec* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %25, %19, %13
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
