; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }

@M_SMBRQ = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMBR_ALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rq_alloc(%struct.smb_connobj* %0, i32 %1, %struct.smb_cred* %2, %struct.smb_rq** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_connobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca %struct.smb_rq**, align 8
  %10 = alloca %struct.smb_rq*, align 8
  %11 = alloca i32, align 4
  store %struct.smb_connobj* %0, %struct.smb_connobj** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.smb_cred* %2, %struct.smb_cred** %8, align 8
  store %struct.smb_rq** %3, %struct.smb_rq*** %9, align 8
  %12 = load i32, i32* @M_SMBRQ, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call %struct.smb_rq* @malloc(i32 4, i32 %12, i32 %13)
  store %struct.smb_rq* %14, %struct.smb_rq** %10, align 8
  %15 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %16 = icmp eq %struct.smb_rq* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %21 = load %struct.smb_connobj*, %struct.smb_connobj** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %24 = call i32 @smb_rq_init(%struct.smb_rq* %20, %struct.smb_connobj* %21, i32 %22, %struct.smb_cred* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @SMBR_ALLOCED, align 4
  %26 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %27 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %34 = call i32 @smb_rq_done(%struct.smb_rq* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %19
  %37 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %38 = load %struct.smb_rq**, %struct.smb_rq*** %9, align 8
  store %struct.smb_rq* %37, %struct.smb_rq** %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %32, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.smb_rq* @malloc(i32, i32, i32) #1

declare dso_local i32 @smb_rq_init(%struct.smb_rq*, %struct.smb_connobj*, i32, %struct.smb_cred*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
