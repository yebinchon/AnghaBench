; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_process.c_usb_proc_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_process = type { i64, i32, i32, i32, i64, i32 }
%struct.usb_proc_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@pm_qentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_proc_mwait(%struct.usb_process* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.usb_process*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_proc_msg*, align 8
  %8 = alloca %struct.usb_proc_msg*, align 8
  store %struct.usb_process* %0, %struct.usb_process** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.usb_proc_msg*
  store %struct.usb_proc_msg* %10, %struct.usb_proc_msg** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.usb_proc_msg*
  store %struct.usb_proc_msg* %12, %struct.usb_proc_msg** %8, align 8
  %13 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %14 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %91

18:                                               ; preds = %3
  %19 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %20 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @USB_MTX_ASSERT(i32 %21, i32 %22)
  %24 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %25 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @curthread, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %18
  %30 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %31 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %37 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %36, i32 0, i32 5
  %38 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %39 = load i32, i32* @pm_qentry, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.usb_proc_msg* %38, i32 %39)
  %41 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %42 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %35, %29
  %45 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %46 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %52 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %51, i32 0, i32 5
  %53 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %54 = load i32, i32* @pm_qentry, align 4
  %55 = call i32 @TAILQ_REMOVE(i32* %52, %struct.usb_proc_msg* %53, i32 %54)
  %56 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %57 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %50, %44
  br label %91

60:                                               ; preds = %18
  br label %61

61:                                               ; preds = %81, %60
  %62 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %63 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %69 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i1 [ true, %61 ], [ %72, %67 ]
  br i1 %74, label %75, label %90

75:                                               ; preds = %73
  %76 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %77 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %90

81:                                               ; preds = %75
  %82 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %83 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %85 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %84, i32 0, i32 3
  %86 = load %struct.usb_process*, %struct.usb_process** %4, align 8
  %87 = getelementptr inbounds %struct.usb_process, %struct.usb_process* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cv_wait(i32* %85, i32 %88)
  br label %61

90:                                               ; preds = %80, %73
  br label %91

91:                                               ; preds = %17, %90, %59
  ret void
}

declare dso_local i32 @USB_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_proc_msg*, i32) #1

declare dso_local i32 @cv_wait(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
