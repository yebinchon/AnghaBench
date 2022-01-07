; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_get_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { %struct.regnode* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_get_voltage(%struct.regnode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 (...) @REG_TOPO_ASSERT()
  %8 = load %struct.regnode*, %struct.regnode** %4, align 8
  %9 = call i32 @REGNODE_XLOCK(%struct.regnode* %8)
  %10 = load %struct.regnode*, %struct.regnode** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @REGNODE_GET_VOLTAGE(%struct.regnode* %10, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.regnode*, %struct.regnode** %4, align 8
  %14 = call i32 @REGNODE_UNLOCK(%struct.regnode* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.regnode*, %struct.regnode** %4, align 8
  %20 = call i32 @regnode_resolve_parent(%struct.regnode* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.regnode*, %struct.regnode** %4, align 8
  %27 = getelementptr inbounds %struct.regnode, %struct.regnode* %26, i32 0, i32 0
  %28 = load %struct.regnode*, %struct.regnode** %27, align 8
  %29 = icmp ne %struct.regnode* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.regnode*, %struct.regnode** %4, align 8
  %32 = getelementptr inbounds %struct.regnode, %struct.regnode* %31, i32 0, i32 0
  %33 = load %struct.regnode*, %struct.regnode** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @regnode_get_voltage(%struct.regnode* %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @REG_TOPO_ASSERT(...) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @REGNODE_GET_VOLTAGE(%struct.regnode*, i32*) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

declare dso_local i32 @regnode_resolve_parent(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
