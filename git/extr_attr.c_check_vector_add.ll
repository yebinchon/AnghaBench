; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_check_vector_add.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_check_vector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.attr_check**, i32 }
%struct.attr_check = type { i32 }

@check_vector = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_check*)* @check_vector_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_vector_add(%struct.attr_check* %0) #0 {
  %2 = alloca %struct.attr_check*, align 8
  store %struct.attr_check* %0, %struct.attr_check** %2, align 8
  %3 = call i32 (...) @vector_lock()
  %4 = load %struct.attr_check**, %struct.attr_check*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 1), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 0), align 8
  %6 = add nsw i64 %5, 1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 2), align 8
  %8 = call i32 @ALLOC_GROW(%struct.attr_check** %4, i64 %6, i32 %7)
  %9 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %10 = load %struct.attr_check**, %struct.attr_check*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 0), align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @check_vector, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.attr_check*, %struct.attr_check** %10, i64 %11
  store %struct.attr_check* %9, %struct.attr_check** %13, align 8
  %14 = call i32 (...) @vector_unlock()
  ret void
}

declare dso_local i32 @vector_lock(...) #1

declare dso_local i32 @ALLOC_GROW(%struct.attr_check**, i64, i32) #1

declare dso_local i32 @vector_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
