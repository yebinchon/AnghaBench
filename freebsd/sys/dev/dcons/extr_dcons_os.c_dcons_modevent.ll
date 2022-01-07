; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@dcons_consdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dcons: unload\0A\00", align 1
@drv_init = common dso_local global i32 0, align 4
@dcons_callout = common dso_local global i32 0, align 4
@DCONS_CON = common dso_local global i32 0, align 4
@DCONS_GDB = common dso_local global i32 0, align 4
@dg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@DCONS_BUF_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@dcons_close_refs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dcunld\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @dcons_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcons_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %51 [
    i32 130, label %10
    i32 128, label %24
    i32 129, label %50
  ]

10:                                               ; preds = %3
  %11 = call i32 @dcons_drv_init(i32 1)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @dcons_attach()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @dcons_cnprobe(i32* @dcons_consdev)
  %21 = call i32 @dcons_cninit(i32* @dcons_consdev)
  %22 = call i32 @cnadd(i32* @dcons_consdev)
  br label %23

23:                                               ; preds = %19, %16
  br label %53

24:                                               ; preds = %3
  %25 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @drv_init, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = call i32 @callout_stop(i32* @dcons_callout)
  %30 = call i32 @cnremove(i32* @dcons_consdev)
  %31 = load i32, i32* @DCONS_CON, align 4
  %32 = call i32 @dcons_detach(i32 %31)
  %33 = load i32, i32* @DCONS_GDB, align 4
  %34 = call i32 @dcons_detach(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dg, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dg, i32 0, i32 0), align 8
  %38 = load i32, i32* @DCONS_BUF_SIZE, align 4
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = call i32 @contigfree(%struct.TYPE_4__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %28, %24
  br label %42

42:                                               ; preds = %45, %41
  %43 = call i32 @atomic_load_acq_int(i32* @dcons_close_refs)
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 @mstosbt(i32 50)
  %47 = call i32 @mstosbt(i32 10)
  %48 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 0)
  br label %42

49:                                               ; preds = %42
  br label %53

50:                                               ; preds = %3
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %50, %49, %23
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @dcons_drv_init(i32) #1

declare dso_local i32 @dcons_attach(...) #1

declare dso_local i32 @dcons_cnprobe(i32*) #1

declare dso_local i32 @dcons_cninit(i32*) #1

declare dso_local i32 @cnadd(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @cnremove(i32*) #1

declare dso_local i32 @dcons_detach(i32) #1

declare dso_local i32 @contigfree(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @mstosbt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
