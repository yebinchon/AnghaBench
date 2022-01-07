; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_gone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32 (%struct.smb_connobj*)*, i32, i32, %struct.smb_connobj*, i32 (%struct.smb_connobj*, %struct.smb_cred*)* }
%struct.smb_cred = type { i32 }

@smb_connobj = common dso_local global i32 0, align 4
@co_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_connobj*, %struct.smb_cred*)* @smb_co_gone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_co_gone(%struct.smb_connobj* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca %struct.smb_connobj*, align 8
  %4 = alloca %struct.smb_cred*, align 8
  %5 = alloca %struct.smb_connobj*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %3, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %4, align 8
  %6 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %7 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %6, i32 0, i32 4
  %8 = load i32 (%struct.smb_connobj*, %struct.smb_cred*)*, i32 (%struct.smb_connobj*, %struct.smb_cred*)** %7, align 8
  %9 = icmp ne i32 (%struct.smb_connobj*, %struct.smb_cred*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %12 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %11, i32 0, i32 4
  %13 = load i32 (%struct.smb_connobj*, %struct.smb_cred*)*, i32 (%struct.smb_connobj*, %struct.smb_cred*)** %12, align 8
  %14 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %15 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %16 = call i32 %13(%struct.smb_connobj* %14, %struct.smb_cred* %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %19 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %18, i32 0, i32 3
  %20 = load %struct.smb_connobj*, %struct.smb_connobj** %19, align 8
  store %struct.smb_connobj* %20, %struct.smb_connobj** %5, align 8
  %21 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %22 = icmp ne %struct.smb_connobj* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %25 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %24, i32 0, i32 2
  %26 = call i32 @sx_xlock(i32* %25)
  %27 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %28 = call i32 @smb_co_lock(%struct.smb_connobj* %27)
  %29 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %30 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %29, i32 0, i32 2
  %31 = call i32 @sx_unlock(i32* %30)
  %32 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %33 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %32, i32 0, i32 1
  %34 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %35 = load i32, i32* @smb_connobj, align 4
  %36 = load i32, i32* @co_next, align 4
  %37 = call i32 @SLIST_REMOVE(i32* %33, %struct.smb_connobj* %34, i32 %35, i32 %36)
  %38 = load %struct.smb_connobj*, %struct.smb_connobj** %5, align 8
  %39 = load %struct.smb_cred*, %struct.smb_cred** %4, align 8
  %40 = call i32 @smb_co_put(%struct.smb_connobj* %38, %struct.smb_cred* %39)
  br label %41

41:                                               ; preds = %23, %17
  %42 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %43 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %42, i32 0, i32 0
  %44 = load i32 (%struct.smb_connobj*)*, i32 (%struct.smb_connobj*)** %43, align 8
  %45 = icmp ne i32 (%struct.smb_connobj*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %48 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %47, i32 0, i32 0
  %49 = load i32 (%struct.smb_connobj*)*, i32 (%struct.smb_connobj*)** %48, align 8
  %50 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %51 = call i32 %49(%struct.smb_connobj* %50)
  br label %52

52:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @smb_co_lock(%struct.smb_connobj*) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.smb_connobj*, i32, i32) #1

declare dso_local i32 @smb_co_put(%struct.smb_connobj*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
