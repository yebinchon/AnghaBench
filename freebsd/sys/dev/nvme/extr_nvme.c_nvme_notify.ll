; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_consumer = type { i64, i32 (%struct.nvme_namespace*, i8*)*, i32 (i8*)*, i8* (%struct.nvme_controller*)* }
%struct.nvme_namespace = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nvme_controller = type { %struct.nvme_namespace*, %struct.TYPE_3__, i32**, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NVME_MAX_NAMESPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_consumer*, %struct.nvme_controller*)* @nvme_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_notify(%struct.nvme_consumer* %0, %struct.nvme_controller* %1) #0 {
  %3 = alloca %struct.nvme_consumer*, align 8
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca %struct.nvme_namespace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_consumer* %0, %struct.nvme_consumer** %3, align 8
  store %struct.nvme_controller* %1, %struct.nvme_controller** %4, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %116

14:                                               ; preds = %2
  %15 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %15, i32 0, i32 4
  %17 = call i32 @atomic_cmpset_32(i32* %16, i32 0, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %116

21:                                               ; preds = %14
  %22 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %22, i32 0, i32 3
  %24 = load i8* (%struct.nvme_controller*)*, i8* (%struct.nvme_controller*)** %23, align 8
  %25 = icmp ne i8* (%struct.nvme_controller*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %27, i32 0, i32 3
  %29 = load i8* (%struct.nvme_controller*)*, i8* (%struct.nvme_controller*)** %28, align 8
  %30 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %31 = call i8* %29(%struct.nvme_controller* %30)
  store i8* %31, i8** %6, align 8
  br label %33

32:                                               ; preds = %21
  store i8* inttoptr (i64 -2401050962867404578 to i8*), i8** %6, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  store i32* %35, i32** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %116

46:                                               ; preds = %33
  %47 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %48 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %53 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %59, i32 0, i32 2
  %61 = load i32 (i8*)*, i32 (i8*)** %60, align 8
  %62 = icmp ne i32 (i8*)* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %64, i32 0, i32 2
  %66 = load i32 (i8*)*, i32 (i8*)** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 %66(i8* %67)
  br label %69

69:                                               ; preds = %63, %51
  br label %116

70:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %113, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NVME_MAX_NAMESPACES, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %71
  %81 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %82 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %81, i32 0, i32 0
  %83 = load %struct.nvme_namespace*, %struct.nvme_namespace** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %83, i64 %85
  store %struct.nvme_namespace* %86, %struct.nvme_namespace** %5, align 8
  %87 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %88 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %113

93:                                               ; preds = %80
  %94 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %94, i32 0, i32 1
  %96 = load i32 (%struct.nvme_namespace*, i8*)*, i32 (%struct.nvme_namespace*, i8*)** %95, align 8
  %97 = icmp ne i32 (%struct.nvme_namespace*, i8*)* %96, null
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %99, i32 0, i32 1
  %101 = load i32 (%struct.nvme_namespace*, i8*)*, i32 (%struct.nvme_namespace*, i8*)** %100, align 8
  %102 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 %101(%struct.nvme_namespace* %102, i8* %103)
  %105 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %106 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.nvme_consumer*, %struct.nvme_consumer** %3, align 8
  %109 = getelementptr inbounds %struct.nvme_consumer, %struct.nvme_consumer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %98, %93
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %71

116:                                              ; preds = %13, %20, %45, %69, %71
  ret void
}

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
