; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.make_dev_args = type { i32, i32, i32, i32* }
%struct.cdev = type { i32 }

@kcov_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"kcov lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@kcov_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"kcov\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create kcov device\00", align 1
@thread_dtor = common dso_local global i32 0, align 4
@kcov_thread_dtor = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kcov_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcov_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.make_dev_args, align 8
  %4 = alloca %struct.cdev*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @MTX_SPIN, align 4
  %6 = call i32 @mtx_init(i32* @kcov_lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  %7 = call i32 @make_dev_args_init(%struct.make_dev_args* %3)
  %8 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 3
  store i32* @kcov_cdevsw, i32** %8, align 8
  %9 = load i32, i32* @UID_ROOT, align 4
  %10 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @GID_WHEEL, align 4
  %12 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 0
  store i32 384, i32* %13, align 8
  %14 = call i64 @make_dev_s(%struct.make_dev_args* %3, %struct.cdev** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @thread_dtor, align 4
  %20 = load i32, i32* @kcov_thread_dtor, align 4
  %21 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %22 = call i32 @EVENTHANDLER_REGISTER(i32 %19, i32 %20, i32* null, i32 %21)
  br label %23

23:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i64 @make_dev_s(%struct.make_dev_args*, %struct.cdev**, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
