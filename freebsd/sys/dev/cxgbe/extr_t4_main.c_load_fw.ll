; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.t4_data = type { i32, i32 }

@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4ldfw\00", align 1
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@DF_LOAD_FW_ANYTIME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_data*)* @load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_fw(%struct.adapter* %0, %struct.t4_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_data* %1, %struct.t4_data** %5, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = load i32, i32* @SLEEP_OK, align 4
  %10 = load i32, i32* @INTR_OK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @begin_synchronized_op(%struct.adapter* %8, i32* null, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FULL_INIT_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DF_LOAD_FW_ANYTIME, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %6, align 4
  br label %67

33:                                               ; preds = %24, %17
  %34 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %35 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_CXGBE, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i32* @malloc(i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %6, align 4
  br label %67

44:                                               ; preds = %33
  %45 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %46 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %50 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @copyin(i32 %47, i32* %48, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %59 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @t4_load_fw(%struct.adapter* %56, i32* %57, i32 %60)
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %44
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @M_CXGBE, align 4
  %66 = call i32 @free(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %42, %31
  %68 = load %struct.adapter*, %struct.adapter** %4, align 8
  %69 = call i32 @end_synchronized_op(%struct.adapter* %68, i32 0)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @t4_load_fw(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
