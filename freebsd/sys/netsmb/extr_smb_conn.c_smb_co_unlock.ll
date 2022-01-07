; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i64, i64, i32, i32 }

@curthread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_co_unlock(%struct.smb_connobj* %0) #0 {
  %2 = alloca %struct.smb_connobj*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %2, align 8
  %3 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %4 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %3, i32 0, i32 3
  %5 = call i64 @sx_xholder(i32* %4)
  %6 = load i64, i64* @curthread, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %11 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @curthread, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %18 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %23 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %28 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.smb_connobj*, %struct.smb_connobj** %2, align 8
  %30 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %29, i32 0, i32 2
  %31 = call i32 @cv_signal(i32* %30)
  br label %32

32:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @sx_xholder(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
