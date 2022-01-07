; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MAKEDEV_ETERNAL = common dso_local global i32 0, align 4
@dev_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"devctl\00", align 1
@devctl_dev = common dso_local global i32 0, align 4
@devsoftc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dev mtx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"devd\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"dev cv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @devinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devinit() #0 {
  %1 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %2 = load i32, i32* @UID_ROOT, align 4
  %3 = load i32, i32* @GID_WHEEL, align 4
  %4 = call i32 @make_dev_credf(i32 %1, i32* @dev_cdevsw, i32 0, i32* null, i32 %2, i32 %3, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @devctl_dev, align 4
  %5 = load i32, i32* @MTX_DEF, align 4
  %6 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = call i32 @cv_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 3), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 2))
  %9 = call i32 @knlist_init_mtx(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 1, i32 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 0))
  %10 = call i32 (...) @devctl2_init()
  ret void
}

declare dso_local i32 @make_dev_credf(i32, i32*, i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @devctl2_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
