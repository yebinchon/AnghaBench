; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_options_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_options_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.node*, i8*)* @node_options_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @node_options_x(%struct.node* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %3, align 8
  br label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @concat(i8* %12, i8 signext 44, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load %struct.node*, %struct.node** %4, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @node_options_x(%struct.node* %21, i8* %22)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %11, %9
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local i8* @concat(i8*, i8 signext, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
