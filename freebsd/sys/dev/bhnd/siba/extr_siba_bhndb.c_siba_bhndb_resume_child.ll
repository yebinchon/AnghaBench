; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_resume_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_resume_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_3__**, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @siba_bhndb_resume_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_bhndb_resume_child(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.siba_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @device_get_parent(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @device_get_parent(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @BUS_SUSPEND_CHILD(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @device_is_suspended(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.siba_devinfo* @device_get_ivars(i64 %25)
  store %struct.siba_devinfo* %26, %struct.siba_devinfo** %6, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %65, %24
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %30 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %27
  %35 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %36 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %65

43:                                               ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @device_get_parent(i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %49 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BHNDB_RESUME_RESOURCE(i64 %45, i64 %46, i32 %47, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %62 = call i32 @siba_bhndb_suspend_cfgblocks(i64 %60, %struct.siba_devinfo* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %27

68:                                               ; preds = %27
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @bhnd_generic_br_resume_child(i64 %69, i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %76 = call i32 @siba_bhndb_suspend_cfgblocks(i64 %74, %struct.siba_devinfo* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %73, %59, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BUS_SUSPEND_CHILD(i64, i64) #1

declare dso_local i32 @device_is_suspended(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @BHNDB_RESUME_RESOURCE(i64, i64, i32, i32) #1

declare dso_local i32 @siba_bhndb_suspend_cfgblocks(i64, %struct.siba_devinfo*) #1

declare dso_local i32 @bhnd_generic_br_resume_child(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
