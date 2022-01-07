; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_path_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_node_path_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i8*, %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.node*, i8*)* @node_path_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @node_path_x(%struct.node* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %3, align 8
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = call i64 @node_is_direct_key(%struct.node* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %3, align 8
  br label %47

25:                                               ; preds = %17, %13
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.node*, %struct.node** %4, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @concat(i8* %37, i8 signext 47, i8* %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load %struct.node*, %struct.node** %4, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load %struct.node*, %struct.node** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @node_path_x(%struct.node* %44, i8* %45)
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %25, %23, %11
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i64 @node_is_direct_key(%struct.node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @concat(i8*, i8 signext, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
