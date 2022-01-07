; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_freecis.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_freecis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_list = type { %struct.tuple_list*, %struct.tuple_list*, %struct.tuple_list* }
%struct.tuple = type { %struct.tuple*, %struct.tuple*, %struct.tuple* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freecis(%struct.tuple_list* %0) #0 {
  %2 = alloca %struct.tuple_list*, align 8
  %3 = alloca %struct.tuple_list*, align 8
  %4 = alloca %struct.tuple*, align 8
  store %struct.tuple_list* %0, %struct.tuple_list** %2, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load %struct.tuple_list*, %struct.tuple_list** %2, align 8
  store %struct.tuple_list* %6, %struct.tuple_list** %3, align 8
  %7 = icmp ne %struct.tuple_list* %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %5
  %9 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %10 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %9, i32 0, i32 1
  %11 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  store %struct.tuple_list* %11, %struct.tuple_list** %2, align 8
  br label %12

12:                                               ; preds = %18, %8
  %13 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %14 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %13, i32 0, i32 2
  %15 = load %struct.tuple_list*, %struct.tuple_list** %14, align 8
  %16 = bitcast %struct.tuple_list* %15 to %struct.tuple*
  store %struct.tuple* %16, %struct.tuple** %4, align 8
  %17 = icmp ne %struct.tuple* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.tuple*, %struct.tuple** %4, align 8
  %20 = getelementptr inbounds %struct.tuple, %struct.tuple* %19, i32 0, i32 1
  %21 = load %struct.tuple*, %struct.tuple** %20, align 8
  %22 = bitcast %struct.tuple* %21 to %struct.tuple_list*
  %23 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %24 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %23, i32 0, i32 2
  store %struct.tuple_list* %22, %struct.tuple_list** %24, align 8
  %25 = load %struct.tuple*, %struct.tuple** %4, align 8
  %26 = getelementptr inbounds %struct.tuple, %struct.tuple* %25, i32 0, i32 0
  %27 = load %struct.tuple*, %struct.tuple** %26, align 8
  %28 = bitcast %struct.tuple* %27 to %struct.tuple_list*
  %29 = call i32 @free(%struct.tuple_list* %28)
  %30 = load %struct.tuple*, %struct.tuple** %4, align 8
  %31 = bitcast %struct.tuple* %30 to %struct.tuple_list*
  %32 = call i32 @free(%struct.tuple_list* %31)
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %35 = call i32 @free(%struct.tuple_list* %34)
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @free(%struct.tuple_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
