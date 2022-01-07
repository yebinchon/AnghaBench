; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_suspend_cfgblocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_suspend_cfgblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.siba_devinfo*)* @siba_bhndb_suspend_cfgblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siba_bhndb_suspend_cfgblocks(i32 %0, %struct.siba_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siba_devinfo*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.siba_devinfo* %1, %struct.siba_devinfo** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.siba_devinfo*, %struct.siba_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %6
  %14 = load %struct.siba_devinfo*, %struct.siba_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %36

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = load %struct.siba_devinfo*, %struct.siba_devinfo** %4, align 8
  %28 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BHNDB_SUSPEND_RESOURCE(i32 %24, i32 %25, i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BHNDB_SUSPEND_RESOURCE(i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
