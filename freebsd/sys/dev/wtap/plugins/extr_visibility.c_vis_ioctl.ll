; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_vis_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_vis_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.visibility_plugin = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.wtap_hal* }
%struct.wtap_hal = type { i32 }
%struct.link = type { i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown WTAP IOCTL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vis_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.visibility_plugin*, align 8
  %12 = alloca %struct.wtap_hal*, align 8
  %13 = alloca %struct.link, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.visibility_plugin*
  store %struct.visibility_plugin* %19, %struct.visibility_plugin** %11, align 8
  %20 = load %struct.visibility_plugin*, %struct.visibility_plugin** %11, align 8
  %21 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.wtap_hal*, %struct.wtap_hal** %22, align 8
  store %struct.wtap_hal* %23, %struct.wtap_hal** %12, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CRED_TO_VNET(i32 %26)
  %28 = call i32 @CURVNET_SET(i32 %27)
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %62 [
    i32 128, label %30
    i32 129, label %47
  ]

30:                                               ; preds = %5
  %31 = load i64, i64* %8, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.wtap_hal*, %struct.wtap_hal** %12, align 8
  %38 = getelementptr inbounds %struct.wtap_hal, %struct.wtap_hal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @medium_close(i32 %39)
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.wtap_hal*, %struct.wtap_hal** %12, align 8
  %43 = getelementptr inbounds %struct.wtap_hal, %struct.wtap_hal* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @medium_open(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %65

47:                                               ; preds = %5
  %48 = load i64, i64* %8, align 8
  %49 = inttoptr i64 %48 to %struct.link*
  %50 = bitcast %struct.link* %13 to i8*
  %51 = bitcast %struct.link* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = getelementptr inbounds %struct.link, %struct.link* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.visibility_plugin*, %struct.visibility_plugin** %11, align 8
  %57 = call i32 @del_link(%struct.visibility_plugin* %56, %struct.link* %13)
  br label %61

58:                                               ; preds = %47
  %59 = load %struct.visibility_plugin*, %struct.visibility_plugin** %11, align 8
  %60 = call i32 @add_link(%struct.visibility_plugin* %59, %struct.link* %13)
  br label %61

61:                                               ; preds = %58, %55
  br label %65

62:                                               ; preds = %5
  %63 = call i32 @DWTAP_PRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %61, %46
  %66 = call i32 (...) @CURVNET_RESTORE()
  %67 = load i32, i32* %15, align 4
  ret i32 %67
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CRED_TO_VNET(i32) #1

declare dso_local i32 @medium_close(i32) #1

declare dso_local i32 @medium_open(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @del_link(%struct.visibility_plugin*, %struct.link*) #1

declare dso_local i32 @add_link(%struct.visibility_plugin*, %struct.link*) #1

declare dso_local i32 @DWTAP_PRINTF(i8*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
