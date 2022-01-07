; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_wake_umutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_wake_umutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.umutex = type { i32, i32 }
%struct.umtx_key = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@TYPE_NORMAL_UMUTEX = common dso_local global i32 0, align 4
@UMUTEX_UNOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*)* @do_wake_umutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_wake_umutex(%struct.thread* %0, %struct.umutex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.umutex*, align 8
  %6 = alloca %struct.umtx_key, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.umutex* %1, %struct.umutex** %5, align 8
  br label %11

11:                                               ; preds = %90, %2
  %12 = load %struct.umutex*, %struct.umutex** %5, align 8
  %13 = getelementptr inbounds %struct.umutex, %struct.umutex* %12, i32 0, i32 0
  %14 = call i32 @fueword32(i32* %13, i32* %7)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EFAULT, align 4
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %124

34:                                               ; preds = %29, %25, %19
  %35 = load %struct.umutex*, %struct.umutex** %5, align 8
  %36 = getelementptr inbounds %struct.umutex, %struct.umutex* %35, i32 0, i32 1
  %37 = call i32 @fueword32(i32* %36, i32* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EFAULT, align 4
  store i32 %41, i32* %3, align 4
  br label %124

42:                                               ; preds = %34
  %43 = load %struct.umutex*, %struct.umutex** %5, align 8
  %44 = load i32, i32* @TYPE_NORMAL_UMUTEX, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @GET_SHARE(i32 %45)
  %47 = call i32 @umtx_key_get(%struct.umutex* %43, i32 %44, i32 %46, %struct.umtx_key* %6)
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %124

51:                                               ; preds = %42
  %52 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %53 = call i32 @umtxq_busy(%struct.umtx_key* %6)
  %54 = call i32 @umtxq_count(%struct.umtx_key* %6)
  store i32 %54, i32* %10, align 4
  %55 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %56 = load i32, i32* %10, align 4
  %57 = icmp sle i32 %56, 1
  br i1 %57, label %58, label %93

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = load %struct.umutex*, %struct.umutex** %5, align 8
  %68 = getelementptr inbounds %struct.umutex, %struct.umutex* %67, i32 0, i32 0
  %69 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %70 = load i32, i32* @UMUTEX_UNOWNED, align 4
  %71 = call i32 @casueword32(i32* %68, i32 %69, i32* %7, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EFAULT, align 4
  store i32 %75, i32* %9, align 4
  br label %92

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %81 = call i32 @umtxq_unbusy(%struct.umtx_key* %6)
  %82 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %83 = call i32 @umtx_key_release(%struct.umtx_key* %6)
  %84 = load %struct.thread*, %struct.thread** %4, align 8
  %85 = call i32 @umtxq_check_susp(%struct.thread* %84, i32 0)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %124

90:                                               ; preds = %79
  br label %11

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %74
  br label %93

93:                                               ; preds = %92, %62, %58, %51
  %94 = call i32 @umtxq_lock(%struct.umtx_key* %6)
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %106, %100
  %115 = phi i1 [ true, %106 ], [ true, %100 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @MPASS(i32 %116)
  %118 = call i32 @umtxq_signal(%struct.umtx_key* %6, i32 1)
  br label %119

119:                                              ; preds = %114, %97, %93
  %120 = call i32 @umtxq_unbusy(%struct.umtx_key* %6)
  %121 = call i32 @umtxq_unlock(%struct.umtx_key* %6)
  %122 = call i32 @umtx_key_release(%struct.umtx_key* %6)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %88, %49, %40, %33, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct.umutex*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_busy(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_count(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_unlock(%struct.umtx_key*) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @umtxq_unbusy(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtxq_signal(%struct.umtx_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
