; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_rele.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_rele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32, i32, i32, i32 }
%struct.smb_cred = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"negative use_count for object %d\00", align 1
@SMBO_GONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_co_rele(%struct.smb_connobj* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca %struct.smb_connobj*, align 8
  %4 = alloca %struct.smb_cred*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %3, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %4, align 8
  %5 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %6 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %5, i32 0, i32 1
  %7 = call i32 @sx_xlock(i32* %6)
  %8 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %9 = call i32 @smb_co_unlock(%struct.smb_connobj* %8)
  %10 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %11 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %16 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %20 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %19, i32 0, i32 1
  %21 = call i32 @sx_unlock(i32* %20)
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %24 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %29 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SMBERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %33 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %32, i32 0, i32 1
  %34 = call i32 @sx_unlock(i32* %33)
  br label %51

35:                                               ; preds = %22
  %36 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %37 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @SMBO_GONE, align 4
  %41 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %42 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %46 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %45, i32 0, i32 1
  %47 = call i32 @sx_unlock(i32* %46)
  %48 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %49 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %50 = call i32 @smb_co_gone(%struct.smb_connobj* %48, %struct.smb_cred* %49)
  br label %51

51:                                               ; preds = %35, %27, %14
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_unlock(%struct.smb_connobj*) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @SMBERROR(i8*, i32) #1

declare dso_local i32 @smb_co_gone(%struct.smb_connobj*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
