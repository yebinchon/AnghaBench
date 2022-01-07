; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_on_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_on_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpv_file_node = type { i32, i64, i32 }

@fd = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@bsize = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@DPV_STATUS_DONE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@dpv_overall_read = common dso_local global i32 0, align 4
@no_overrun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpv_file_node*, i32)* @operate_on_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operate_on_lines(%struct.dpv_file_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpv_file_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dpv_file_node* %0, %struct.dpv_file_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @operate_common(%struct.dpv_file_node* %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load i32, i32* @fd, align 4
  %17 = load i8*, i8** @buf, align 8
  %18 = load i32, i32* @bsize, align 4
  %19 = call i64 @read(i32 %16, i8* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = icmp ule i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, i32* @fd, align 4
  %23 = load i32, i32* @STDIN_FILENO, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @fd, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %21
  store i32 -1, i32* @fd, align 4
  %29 = load i32, i32* @DPV_STATUS_DONE, align 4
  %30 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %31 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  store i32 100, i32* %3, align 4
  br label %113

32:                                               ; preds = %15
  %33 = load i8*, i8** @buf, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** @buf, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @write(i32 %39, i8* %40, i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 (...) @end_dialog()
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @err(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @fsync(i32 %49)
  br label %51

51:                                               ; preds = %48, %32
  %52 = load i8*, i8** @buf, align 8
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %76, %51
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %77

63:                                               ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* @dpv_overall_read, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @dpv_overall_read, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  %72 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %73 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %67, %63
  br label %53

77:                                               ; preds = %61
  %78 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %79 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  %83 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %84 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 100
  %87 = sext i32 %86 to i64
  %88 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %89 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sdiv i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i64, i64* @no_overrun, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %82
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 100
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %100 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %104 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %98, %95, %82
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %28, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @operate_common(%struct.dpv_file_node*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @end_dialog(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
