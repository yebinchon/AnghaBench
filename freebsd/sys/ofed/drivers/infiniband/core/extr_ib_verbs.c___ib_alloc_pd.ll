; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c___ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c___ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32, i32, i32, %struct.ib_pd*, i32, i32, i32, i32*, %struct.ib_pd*, %struct.ib_device*, i32 }
%struct.ib_device = type { %struct.TYPE_2__, %struct.ib_pd* (%struct.ib_pd*, i32)*, i32, %struct.ib_pd* (%struct.ib_device*, i32*, i32*)* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mr = type { i32, i32, i32, %struct.ib_mr*, i32, i32, i32, i32*, %struct.ib_mr*, %struct.ib_device*, i32 }

@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_PD_UNSAFE_GLOBAL_RKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: enabling unsafe global rkey\0A\00", align 1
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_pd* @__ib_alloc_pd(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 3
  %13 = load %struct.ib_pd* (%struct.ib_device*, i32*, i32*)*, %struct.ib_pd* (%struct.ib_device*, i32*, i32*)** %12, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.ib_pd* %13(%struct.ib_device* %14, i32* null, i32* null)
  store %struct.ib_pd* %15, %struct.ib_pd** %8, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %17 = call i64 @IS_ERR(%struct.ib_pd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  store %struct.ib_pd* %20, %struct.ib_pd** %4, align 8
  br label %137

21:                                               ; preds = %3
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 9
  store %struct.ib_device* %22, %struct.ib_device** %24, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %26 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %28 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %27, i32 0, i32 3
  store %struct.ib_pd* null, %struct.ib_pd** %28, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %30 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %29, i32 0, i32 10
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %21
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %47 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  br label %52

48:                                               ; preds = %21
  %49 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %61 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %135

68:                                               ; preds = %65
  %69 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %70 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %69, i32 0, i32 9
  %71 = load %struct.ib_device*, %struct.ib_device** %70, align 8
  %72 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %71, i32 0, i32 1
  %73 = load %struct.ib_pd* (%struct.ib_pd*, i32)*, %struct.ib_pd* (%struct.ib_pd*, i32)** %72, align 8
  %74 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.ib_pd* %73(%struct.ib_pd* %74, i32 %75)
  %77 = bitcast %struct.ib_pd* %76 to %struct.ib_mr*
  store %struct.ib_mr* %77, %struct.ib_mr** %10, align 8
  %78 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %79 = bitcast %struct.ib_mr* %78 to %struct.ib_pd*
  %80 = call i64 @IS_ERR(%struct.ib_pd* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %84 = call i32 @ib_dealloc_pd(%struct.ib_pd* %83)
  %85 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %86 = bitcast %struct.ib_mr* %85 to %struct.ib_pd*
  %87 = call %struct.ib_pd* @ERR_CAST(%struct.ib_pd* %86)
  store %struct.ib_pd* %87, %struct.ib_pd** %4, align 8
  br label %137

88:                                               ; preds = %68
  %89 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %90 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %89, i32 0, i32 9
  %91 = load %struct.ib_device*, %struct.ib_device** %90, align 8
  %92 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %93 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %92, i32 0, i32 9
  store %struct.ib_device* %91, %struct.ib_device** %93, align 8
  %94 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %95 = bitcast %struct.ib_pd* %94 to %struct.ib_mr*
  %96 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %97 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %96, i32 0, i32 8
  store %struct.ib_mr* %95, %struct.ib_mr** %97, align 8
  %98 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %99 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  %100 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %101 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %103 = bitcast %struct.ib_mr* %102 to %struct.ib_pd*
  %104 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %105 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %104, i32 0, i32 3
  store %struct.ib_pd* %103, %struct.ib_pd** %105, align 8
  %106 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %107 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %88
  %114 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %115 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %114, i32 0, i32 3
  %116 = load %struct.ib_pd*, %struct.ib_pd** %115, align 8
  %117 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %120 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %88
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %128 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %127, i32 0, i32 3
  %129 = load %struct.ib_pd*, %struct.ib_pd** %128, align 8
  %130 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %133 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %126, %121
  br label %135

135:                                              ; preds = %134, %65
  %136 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  store %struct.ib_pd* %136, %struct.ib_pd** %4, align 8
  br label %137

137:                                              ; preds = %135, %82, %19
  %138 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %138
}

declare dso_local i64 @IS_ERR(%struct.ib_pd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_pd* @ERR_CAST(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
