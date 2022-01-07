; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_map_eq_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_mthca_map_eq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MTHCA_CLR_INT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Couldn't map interrupt clear register, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't map EQ arm register, aborting.\0A\00", align 1
@MTHCA_EQ_SET_CI_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't map EQ CI register, aborting.\0A\00", align 1
@MTHCA_CLR_INT_BASE = common dso_local global i32 0, align 4
@MTHCA_ECR_BASE = common dso_local global i32 0, align 4
@MTHCA_ECR_SIZE = common dso_local global i32 0, align 4
@MTHCA_ECR_CLR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Couldn't map ecr register, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_map_eq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_map_eq_regs(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %5 = call i64 @mthca_is_memfree(%struct.mthca_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %95

7:                                                ; preds = %1
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_resource_len(i32 %11, i32 0)
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %13, %18
  %20 = load i32, i32* @MTHCA_CLR_INT_SIZE, align 4
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %21, i32 0, i32 0
  %23 = call i64 @mthca_map_reg(%struct.mthca_dev* %8, i32 %19, i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = call i32 @mthca_err(%struct.mthca_dev* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %131

30:                                               ; preds = %7
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci_resource_len(i32 %34, i32 0)
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %36, %41
  %43 = add nsw i32 %42, 4
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i64 @mthca_map_reg(%struct.mthca_dev* %31, i32 %43, i32 4, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %30
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = call i32 @mthca_err(%struct.mthca_dev* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @iounmap(i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %131

59:                                               ; preds = %30
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_resource_len(i32 %63, i32 0)
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %65, %70
  %72 = load i32, i32* @MTHCA_EQ_SET_CI_SIZE, align 4
  %73 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = call i64 @mthca_map_reg(%struct.mthca_dev* %60, i32 %71, i32 %72, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %59
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %81 = call i32 @mthca_err(%struct.mthca_dev* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @iounmap(i32 %86)
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @iounmap(i32 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %131

94:                                               ; preds = %59
  br label %130

95:                                               ; preds = %1
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %97 = load i32, i32* @MTHCA_CLR_INT_BASE, align 4
  %98 = load i32, i32* @MTHCA_CLR_INT_SIZE, align 4
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %100 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %99, i32 0, i32 0
  %101 = call i64 @mthca_map_reg(%struct.mthca_dev* %96, i32 %97, i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %105 = call i32 @mthca_err(%struct.mthca_dev* %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %131

108:                                              ; preds = %95
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %110 = load i32, i32* @MTHCA_ECR_BASE, align 4
  %111 = load i32, i32* @MTHCA_ECR_SIZE, align 4
  %112 = load i32, i32* @MTHCA_ECR_CLR_SIZE, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = call i64 @mthca_map_reg(%struct.mthca_dev* %109, i32 %110, i32 %113, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %122 = call i32 @mthca_err(%struct.mthca_dev* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @iounmap(i32 %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %131

129:                                              ; preds = %108
  br label %130

130:                                              ; preds = %129, %94
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %120, %103, %79, %50, %25
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i64 @mthca_map_reg(%struct.mthca_dev*, i32, i32, i32*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
