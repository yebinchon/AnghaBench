; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_system_pd = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Detaching syspd\0A\00", align 1
@DISKFLAG_OPEN = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Cant detach syspd\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pd_link = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfi_syspd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_syspd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_system_pd*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mfi_system_pd* @device_get_softc(i32 %5)
  store %struct.mfi_system_pd* %6, %struct.mfi_system_pd** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_printf(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %10 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %15 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DISKFLAG_OPEN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %24 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %22, %1
  %30 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %31 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %38 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36, %29
  %44 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %45 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EBUSY, align 4
  store i32 %51, i32* %2, align 4
  br label %84

52:                                               ; preds = %36, %22
  %53 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %54 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %59 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @disk_destroy(%struct.TYPE_4__* %60)
  %62 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %63 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @mtx_lock(i32* %65)
  %67 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %68 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %72 = load i32, i32* @pd_link, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %70, %struct.mfi_system_pd* %71, i32 %72)
  %74 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %75 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %4, align 8
  %80 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @M_MFIBUF, align 4
  %83 = call i32 @free(i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %52, %43
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.mfi_system_pd* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @disk_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mfi_system_pd*, i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
