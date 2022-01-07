; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_sem2_wake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_sem2_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._usem2 = type { i32, i32 }
%struct.umtx_key = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_SEM = common dso_local global i32 0, align 4
@USEM_HAS_WAITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._usem2*)* @do_sem2_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sem2_wake(%struct.thread* %0, %struct._usem2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct._usem2*, align 8
  %6 = alloca %struct.umtx_key, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct._usem2* %1, %struct._usem2** %5, align 8
  %12 = load %struct._usem2*, %struct._usem2** %5, align 8
  %13 = getelementptr inbounds %struct._usem2, %struct._usem2* %12, i32 0, i32 1
  %14 = call i32 @fueword32(i32* %13, i32* %11)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EFAULT, align 4
  store i32 %18, i32* %3, align 4
  br label %91

19:                                               ; preds = %2
  %20 = load %struct._usem2*, %struct._usem2** %5, align 8
  %21 = load i32, i32* @TYPE_SEM, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @GET_SHARE(i32 %22)
  %24 = call i32 @umtx_key_get(%struct._usem2* %20, i32 %21, i32 %23, %struct.umtx_key* %6)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %19
  %29 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %30 = call i32 @umtxq_busy(%struct.umtx_key* %6)
  %31 = call i32 @umtxq_count(%struct.umtx_key* %6)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %84

37:                                               ; preds = %34
  %38 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %39 = load %struct._usem2*, %struct._usem2** %5, align 8
  %40 = getelementptr inbounds %struct._usem2, %struct._usem2* %39, i32 0, i32 0
  %41 = call i32 @fueword32(i32* %40, i32* %10)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %70, %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @USEM_HAS_WAITERS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = load %struct._usem2*, %struct._usem2** %5, align 8
  %54 = getelementptr inbounds %struct._usem2, %struct._usem2* %53, i32 0, i32 0
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @USEM_HAS_WAITERS, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @casueword32(i32* %54, i32 %55, i32* %10, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = call i32 @umtxq_check_susp(%struct.thread* %64, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %71

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %52
  br label %42

71:                                               ; preds = %68, %50
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @EFAULT, align 4
  store i32 %75, i32* %7, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %74
  %83 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  br label %84

84:                                               ; preds = %82, %34
  %85 = call i32 @umtxq_signal(%struct.umtx_key* %6, i32 1)
  br label %86

86:                                               ; preds = %84, %28
  %87 = call i32 @umtxq_unbusy(%struct.umtx_key* %6)
  %88 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %89 = call i32 @umtx_key_release(%struct.umtx_key* %6)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %26, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct._usem2*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_busy(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_count(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_unlock(%struct.umtx_key*) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtxq_signal(%struct.umtx_key*, i32) #1

declare dso_local i32 @umtxq_unbusy(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
