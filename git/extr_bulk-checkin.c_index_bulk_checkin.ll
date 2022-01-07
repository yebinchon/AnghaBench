; ModuleID = '/home/carl/AnghaBench/git/extr_bulk-checkin.c_index_bulk_checkin.c'
source_filename = "/home/carl/AnghaBench/git/extr_bulk-checkin.c_index_bulk_checkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }

@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_bulk_checkin(%struct.object_id* %0, i32 %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.object_id*, %struct.object_id** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @deflate_to_pack(%struct.TYPE_4__* @state, %struct.object_id* %14, i32 %15, i64 %16, i32 %17, i8* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = call i32 @finish_bulk_checkin(%struct.TYPE_4__* @state)
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i32, i32* %13, align 4
  ret i32 %26
}

declare dso_local i32 @deflate_to_pack(%struct.TYPE_4__*, %struct.object_id*, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @finish_bulk_checkin(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
