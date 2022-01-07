; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_freeentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_freeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.radix_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rt_freeentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_freeentry(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radix_head*, align 8
  %6 = alloca %struct.radix_node*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.radix_head*
  store %struct.radix_head* %8, %struct.radix_head** %5, align 8
  %9 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %10 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %9, i64 2
  %11 = load %struct.radix_head*, %struct.radix_head** %5, align 8
  %12 = call i64 @rn_delete(%struct.radix_node* %10, i32* null, %struct.radix_head* %11)
  %13 = inttoptr i64 %12 to %struct.radix_node*
  store %struct.radix_node* %13, %struct.radix_node** %6, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %15 = icmp ne %struct.radix_node* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %18 = call i32 @R_Free(%struct.radix_node* %17)
  br label %19

19:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local i64 @rn_delete(%struct.radix_node*, i32*, %struct.radix_head*) #1

declare dso_local i32 @R_Free(%struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
