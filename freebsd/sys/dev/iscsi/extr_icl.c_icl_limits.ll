; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.icl_drv_limits = type { i64, i64, i64, i64 }
%struct.icl_module = type { i32 (%struct.icl_drv_limits.0*)* }
%struct.icl_drv_limits.0 = type opaque

@sc = common dso_local global %struct.TYPE_2__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icl_limits(i8* %0, i32 %1, %struct.icl_drv_limits* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icl_drv_limits*, align 8
  %8 = alloca %struct.icl_module*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.icl_drv_limits* %2, %struct.icl_drv_limits** %7, align 8
  %10 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %11 = call i32 @bzero(%struct.icl_drv_limits* %10, i32 32)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @sx_slock(i32* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.icl_module* @icl_find(i8* %15, i32 %16, i32 0)
  store %struct.icl_module* %17, %struct.icl_module** %8, align 8
  %18 = load %struct.icl_module*, %struct.icl_module** %8, align 8
  %19 = icmp eq %struct.icl_module* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @sx_sunlock(i32* %22)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %4, align 4
  br label %124

25:                                               ; preds = %3
  %26 = load %struct.icl_module*, %struct.icl_module** %8, align 8
  %27 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %26, i32 0, i32 0
  %28 = load i32 (%struct.icl_drv_limits.0*)*, i32 (%struct.icl_drv_limits.0*)** %27, align 8
  %29 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %30 = bitcast %struct.icl_drv_limits* %29 to %struct.icl_drv_limits.0*
  %31 = call i32 %28(%struct.icl_drv_limits.0* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @sx_sunlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %25
  %38 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %39 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %44 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 512
  br i1 %46, label %97, label %47

47:                                               ; preds = %42
  %48 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %49 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 16777215
  br i1 %51, label %97, label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %54 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %59 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 512
  br i1 %61, label %97, label %62

62:                                               ; preds = %57
  %63 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %64 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 16777215
  br i1 %66, label %97, label %67

67:                                               ; preds = %62, %52
  %68 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %69 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %74 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 512
  br i1 %76, label %97, label %77

77:                                               ; preds = %72
  %78 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %79 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 16777215
  br i1 %81, label %97, label %82

82:                                               ; preds = %77, %67
  %83 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %84 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %89 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 512
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %94 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 16777215
  br i1 %96, label %97, label %99

97:                                               ; preds = %92, %87, %77, %72, %62, %57, %47, %42
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %92, %82, %25
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %104 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %109 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %114 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.icl_drv_limits*, %struct.icl_drv_limits** %7, align 8
  %117 = getelementptr inbounds %struct.icl_drv_limits, %struct.icl_drv_limits* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %120, %112, %107, %102, %99
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %20
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @bzero(%struct.icl_drv_limits*, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.icl_module* @icl_find(i8*, i32, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
