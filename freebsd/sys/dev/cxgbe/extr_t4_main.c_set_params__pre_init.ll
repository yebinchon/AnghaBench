; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_params__pre_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_params__pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CHELSIO_T6 = common dso_local global i64 0, align 8
@HPFILTER_REGION_SUPPORT = common dso_local global i32 0, align 4
@FW_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to enable high priority filters :%d.\0A\00", align 1
@OPAQUE_VIID_SMT_EXTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @set_params__pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_params__pre_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call i64 @chip_id(%struct.adapter* %6)
  %8 = load i64, i64* @CHELSIO_T6, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load i32, i32* @HPFILTER_REGION_SUPPORT, align 4
  %12 = call i32 @FW_PARAM_DEV(i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @t4_set_params(%struct.adapter* %13, i32 %16, i32 %19, i32 0, i32 1, i32* %4, i32* %5)
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @FW_EINVAL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %10
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @V_FW_HDR_FW_VER_MAJOR(i32 1)
  %31 = call i32 @V_FW_HDR_FW_VER_MINOR(i32 20)
  %32 = or i32 %30, %31
  %33 = call i32 @V_FW_HDR_FW_VER_MICRO(i32 1)
  %34 = or i32 %32, %33
  %35 = call i32 @V_FW_HDR_FW_VER_BUILD(i32 0)
  %36 = or i32 %34, %35
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %25, %10
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* @OPAQUE_VIID_SMT_EXTN, align 4
  %51 = call i32 @FW_PARAM_DEV(i32 %50)
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @t4_set_params(%struct.adapter* %52, i32 %55, i32 %58, i32 0, i32 1, i32* %4, i32* %5)
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %74

70:                                               ; preds = %63, %49
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @FW_PARAM_DEV(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @V_FW_HDR_FW_VER_MAJOR(i32) #1

declare dso_local i32 @V_FW_HDR_FW_VER_MINOR(i32) #1

declare dso_local i32 @V_FW_HDR_FW_VER_MICRO(i32) #1

declare dso_local i32 @V_FW_HDR_FW_VER_BUILD(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
