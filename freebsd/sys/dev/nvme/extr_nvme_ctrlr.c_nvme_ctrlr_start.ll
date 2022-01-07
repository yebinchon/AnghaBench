; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"num_io_queues changed from %u to %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nvme_ctrlr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_start(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.nvme_controller*
  store %struct.nvme_controller* %9, %struct.nvme_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 2
  %15 = call i32 @nvme_qpair_reset(i32* %14)
  br label %16

16:                                               ; preds = %12, %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @nvme_qpair_reset(i32* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %35, i32 0, i32 2
  %37 = call i32 @nvme_admin_qpair_enable(i32* %36)
  %38 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %39 = call i64 @nvme_ctrlr_identify(%struct.nvme_controller* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %43 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %42)
  br label %106

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %49 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  %51 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %52 = call i64 @nvme_ctrlr_set_num_qpairs(%struct.nvme_controller* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %56 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %55)
  br label %106

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %60 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %66 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %72 = call i64 @nvme_ctrlr_create_qpairs(%struct.nvme_controller* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %76 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %75)
  br label %106

77:                                               ; preds = %70
  %78 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %79 = call i64 @nvme_ctrlr_construct_namespaces(%struct.nvme_controller* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %83 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %82)
  br label %106

84:                                               ; preds = %77
  %85 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %86 = call i32 @nvme_ctrlr_configure_aer(%struct.nvme_controller* %85)
  %87 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %88 = call i32 @nvme_ctrlr_configure_int_coalescing(%struct.nvme_controller* %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %103, %84
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %92 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %97 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @nvme_io_qpair_enable(i32* %101)
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %89

106:                                              ; preds = %41, %54, %74, %81, %89
  ret void
}

declare dso_local i32 @nvme_qpair_reset(i32*) #1

declare dso_local i32 @nvme_admin_qpair_enable(i32*) #1

declare dso_local i64 @nvme_ctrlr_identify(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_fail(%struct.nvme_controller*) #1

declare dso_local i64 @nvme_ctrlr_set_num_qpairs(%struct.nvme_controller*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i64 @nvme_ctrlr_create_qpairs(%struct.nvme_controller*) #1

declare dso_local i64 @nvme_ctrlr_construct_namespaces(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_configure_aer(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_configure_int_coalescing(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_io_qpair_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
