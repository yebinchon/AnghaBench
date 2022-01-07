; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_port_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_port_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.target* }
%struct.target = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.ctl_lun_map = type { i32, i64, i32 }

@MAX_LUNS = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i8* null, align 8
@ctl_fd = common dso_local global i32 0, align 4
@CTL_LUN_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CTL_LUN_MAP ioctl failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_port_update(%struct.port* %0, %struct.port* %1) #0 {
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.ctl_lun_map, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca %struct.target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  store %struct.port* %1, %struct.port** %4, align 8
  %11 = load %struct.port*, %struct.port** %3, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 1
  %13 = load %struct.target*, %struct.target** %12, align 8
  store %struct.target* %13, %struct.target** %6, align 8
  %14 = load %struct.port*, %struct.port** %4, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 1
  %16 = load %struct.target*, %struct.target** %15, align 8
  store %struct.target* %16, %struct.target** %7, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %88, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MAX_LUNS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load %struct.port*, %struct.port** %3, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.target*, %struct.target** %6, align 8
  %29 = getelementptr inbounds %struct.target, %struct.target* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i8*, i8** @UINT32_MAX, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  br label %51

40:                                               ; preds = %21
  %41 = load %struct.target*, %struct.target** %6, align 8
  %42 = getelementptr inbounds %struct.target, %struct.target* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %36
  %52 = load %struct.target*, %struct.target** %7, align 8
  %53 = getelementptr inbounds %struct.target, %struct.target* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp eq %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** @UINT32_MAX, align 8
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %10, align 8
  br label %73

63:                                               ; preds = %51
  %64 = load %struct.target*, %struct.target** %7, align 8
  %65 = getelementptr inbounds %struct.target, %struct.target* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %63, %60
  %74 = getelementptr inbounds %struct.ctl_lun_map, %struct.ctl_lun_map* %5, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %88

79:                                               ; preds = %73
  %80 = load i32, i32* @ctl_fd, align 4
  %81 = load i32, i32* @CTL_LUN_MAP, align 4
  %82 = call i32 @ioctl(i32 %80, i32 %81, %struct.ctl_lun_map* %5)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @log_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %17

91:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_lun_map*) #1

declare dso_local i32 @log_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
