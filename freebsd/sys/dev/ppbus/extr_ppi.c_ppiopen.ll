; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppi.c_ppiopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ppi_data* }
%struct.ppi_data = type { i32, i32, i32 }
%struct.thread = type { i32 }

@HAVE_PPBUS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@PPB_DONTWAIT = common dso_local global i32 0, align 4
@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ppiopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppiopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ppi_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %14 = load %struct.cdev*, %struct.cdev** %6, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.ppi_data*, %struct.ppi_data** %15, align 8
  store %struct.ppi_data* %16, %struct.ppi_data** %10, align 8
  %17 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %18 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %23 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %22, i32 0, i32 1
  %24 = call i32 @sx_xlock(i32* %23)
  %25 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %26 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HAVE_PPBUS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @ppb_lock(i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @PPB_DONTWAIT, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @PPB_WAIT, align 4
  %44 = load i32, i32* @PPB_INTR, align 4
  %45 = or i32 %43, %44
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  %48 = call i32 @ppb_request_bus(i32 %34, i32 %35, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ppb_unlock(i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %55 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %54, i32 0, i32 1
  %56 = call i32 @sx_xunlock(i32* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %46
  %59 = load i32, i32* @HAVE_PPBUS, align 4
  %60 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %61 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %4
  %65 = load %struct.ppi_data*, %struct.ppi_data** %10, align 8
  %66 = getelementptr inbounds %struct.ppi_data, %struct.ppi_data* %65, i32 0, i32 1
  %67 = call i32 @sx_xunlock(i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %53
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
