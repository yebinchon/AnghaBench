; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nomatch = type { i64, i64, i64 }
%struct.resource_list = type { i32 }

@bhnd_nomatch_table = common dso_local global %struct.bhnd_nomatch* null, align 8
@BHND_COREID_INVALID = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"<%s %s, rev %hhu>\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%#jd\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c" at core %u (no driver attached)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_generic_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_list*, align 8
  %6 = alloca %struct.bhnd_nomatch*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %8 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** @bhnd_nomatch_table, align 8
  store %struct.bhnd_nomatch* %8, %struct.bhnd_nomatch** %6, align 8
  br label %9

9:                                                ; preds = %41, %2
  %10 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** %6, align 8
  %11 = getelementptr inbounds %struct.bhnd_nomatch, %struct.bhnd_nomatch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BHND_COREID_INVALID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_nomatch, %struct.bhnd_nomatch* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @bhnd_get_vendor(i32 %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** %6, align 8
  %25 = getelementptr inbounds %struct.bhnd_nomatch, %struct.bhnd_nomatch* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @bhnd_get_device(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** %6, align 8
  %36 = getelementptr inbounds %struct.bhnd_nomatch, %struct.bhnd_nomatch* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %34, %31
  br label %44

41:                                               ; preds = %30, %22
  %42 = load %struct.bhnd_nomatch*, %struct.bhnd_nomatch** %6, align 8
  %43 = getelementptr inbounds %struct.bhnd_nomatch, %struct.bhnd_nomatch* %42, i32 1
  store %struct.bhnd_nomatch* %43, %struct.bhnd_nomatch** %6, align 8
  br label %9

44:                                               ; preds = %40, %9
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %73

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bhnd_get_vendor_name(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @bhnd_get_device_name(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bhnd_get_hwrev(i32 %54)
  %56 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %57, i32 %58)
  store %struct.resource_list* %59, %struct.resource_list** %5, align 8
  %60 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %61 = icmp ne %struct.resource_list* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %48
  %63 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = call i32 @resource_list_print_type(%struct.resource_list* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  %68 = call i32 @resource_list_print_type(%struct.resource_list* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %48
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @bhnd_get_core_index(i32 %70)
  %72 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %47
  ret void
}

declare dso_local i64 @bhnd_get_vendor(i32) #1

declare dso_local i64 @bhnd_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bhnd_get_vendor_name(i32) #1

declare dso_local i32 @bhnd_get_device_name(i32) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local i32 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bhnd_get_core_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
