; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acctwatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acctwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.statfs = type { i64, i32 }

@acct_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@acct_vp = common dso_local global %struct.TYPE_2__* null, align 8
@ACCT_EXITREQ = common dso_local global i32 0, align 4
@acct_state = common dso_local global i32 0, align 4
@VBAD = common dso_local global i64 0, align 8
@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@acct_suspended = common dso_local global i32 0, align 4
@acctresume = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Accounting resumed\0A\00", align 1
@acctsuspend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Accounting suspended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acctwatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acctwatch() #0 {
  %1 = alloca %struct.statfs*, align 8
  %2 = load i32, i32* @SX_XLOCKED, align 4
  %3 = call i32 @sx_assert(i32* @acct_sx, i32 %2)
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acct_vp, align 8
  %5 = icmp eq %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @ACCT_EXITREQ, align 4
  %8 = load i32, i32* @acct_state, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @acct_state, align 4
  br label %74

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acct_vp, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VBAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = call i32 @acct_disable(i32* null, i32 1)
  %18 = load i32, i32* @ACCT_EXITREQ, align 4
  %19 = load i32, i32* @acct_state, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @acct_state, align 4
  br label %74

21:                                               ; preds = %10
  %22 = load i32, i32* @M_STATFS, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call %struct.statfs* @malloc(i32 16, i32 %22, i32 %23)
  store %struct.statfs* %24, %struct.statfs** %1, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acct_vp, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.statfs*, %struct.statfs** %1, align 8
  %29 = call i64 @VFS_STATFS(i32 %27, %struct.statfs* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.statfs*, %struct.statfs** %1, align 8
  %33 = load i32, i32* @M_STATFS, align 4
  %34 = call i32 @free(%struct.statfs* %32, i32 %33)
  br label %74

35:                                               ; preds = %21
  %36 = load i32, i32* @acct_suspended, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.statfs*, %struct.statfs** %1, align 8
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @acctresume, align 4
  %43 = load %struct.statfs*, %struct.statfs** %1, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 100
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %41, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  store i32 0, i32* @acct_suspended, align 4
  %51 = load i32, i32* @LOG_NOTICE, align 4
  %52 = call i32 @log(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %38
  br label %70

54:                                               ; preds = %35
  %55 = load %struct.statfs*, %struct.statfs** %1, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @acctsuspend, align 4
  %59 = load %struct.statfs*, %struct.statfs** %1, align 8
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sdiv i32 %62, 100
  %64 = sext i32 %63 to i64
  %65 = icmp sle i64 %57, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  store i32 1, i32* @acct_suspended, align 4
  %67 = load i32, i32* @LOG_NOTICE, align 4
  %68 = call i32 @log(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %54
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.statfs*, %struct.statfs** %1, align 8
  %72 = load i32, i32* @M_STATFS, align 4
  %73 = call i32 @free(%struct.statfs* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %31, %16, %6
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @acct_disable(i32*, i32) #1

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i64 @VFS_STATFS(i32, %struct.statfs*) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
