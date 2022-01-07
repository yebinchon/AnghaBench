; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_match_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.h_fuse_match_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i64, i64, i64*, i64, i64 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*)* @fuse_match_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_match_cred(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  %6 = load %struct.ucred*, %struct.ucred** %4, align 8
  %7 = getelementptr inbounds %struct.ucred, %struct.ucred* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ucred*, %struct.ucred** %5, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.ucred*, %struct.ucred** %4, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ucred*, %struct.ucred** %5, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %13
  %22 = load %struct.ucred*, %struct.ucred** %4, align 8
  %23 = getelementptr inbounds %struct.ucred, %struct.ucred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ucred*, %struct.ucred** %5, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = load %struct.ucred*, %struct.ucred** %4, align 8
  %31 = getelementptr inbounds %struct.ucred, %struct.ucred* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ucred*, %struct.ucred** %5, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load %struct.ucred*, %struct.ucred** %4, align 8
  %43 = getelementptr inbounds %struct.ucred, %struct.ucred* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ucred*, %struct.ucred** %5, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.ucred*, %struct.ucred** %4, align 8
  %53 = getelementptr inbounds %struct.ucred, %struct.ucred* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ucred*, %struct.ucred** %5, align 8
  %58 = getelementptr inbounds %struct.ucred, %struct.ucred* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %64

62:                                               ; preds = %51, %41, %29, %21, %13, %2
  %63 = load i32, i32* @EPERM, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
