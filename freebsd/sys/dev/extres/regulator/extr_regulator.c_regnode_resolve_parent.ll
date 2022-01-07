; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_resolve_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_resolve_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regnode*)* @regnode_resolve_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regnode_resolve_parent(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %4 = load %struct.regnode*, %struct.regnode** %3, align 8
  %5 = getelementptr inbounds %struct.regnode, %struct.regnode* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.regnode*, %struct.regnode** %3, align 8
  %10 = getelementptr inbounds %struct.regnode, %struct.regnode* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load %struct.regnode*, %struct.regnode** %3, align 8
  %16 = getelementptr inbounds %struct.regnode, %struct.regnode* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32* @regnode_find_by_name(i32* %17)
  %19 = load %struct.regnode*, %struct.regnode** %3, align 8
  %20 = getelementptr inbounds %struct.regnode, %struct.regnode* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.regnode*, %struct.regnode** %3, align 8
  %22 = getelementptr inbounds %struct.regnode, %struct.regnode* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @ENODEV, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32* @regnode_find_by_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
