; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_on_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_on_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpv_file_node = type { i32, i64, i32 }

@fd = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@bsize = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@DPV_STATUS_DONE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@dpv_overall_read = common dso_local global i32 0, align 4
@no_overrun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpv_file_node*, i32)* @operate_on_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operate_on_bytes(%struct.dpv_file_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpv_file_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpv_file_node* %0, %struct.dpv_file_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @operate_common(%struct.dpv_file_node* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %99

14:                                               ; preds = %2
  %15 = load i32, i32* @fd, align 4
  %16 = load i32, i32* @buf, align 4
  %17 = load i32, i32* @bsize, align 4
  %18 = call i32 @read(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @fd, align 4
  %22 = load i32, i32* @STDIN_FILENO, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @fd, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  store i32 -1, i32* @fd, align 4
  %28 = load i32, i32* @DPV_STATUS_DONE, align 4
  %29 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %30 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  store i32 100, i32* %3, align 4
  br label %99

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @buf, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @write(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 (...) @end_dialog()
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @err(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fsync(i32 %45)
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @dpv_overall_read, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @dpv_overall_read, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %53 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %57 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %47
  %61 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %62 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 100
  %65 = sext i32 %64 to i64
  %66 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %67 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %72 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i64 [ %73, %70 ], [ 1, %74 ]
  %77 = sdiv i64 %65, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load i64, i64* @no_overrun, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 100
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %86 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %90 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %84, %81, %75
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %96, %27, %13
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @operate_common(%struct.dpv_file_node*, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @end_dialog(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
