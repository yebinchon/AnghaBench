; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_acct.c_acct_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@acct_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@acct_vp = common dso_local global i32* null, align 8
@acct_flags = common dso_local global i64 0, align 8
@acct_cred = common dso_local global i32* null, align 8
@acct_limit = common dso_local global i32 0, align 4
@acct_configured = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Accounting disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @acct_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acct_disable(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SX_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @acct_sx, i32 %6)
  %8 = load i32*, i32** @acct_vp, align 8
  %9 = load i64, i64* @acct_flags, align 8
  %10 = load i32*, i32** @acct_cred, align 8
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = call i32 @vn_close(i32* %8, i64 %9, i32* %10, %struct.thread* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** @acct_cred, align 8
  %14 = call i32 @crfree(i32* %13)
  %15 = load i32, i32* @acct_limit, align 4
  %16 = call i32 @lim_free(i32 %15)
  store i64 0, i64* @acct_configured, align 8
  store i32* null, i32** @acct_vp, align 8
  store i32* null, i32** @acct_cred, align 8
  store i64 0, i64* @acct_flags, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @LOG_NOTICE, align 4
  %21 = call i32 @log(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @vn_close(i32*, i64, i32*, %struct.thread*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @lim_free(i32) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
