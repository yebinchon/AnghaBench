; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_find_tuple_in_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_find_tuple_in_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple = type { i8, %struct.tuple* }
%struct.tuple_list = type { %struct.tuple* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tuple* (%struct.tuple_list*, i8)* @find_tuple_in_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tuple* @find_tuple_in_list(%struct.tuple_list* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tuple_list*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.tuple*, align 8
  store %struct.tuple_list* %0, %struct.tuple_list** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %7 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %6, i32 0, i32 0
  %8 = load %struct.tuple*, %struct.tuple** %7, align 8
  store %struct.tuple* %8, %struct.tuple** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.tuple*, %struct.tuple** %5, align 8
  %11 = icmp ne %struct.tuple* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.tuple*, %struct.tuple** %5, align 8
  %14 = getelementptr inbounds %struct.tuple, %struct.tuple* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %26

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.tuple*, %struct.tuple** %5, align 8
  %24 = getelementptr inbounds %struct.tuple, %struct.tuple* %23, i32 0, i32 1
  %25 = load %struct.tuple*, %struct.tuple** %24, align 8
  store %struct.tuple* %25, %struct.tuple** %5, align 8
  br label %9

26:                                               ; preds = %20, %9
  %27 = load %struct.tuple*, %struct.tuple** %5, align 8
  ret %struct.tuple* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
