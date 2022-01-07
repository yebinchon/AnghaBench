; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_newnfs_sndlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_newnfs_sndlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NFSR_SNDLOCK = common dso_local global i32 0, align 4
@NFSR_WANTSND = common dso_local global i32 0, align 4
@NFSSOCKMUTEXPTR = common dso_local global i32 0, align 4
@PZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"nfsndlck\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newnfs_sndlock(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.timespec, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @NFSLOCKSOCK()
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NFSR_SNDLOCK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load i32, i32* @NFSR_WANTSND, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = load i32, i32* @NFSSOCKMUTEXPTR, align 4
  %21 = load i64, i64* @PZERO, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @nfsmsleep(i32 %19, i32 %20, i64 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.timespec* %3)
  br label %5

24:                                               ; preds = %5
  %25 = load i32, i32* @NFSR_SNDLOCK, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = call i32 (...) @NFSUNLOCKSOCK()
  ret i32 0
}

declare dso_local i32 @NFSLOCKSOCK(...) #1

declare dso_local i32 @nfsmsleep(i32, i32, i64, i8*, %struct.timespec*) #1

declare dso_local i32 @NFSUNLOCKSOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
