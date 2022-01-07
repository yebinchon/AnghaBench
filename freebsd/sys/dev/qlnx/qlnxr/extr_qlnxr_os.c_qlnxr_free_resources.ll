; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"enter dev->num_cnq = %d\0A\00", align 1
@QLNXR_MAX_MSIX = common dso_local global i32 0, align 4
@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*)* @qlnxr_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_free_resources(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca %struct.qlnxr_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %2, align 8
  %5 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %5, i32 0, i32 6
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_6__* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %14 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @destroy_workqueue(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %31 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %36 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %35, i32 0, i32 6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %39 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = call i32 @qlnx_free_mem_sb(%struct.TYPE_6__* %37, %struct.TYPE_7__* %43)
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %46 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %50 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %49, i32 0, i32 5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @ecore_chain_free(i32* %48, i32* %55)
  br label %57

57:                                               ; preds = %34
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %62 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %61, i32 0, i32 5
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @QLNXR_MAX_MSIX, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @bzero(%struct.TYPE_7__* %63, i32 %67)
  %69 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %70 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* @QLNXR_MAX_MSIX, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @bzero(%struct.TYPE_7__* %71, i32 %75)
  %77 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %78 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @bzero(%struct.TYPE_7__* %79, i32 %83)
  %85 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %86 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %85, i32 0, i32 2
  %87 = call i64 @mtx_initialized(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %60
  %90 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %91 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %90, i32 0, i32 2
  %92 = call i32 @mtx_destroy(i32* %91)
  br label %93

93:                                               ; preds = %89, %60
  %94 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %95 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %94, i32 0, i32 1
  %96 = call i64 @mtx_initialized(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %100 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %99, i32 0, i32 1
  %101 = call i32 @mtx_destroy(i32* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = call i32 (%struct.TYPE_6__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_6__* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qlnx_free_mem_sb(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @ecore_chain_free(i32*, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
