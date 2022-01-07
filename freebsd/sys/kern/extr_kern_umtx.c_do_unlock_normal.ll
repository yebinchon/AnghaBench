; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_unlock_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_unlock_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.umutex = type { i32 }
%struct.umtx_key = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TYPE_NORMAL_UMUTEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, i32, i32)* @do_unlock_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unlock_normal(%struct.thread* %0, %struct.umutex* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.umutex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.umtx_key, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.umutex* %1, %struct.umutex** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %123, %65, %4
  %21 = load %struct.umutex*, %struct.umutex** %7, align 8
  %22 = getelementptr inbounds %struct.umutex, %struct.umutex* %21, i32 0, i32 0
  %23 = call i32 @fueword32(i32* %22, i32* %11)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EFAULT, align 4
  store i32 %27, i32* %5, align 4
  br label %125

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EPERM, align 4
  store i32 %36, i32* %5, align 4
  br label %125

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @umtx_unlock_val(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = load %struct.umutex*, %struct.umutex** %7, align 8
  %47 = getelementptr inbounds %struct.umutex, %struct.umutex* %46, i32 0, i32 0
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @casueword32(i32* %47, i32 %48, i32* %12, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @EFAULT, align 4
  store i32 %54, i32* %5, align 4
  br label %125

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.thread*, %struct.thread** %6, align 8
  %60 = call i32 @umtxq_check_susp(%struct.thread* %59, i32 0)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  br label %125

65:                                               ; preds = %58
  br label %20

66:                                               ; preds = %55
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @MPASS(i32 %70)
  store i32 0, i32* %5, align 4
  br label %125

72:                                               ; preds = %37
  %73 = load %struct.umutex*, %struct.umutex** %7, align 8
  %74 = load i32, i32* @TYPE_NORMAL_UMUTEX, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @GET_SHARE(i32 %75)
  %77 = call i32 @umtx_key_get(%struct.umutex* %73, i32 %74, i32 %76, %struct.umtx_key* %10)
  store i32 %77, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  br label %125

81:                                               ; preds = %72
  %82 = call i32 @umtxq_lock(%struct.umtx_key* %10)
  %83 = call i32 @umtxq_busy(%struct.umtx_key* %10)
  %84 = call i32 @umtxq_count(%struct.umtx_key* %10)
  store i32 %84, i32* %16, align 4
  %85 = call i32 @umtxq_unlock(%struct.umtx_key* %10)
  %86 = load i32, i32* %16, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.umutex*, %struct.umutex** %7, align 8
  %94 = getelementptr inbounds %struct.umutex, %struct.umutex* %93, i32 0, i32 0
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @casueword32(i32* %94, i32 %95, i32* %12, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = call i32 @umtxq_lock(%struct.umtx_key* %10)
  %99 = call i32 @umtxq_signal(%struct.umtx_key* %10, i32 1)
  %100 = call i32 @umtxq_unbusy(%struct.umtx_key* %10)
  %101 = call i32 @umtxq_unlock(%struct.umtx_key* %10)
  %102 = call i32 @umtx_key_release(%struct.umtx_key* %10)
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* @EFAULT, align 4
  store i32 %106, i32* %5, align 4
  br label %125

107:                                              ; preds = %92
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %5, align 4
  br label %125

116:                                              ; preds = %110
  %117 = load %struct.thread*, %struct.thread** %6, align 8
  %118 = call i32 @umtxq_check_susp(%struct.thread* %117, i32 0)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %5, align 4
  br label %125

123:                                              ; preds = %116
  br label %20

124:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %121, %114, %105, %79, %66, %63, %53, %35, %26
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_unlock_val(i32, i32) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtx_key_get(%struct.umutex*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_busy(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_count(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_unlock(%struct.umtx_key*) #1

declare dso_local i32 @umtxq_signal(%struct.umtx_key*, i32) #1

declare dso_local i32 @umtxq_unbusy(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
