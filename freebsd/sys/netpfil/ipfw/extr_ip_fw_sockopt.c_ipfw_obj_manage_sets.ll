; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_obj_manage_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_obj_manage_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.manage_sets_args = type { i8*, i32 }
%struct.named_object = type { i8*, i32, i32, i32 }

@swap_sets_cb = common dso_local global i32 0, align 4
@test_sets_cb = common dso_local global i32 0, align 4
@move_sets_cb = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_obj_manage_sets(%struct.namedobj_instance* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.namedobj_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.manage_sets_args, align 8
  %13 = alloca %struct.named_object*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.manage_sets_args, %struct.manage_sets_args* %12, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds %struct.manage_sets_args, %struct.manage_sets_args* %12, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %81 [
    i32 130, label %19
    i32 129, label %24
    i32 132, label %29
    i32 133, label %34
    i32 128, label %49
    i32 131, label %74
  ]

19:                                               ; preds = %5
  %20 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %21 = load i32, i32* @swap_sets_cb, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ipfw_objhash_foreach_type(%struct.namedobj_instance* %20, i32 %21, %struct.manage_sets_args* %12, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %83

24:                                               ; preds = %5
  %25 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %26 = load i32, i32* @test_sets_cb, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ipfw_objhash_foreach_type(%struct.namedobj_instance* %25, i32 %26, %struct.manage_sets_args* %12, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %83

29:                                               ; preds = %5
  %30 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %31 = load i32, i32* @move_sets_cb, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ipfw_objhash_foreach_type(%struct.namedobj_instance* %30, i32 %31, %struct.manage_sets_args* %12, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %83

34:                                               ; preds = %5
  %35 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %35, i32 %36)
  store %struct.named_object* %37, %struct.named_object** %13, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.named_object*, %struct.named_object** %13, align 8
  %42 = getelementptr inbounds %struct.named_object, %struct.named_object* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.named_object*, %struct.named_object** %13, align 8
  %47 = getelementptr inbounds %struct.named_object, %struct.named_object* %46, i32 0, i32 3
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  store i32 0, i32* %6, align 4
  br label %83

49:                                               ; preds = %5
  %50 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %50, i32 %51)
  store %struct.named_object* %52, %struct.named_object** %13, align 8
  %53 = load %struct.named_object*, %struct.named_object** %13, align 8
  %54 = getelementptr inbounds %struct.named_object, %struct.named_object* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.named_object*, %struct.named_object** %13, align 8
  %57 = getelementptr inbounds %struct.named_object, %struct.named_object* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %6, align 4
  br label %83

62:                                               ; preds = %49
  %63 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.named_object*, %struct.named_object** %13, align 8
  %67 = getelementptr inbounds %struct.named_object, %struct.named_object* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32* @ipfw_objhash_lookup_name_type(%struct.namedobj_instance* %63, i8* %64, i32 %65, i32 %68)
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @EEXIST, align 4
  store i32 %72, i32* %6, align 4
  br label %83

73:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %83

74:                                               ; preds = %5
  %75 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %75, i32 %76)
  store %struct.named_object* %77, %struct.named_object** %13, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.named_object*, %struct.named_object** %13, align 8
  %80 = getelementptr inbounds %struct.named_object, %struct.named_object* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  store i32 0, i32* %6, align 4
  br label %83

81:                                               ; preds = %5
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %74, %73, %71, %60, %48, %29, %24, %19
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ipfw_objhash_foreach_type(%struct.namedobj_instance*, i32, %struct.manage_sets_args*, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32* @ipfw_objhash_lookup_name_type(%struct.namedobj_instance*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
