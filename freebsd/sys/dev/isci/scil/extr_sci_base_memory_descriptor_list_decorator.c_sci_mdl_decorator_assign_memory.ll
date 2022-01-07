; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list_decorator.c_sci_mdl_decorator_assign_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list_decorator.c_sci_mdl_decorator_assign_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_mdl_decorator_assign_memory(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @sci_cb_physical_address_lower(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @sci_cb_physical_address_upper(i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  %18 = or i32 %13, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sci_mdl_first_entry(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_3__* @sci_mdl_get_current_entry(i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %9, align 8
  br label %23

23:                                               ; preds = %102, %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %107

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %46, %49
  %51 = sub nsw i32 %45, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %42, %35
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = srem i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %65, %68
  %70 = sub nsw i32 %64, %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %61, %54
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 32
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = call i32 @sci_cb_make_physical_address(i32 %81, i64 %84, i64 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %7, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %73, %32
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @sci_mdl_next_entry(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call %struct.TYPE_3__* @sci_mdl_get_current_entry(i32 %105)
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %9, align 8
  br label %23

107:                                              ; preds = %23
  ret void
}

declare dso_local i64 @sci_cb_physical_address_lower(i32) #1

declare dso_local i64 @sci_cb_physical_address_upper(i32) #1

declare dso_local i32 @sci_mdl_first_entry(i32) #1

declare dso_local %struct.TYPE_3__* @sci_mdl_get_current_entry(i32) #1

declare dso_local i32 @sci_cb_make_physical_address(i32, i64, i64) #1

declare dso_local i32 @sci_mdl_next_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
