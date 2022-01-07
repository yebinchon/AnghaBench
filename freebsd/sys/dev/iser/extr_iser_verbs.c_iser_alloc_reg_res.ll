; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_alloc_reg_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_alloc_reg_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_pd = type { i32 }
%struct.iser_reg_resources = type { i32, i32 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@ISCSI_ISER_SG_TABLESIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate  fast reg mr err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_pd*, %struct.iser_reg_resources*)* @iser_alloc_reg_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_alloc_reg_res(%struct.ib_device* %0, %struct.ib_pd* %1, %struct.iser_reg_resources* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.iser_reg_resources*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store %struct.iser_reg_resources* %2, %struct.iser_reg_resources** %7, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %10 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %11 = load i64, i64* @ISCSI_ISER_SG_TABLESIZE, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @ib_alloc_mr(%struct.ib_pd* %9, i32 %10, i64 %12)
  %14 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %7, align 8
  %15 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %7, align 8
  %17 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %7, align 8
  %23 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PTR_ERR(i32 %24)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ISER_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %7, align 8
  %32 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ib_alloc_mr(%struct.ib_pd*, i32, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
