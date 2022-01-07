; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i32, i32, %struct.regnode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REGULATOR_FLAGS_NOT_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_disable(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %6 = call i32 (...) @REG_TOPO_ASSERT()
  store i32 0, i32* %5, align 4
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = call i32 @REGNODE_XLOCK(%struct.regnode* %7)
  %9 = load %struct.regnode*, %struct.regnode** %3, align 8
  %10 = getelementptr inbounds %struct.regnode, %struct.regnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.regnode*, %struct.regnode** %3, align 8
  %15 = getelementptr inbounds %struct.regnode, %struct.regnode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REGULATOR_FLAGS_NOT_DISABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load %struct.regnode*, %struct.regnode** %3, align 8
  %22 = getelementptr inbounds %struct.regnode, %struct.regnode* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.regnode*, %struct.regnode** %3, align 8
  %28 = call i32 @REGNODE_ENABLE(%struct.regnode* %27, i32 0, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.regnode*, %struct.regnode** %3, align 8
  %33 = call i32 @REGNODE_UNLOCK(%struct.regnode* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @regnode_delay(i32 %36)
  br label %38

38:                                               ; preds = %35, %20, %13, %1
  %39 = load %struct.regnode*, %struct.regnode** %3, align 8
  %40 = getelementptr inbounds %struct.regnode, %struct.regnode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.regnode*, %struct.regnode** %3, align 8
  %44 = call i32 @REGNODE_UNLOCK(%struct.regnode* %43)
  %45 = load %struct.regnode*, %struct.regnode** %3, align 8
  %46 = call i32 @regnode_resolve_parent(%struct.regnode* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %38
  %52 = load %struct.regnode*, %struct.regnode** %3, align 8
  %53 = getelementptr inbounds %struct.regnode, %struct.regnode* %52, i32 0, i32 2
  %54 = load %struct.regnode*, %struct.regnode** %53, align 8
  %55 = icmp ne %struct.regnode* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.regnode*, %struct.regnode** %3, align 8
  %58 = getelementptr inbounds %struct.regnode, %struct.regnode* %57, i32 0, i32 2
  %59 = load %struct.regnode*, %struct.regnode** %58, align 8
  %60 = call i32 @regnode_disable(%struct.regnode* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %49, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @REG_TOPO_ASSERT(...) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @REGNODE_ENABLE(%struct.regnode*, i32, i32*) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

declare dso_local i32 @regnode_delay(i32) #1

declare dso_local i32 @regnode_resolve_parent(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
