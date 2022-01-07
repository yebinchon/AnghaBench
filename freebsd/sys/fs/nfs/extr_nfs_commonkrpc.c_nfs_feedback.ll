; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_feedback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_feedback_arg = type { i32, i32, %struct.nfsmount*, i64 }
%struct.nfsmount = type { i64 }

@NFSD_MONOSEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"not responding\00", align 1
@NFSSTA_TIMEO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"is alive again\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @nfs_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_feedback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_feedback_arg*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs_feedback_arg*
  store %struct.nfs_feedback_arg* %11, %struct.nfs_feedback_arg** %7, align 8
  %12 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %13 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %12, i32 0, i32 2
  %14 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  store %struct.nfsmount* %14, %struct.nfsmount** %8, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %53 [
    i32 128, label %16
    i32 129, label %16
    i32 130, label %41
  ]

16:                                               ; preds = %3, %3
  %17 = load i64, i64* @NFSD_MONOSEC, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %22 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %29 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NFSSTA_TIMEO, align 4
  %33 = call i32 @nfs_down(%struct.nfsmount* %28, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 %32)
  %34 = load i32, i32* @TRUE, align 4
  %35 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %16
  br label %53

41:                                               ; preds = %3
  %42 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %42, i32 0, i32 2
  %44 = load %struct.nfsmount*, %struct.nfsmount** %43, align 8
  %45 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NFSSTA_TIMEO, align 4
  %49 = load %struct.nfs_feedback_arg*, %struct.nfs_feedback_arg** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_feedback_arg, %struct.nfs_feedback_arg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @nfs_up(%struct.nfsmount* %44, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %3, %41, %40
  ret void
}

declare dso_local i32 @nfs_down(%struct.nfsmount*, i32, i8*, i32, i32) #1

declare dso_local i32 @nfs_up(%struct.nfsmount*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
