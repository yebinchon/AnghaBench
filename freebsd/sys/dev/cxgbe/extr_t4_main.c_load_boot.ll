; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_bootrom = type { i32, i32, i32, i32 }

@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_PCIE_PF_EXPROM_OFST = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4ldbr\00", align 1
@M_CXGBE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_bootrom*)* @load_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_boot(%struct.adapter* %0, %struct.t4_bootrom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_bootrom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_bootrom* %1, %struct.t4_bootrom** %5, align 8
  store i32* null, i32** %7, align 8
  %9 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %10 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1048576
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EFBIG, align 4
  store i32 %14, i32* %3, align 4
  br label %111

15:                                               ; preds = %2
  %16 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %17 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %22 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 7
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %20
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %30 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @A_PCIE_PF_EXPROM_OFST, align 4
  %33 = call i32 @PF_REG(i32 %31, i32 %32)
  %34 = call i32 @t4_read_reg(%struct.adapter* %28, i32 %33)
  %35 = call i32 @G_OFFSET(i32 %34)
  store i32 %35, i32* %8, align 4
  br label %49

36:                                               ; preds = %15
  %37 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %38 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %43 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @G_OFFSET(i32 %44)
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %111

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = load i32, i32* @SLEEP_OK, align 4
  %52 = load i32, i32* @INTR_OK, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @begin_synchronized_op(%struct.adapter* %50, i32* null, i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %111

59:                                               ; preds = %49
  %60 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %61 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @t4_load_boot(%struct.adapter* %65, i32* null, i32 %66, i64 0)
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %107

69:                                               ; preds = %59
  %70 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %71 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* @M_CXGBE, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = call i32* @malloc(i64 %73, i32 %74, i32 %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  store i32 %80, i32* %6, align 4
  br label %107

81:                                               ; preds = %69
  %82 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %83 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %87 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @copyin(i32 %84, i32* %85, i64 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %81
  %94 = load %struct.adapter*, %struct.adapter** %4, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.t4_bootrom*, %struct.t4_bootrom** %5, align 8
  %98 = getelementptr inbounds %struct.t4_bootrom, %struct.t4_bootrom* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @t4_load_boot(%struct.adapter* %94, i32* %95, i32 %96, i64 %100)
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %81
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @M_CXGBE, align 4
  %106 = call i32 @free(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %79, %64
  %108 = load %struct.adapter*, %struct.adapter** %4, align 8
  %109 = call i32 @end_synchronized_op(%struct.adapter* %108, i32 0)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %57, %46, %25, %13
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @G_OFFSET(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @PF_REG(i32, i32) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_load_boot(%struct.adapter*, i32*, i32, i64) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
