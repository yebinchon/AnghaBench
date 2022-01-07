; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_makescred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_makescred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_cred = type { %struct.ucred*, %struct.thread* }
%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_makescred(%struct.smb_cred* %0, %struct.thread* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.smb_cred*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ucred*, align 8
  store %struct.smb_cred* %0, %struct.smb_cred** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  %7 = load %struct.thread*, %struct.thread** %5, align 8
  %8 = icmp ne %struct.thread* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %12 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %11, i32 0, i32 1
  store %struct.thread* %10, %struct.thread** %12, align 8
  %13 = load %struct.ucred*, %struct.ucred** %6, align 8
  %14 = icmp ne %struct.ucred* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi %struct.ucred* [ %16, %15 ], [ %20, %17 ]
  %23 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %24 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %23, i32 0, i32 0
  store %struct.ucred* %22, %struct.ucred** %24, align 8
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %27 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %26, i32 0, i32 1
  store %struct.thread* null, %struct.thread** %27, align 8
  %28 = load %struct.ucred*, %struct.ucred** %6, align 8
  %29 = icmp ne %struct.ucred* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.ucred*, %struct.ucred** %6, align 8
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi %struct.ucred* [ %31, %30 ], [ null, %32 ]
  %35 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %36 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %35, i32 0, i32 0
  store %struct.ucred* %34, %struct.ucred** %36, align 8
  br label %37

37:                                               ; preds = %33, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
