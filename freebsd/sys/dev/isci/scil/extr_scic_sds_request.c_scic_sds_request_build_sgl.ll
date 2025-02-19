; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_request_build_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_request_build_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_request_build_sgl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @scic_sds_request_get_user_request(i32* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @scic_cb_io_request_get_next_sge(i8* %11, i8* null, i8** %3)
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.TYPE_4__* @scic_sds_request_get_sgl_element_pair(i32* %17, i64 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @SCU_SGL_COPY(i8* %20, i32 %23, i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @scic_cb_io_request_get_next_sge(i8* %26, i8* %27, i8** %3)
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %16
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @SCU_SGL_COPY(i8* %32, i32 %35, i8* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @scic_cb_io_request_get_next_sge(i8* %38, i8* %39, i8** %3)
  br label %46

41:                                               ; preds = %16
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SCU_SGL_ZERO(i32 %44)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @scic_sds_request_get_controller(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = call i32 @scic_cb_io_request_get_physical_address(i32 %51, i32* %52, %struct.TYPE_4__* %53, i32* %5)
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @sci_cb_physical_address_upper(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @sci_cb_physical_address_lower(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %49, %46
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %13

67:                                               ; preds = %13
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %67
  ret void
}

declare dso_local i8* @scic_sds_request_get_user_request(i32*) #1

declare dso_local i32 @scic_cb_io_request_get_next_sge(i8*, i8*, i8**) #1

declare dso_local %struct.TYPE_4__* @scic_sds_request_get_sgl_element_pair(i32*, i64) #1

declare dso_local i32 @SCU_SGL_COPY(i8*, i32, i8*) #1

declare dso_local i32 @SCU_SGL_ZERO(i32) #1

declare dso_local i32 @scic_cb_io_request_get_physical_address(i32, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @scic_sds_request_get_controller(i32*) #1

declare dso_local i64 @sci_cb_physical_address_upper(i32) #1

declare dso_local i64 @sci_cb_physical_address_lower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
