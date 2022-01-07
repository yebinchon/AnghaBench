; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32, i32, i32 }
%struct.smb_cred = type { i32 }

@SMBO_GONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"negative usecount\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_co_put(%struct.smb_connobj* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca %struct.smb_connobj*, align 8
  %4 = alloca %struct.smb_cred*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %3, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %4, align 8
  %5 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %6 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %5, i32 0, i32 2
  %7 = call i32 @sx_xlock(i32* %6)
  %8 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %9 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %14 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %19 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %24 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @SMBO_GONE, align 4
  %28 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %29 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %34

32:                                               ; preds = %17
  %33 = call i32 @SMBERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %37 = call i32 @smb_co_unlock(%struct.smb_connobj* %36)
  %38 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %39 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %38, i32 0, i32 2
  %40 = call i32 @sx_unlock(i32* %39)
  %41 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %42 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SMBO_GONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35
  %49 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %50 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %51 = call i32 @smb_co_gone(%struct.smb_connobj* %49, %struct.smb_cred* %50)
  br label %52

52:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i32 @smb_co_unlock(%struct.smb_connobj*) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @smb_co_gone(%struct.smb_connobj*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
