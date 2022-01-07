; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.per_user_data = type { i32 }
%struct.user_evtchn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_EVTCHN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @evtchn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.per_user_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.user_evtchn*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.per_user_data** %12 to i8**
  %16 = call i32 @devfs_get_cdevpriv(i8** %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @M_EVTCHN, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call i32* @malloc(i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, -4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %92

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = call i32 @uiomove(i32* %43, i32 %44, %struct.uio* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %92

50:                                               ; preds = %42
  %51 = load %struct.per_user_data*, %struct.per_user_data** %12, align 8
  %52 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %51, i32 0, i32 0
  %53 = call i32 @mtx_lock(i32* %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %85, %50
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 4
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.per_user_data*, %struct.per_user_data** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.user_evtchn* @find_evtchn(%struct.per_user_data* %67, i32 %68)
  store %struct.user_evtchn* %69, %struct.user_evtchn** %14, align 8
  %70 = load %struct.user_evtchn*, %struct.user_evtchn** %14, align 8
  %71 = icmp ne %struct.user_evtchn* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = load %struct.user_evtchn*, %struct.user_evtchn** %14, align 8
  %74 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.user_evtchn*, %struct.user_evtchn** %14, align 8
  %79 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.user_evtchn*, %struct.user_evtchn** %14, align 8
  %81 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @evtchn_unmask_port(i32 %82)
  br label %84

84:                                               ; preds = %77, %72, %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %54

88:                                               ; preds = %54
  %89 = load %struct.per_user_data*, %struct.per_user_data** %12, align 8
  %90 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %89, i32 0, i32 0
  %91 = call i32 @mtx_unlock(i32* %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %49, %35
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @M_EVTCHN, align 4
  %95 = call i32 @free(i32* %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.user_evtchn* @find_evtchn(%struct.per_user_data*, i32) #1

declare dso_local i32 @evtchn_unmask_port(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
