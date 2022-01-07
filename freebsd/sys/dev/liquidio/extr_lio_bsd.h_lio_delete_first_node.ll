; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_bsd.h_lio_delete_first_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_bsd.h_lio_delete_first_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_stailq_node = type { i32 }
%struct.lio_stailq_head = type { i32 }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lio_stailq_node* (%struct.lio_stailq_head*)* @lio_delete_first_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lio_stailq_node* @lio_delete_first_node(%struct.lio_stailq_head* %0) #0 {
  %2 = alloca %struct.lio_stailq_head*, align 8
  %3 = alloca %struct.lio_stailq_node*, align 8
  store %struct.lio_stailq_head* %0, %struct.lio_stailq_head** %2, align 8
  %4 = load %struct.lio_stailq_head*, %struct.lio_stailq_head** %2, align 8
  %5 = call i64 @STAILQ_EMPTY(%struct.lio_stailq_head* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.lio_stailq_node* null, %struct.lio_stailq_node** %3, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.lio_stailq_head*, %struct.lio_stailq_head** %2, align 8
  %10 = call %struct.lio_stailq_node* @STAILQ_FIRST(%struct.lio_stailq_head* %9)
  store %struct.lio_stailq_node* %10, %struct.lio_stailq_node** %3, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.lio_stailq_node*, %struct.lio_stailq_node** %3, align 8
  %13 = icmp ne %struct.lio_stailq_node* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.lio_stailq_head*, %struct.lio_stailq_head** %2, align 8
  %16 = load i32, i32* @entries, align 4
  %17 = call i32 @STAILQ_REMOVE_HEAD(%struct.lio_stailq_head* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.lio_stailq_node*, %struct.lio_stailq_node** %3, align 8
  ret %struct.lio_stailq_node* %19
}

declare dso_local i64 @STAILQ_EMPTY(%struct.lio_stailq_head*) #1

declare dso_local %struct.lio_stailq_node* @STAILQ_FIRST(%struct.lio_stailq_head*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.lio_stailq_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
