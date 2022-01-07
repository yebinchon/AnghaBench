; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"enter start_irq_rid = %d num_rss = %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"bus_alloc_resource_any failed irq_rid = %d\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@qlnxr_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"bus_setup_intr failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"irq_rid = %d irq = %p irq_handle = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"exit -1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*)* @qlnxr_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_setup_irqs(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  %7 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %146, %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %149

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 8
  %39 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %40 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %46 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = load i32, i32* @RF_SHAREABLE, align 4
  %54 = or i32 %52, %53
  %55 = call i32* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %51, i32 %54)
  %56 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32* %55, i32** %62, align 8
  %63 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %64 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %28
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %75 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_5__* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %152

83:                                               ; preds = %28
  %84 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %85 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %90 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @INTR_TYPE_NET, align 4
  %98 = load i32, i32* @INTR_MPSAFE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @qlnxr_intr, align 4
  %101 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %102 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %108 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = call i64 @bus_setup_intr(i32 %88, i32* %96, i32 %99, i32* null, i32 %100, %struct.TYPE_6__* %106, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %83
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_5__* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %152

119:                                              ; preds = %83
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %122 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %130 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %138 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32* %136, i32 %144)
  br label %146

146:                                              ; preds = %119
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %22

149:                                              ; preds = %22
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %157

152:                                              ; preds = %116, %72
  %153 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %154 = call i32 @qlnxr_release_irqs(%struct.qlnxr_dev* %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_5__* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @qlnxr_release_irqs(%struct.qlnxr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
