; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_share_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i64, i32, i32 }
%struct.smb_cred = type { %struct.ucred* }
%struct.ucred = type { i64 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_share_access(%struct.smb_share* %0, %struct.smb_cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca %struct.smb_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.smb_cred*, %struct.smb_cred** %6, align 8
  %10 = getelementptr inbounds %struct.smb_cred, %struct.smb_cred* %9, i32 0, i32 0
  %11 = load %struct.ucred*, %struct.ucred** %10, align 8
  store %struct.ucred* %11, %struct.ucred** %8, align 8
  %12 = load %struct.ucred*, %struct.ucred** %8, align 8
  %13 = call i64 @smb_suser(%struct.ucred* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.ucred*, %struct.ucred** %8, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %20 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %49

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %7, align 4
  %27 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %28 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ucred*, %struct.ucred** %8, align 8
  %31 = call i32 @groupmember(i32 %29, %struct.ucred* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 3
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %38 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EACCES, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @smb_suser(%struct.ucred*) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
