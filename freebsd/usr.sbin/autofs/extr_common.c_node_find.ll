; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @node_find(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.node*, %struct.node** %3, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.node*, %struct.node** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.node* @node_find_x(%struct.node* %12, i8* %13)
  store %struct.node* %14, %struct.node** %5, align 8
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = icmp ne %struct.node* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.node*, %struct.node** %5, align 8
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = icmp ne %struct.node* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %24
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.node* @node_find_x(%struct.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
