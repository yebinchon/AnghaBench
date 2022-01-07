; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, %struct.port_info* }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32, i32 }

@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"t4via\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vcxgbe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcxgbe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vi_info*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.vi_info* @device_get_softc(i32 %8)
  store %struct.vi_info* %9, %struct.vi_info** %4, align 8
  %10 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %11 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %10, i32 0, i32 1
  %12 = load %struct.port_info*, %struct.port_info** %11, align 8
  store %struct.port_info* %12, %struct.port_info** %5, align 8
  %13 = load %struct.port_info*, %struct.port_info** %5, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %18 = load i32, i32* @SLEEP_OK, align 4
  %19 = load i32, i32* @INTR_OK, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @begin_synchronized_op(%struct.adapter* %16, %struct.vi_info* %17, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = load %struct.port_info*, %struct.port_info** %5, align 8
  %29 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %30 = call i32 @alloc_extra_vi(%struct.adapter* %27, %struct.port_info* %28, %struct.vi_info* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = call i32 @end_synchronized_op(%struct.adapter* %31, i32 0)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %40 = call i32 @cxgbe_vi_attach(i32 %38, %struct.vi_info* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.adapter*, %struct.adapter** %6, align 8
  %45 = load %struct.adapter*, %struct.adapter** %6, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vi_info*, %struct.vi_info** %4, align 8
  %52 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @t4_free_vi(%struct.adapter* %44, i32 %47, i32 %50, i32 0, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %43, %35, %24
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.vi_info* @device_get_softc(i32) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, %struct.vi_info*, i32, i8*) #1

declare dso_local i32 @alloc_extra_vi(%struct.adapter*, %struct.port_info*, %struct.vi_info*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

declare dso_local i32 @cxgbe_vi_attach(i32, %struct.vi_info*) #1

declare dso_local i32 @t4_free_vi(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
