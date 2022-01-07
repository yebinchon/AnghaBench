; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_new_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* ()* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @new_node() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = call %struct.node* @calloc(i32 1, i32 24)
  store %struct.node* %2, %struct.node** %1, align 8
  %3 = call i8* (...) @sbuf_new_auto()
  %4 = load %struct.node*, %struct.node** %1, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  store i8* %3, i8** %5, align 8
  %6 = load %struct.node*, %struct.node** %1, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @sbuf_clear(i8* %8)
  %10 = call i8* (...) @sbuf_new_auto()
  %11 = load %struct.node*, %struct.node** %1, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.node*, %struct.node** %1, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sbuf_clear(i8* %15)
  %17 = load %struct.node*, %struct.node** %1, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = call i32 @LIST_INIT(i32* %18)
  %20 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %20
}

declare dso_local %struct.node* @calloc(i32, i32) #1

declare dso_local i8* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_clear(i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
