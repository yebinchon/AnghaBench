; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_fastreg_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_create_fastreg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_reg_descriptor = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_pd = type { i32 }

@M_ISER_VERBS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate a new fastreg descriptor\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate reg_resources\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fast_reg_descriptor* (%struct.ib_device*, %struct.ib_pd*)* @iser_create_fastreg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fast_reg_descriptor* @iser_create_fastreg_desc(%struct.ib_device* %0, %struct.ib_pd* %1) #0 {
  %3 = alloca %struct.fast_reg_descriptor*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.fast_reg_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %5, align 8
  %8 = load i32, i32* @M_ISER_VERBS, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.fast_reg_descriptor* @malloc(i32 4, i32 %8, i32 %11)
  store %struct.fast_reg_descriptor* %12, %struct.fast_reg_descriptor** %6, align 8
  %13 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %6, align 8
  %14 = icmp ne %struct.fast_reg_descriptor* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @ISER_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.fast_reg_descriptor* null, %struct.fast_reg_descriptor** %3, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %20 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.fast_reg_descriptor, %struct.fast_reg_descriptor* %20, i32 0, i32 0
  %22 = call i32 @iser_alloc_reg_res(%struct.ib_device* %18, %struct.ib_pd* %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @ISER_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %6, align 8
  store %struct.fast_reg_descriptor* %28, %struct.fast_reg_descriptor** %3, align 8
  br label %33

29:                                               ; preds = %25
  %30 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %6, align 8
  %31 = load i32, i32* @M_ISER_VERBS, align 4
  %32 = call i32 @free(%struct.fast_reg_descriptor* %30, i32 %31)
  store %struct.fast_reg_descriptor* null, %struct.fast_reg_descriptor** %3, align 8
  br label %33

33:                                               ; preds = %29, %27, %15
  %34 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %3, align 8
  ret %struct.fast_reg_descriptor* %34
}

declare dso_local %struct.fast_reg_descriptor* @malloc(i32, i32, i32) #1

declare dso_local i32 @ISER_ERR(i8*) #1

declare dso_local i32 @iser_alloc_reg_res(%struct.ib_device*, %struct.ib_pd*, i32*) #1

declare dso_local i32 @free(%struct.fast_reg_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
