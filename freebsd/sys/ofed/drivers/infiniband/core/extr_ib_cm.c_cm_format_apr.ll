; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_apr_msg = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CM_APR_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_apr_msg*, %struct.cm_id_private*, i32, i8*, i8*, i8*, i8*)* @cm_format_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_apr(%struct.cm_apr_msg* %0, %struct.cm_id_private* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.cm_apr_msg*, align 8
  %9 = alloca %struct.cm_id_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.cm_apr_msg* %0, %struct.cm_apr_msg** %8, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %16 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %15, i32 0, i32 6
  %17 = load i32, i32* @CM_APR_ATTR_ID, align 4
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %19 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cm_format_mad_hdr(i32* %16, i32 %17, i32 %20)
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %27 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %29 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %33 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %38 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %7
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %47 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %49 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @memcpy(i32 %50, i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %44, %41, %7
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.cm_apr_msg*, %struct.cm_apr_msg** %8, align 8
  %62 = getelementptr inbounds %struct.cm_apr_msg, %struct.cm_apr_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @memcpy(i32 %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %60, %57, %54
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
