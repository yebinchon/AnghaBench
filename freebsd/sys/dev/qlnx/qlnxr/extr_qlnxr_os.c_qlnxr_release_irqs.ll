; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_release_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_release_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*)* @qlnxr_release_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_release_irqs(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca %struct.qlnxr_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %2, align 8
  %5 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @QL_DPRINT12(%struct.TYPE_5__* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %84, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %10
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %16
  %27 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %28 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %41 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bus_teardown_intr(i32 %31, i64 %39, i64 %47)
  br label %49

49:                                               ; preds = %26, %16
  %50 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %51 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %49
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %61 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %67 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %75 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %73, i64 %81)
  br label %83

83:                                               ; preds = %59, %49
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %10

87:                                               ; preds = %10
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = call i32 @QL_DPRINT12(%struct.TYPE_5__* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
