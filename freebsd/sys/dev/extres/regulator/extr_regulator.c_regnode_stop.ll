; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i64, i32, %struct.regnode* }

@EBUSY = common dso_local global i32 0, align 4
@REGULATOR_FLAGS_NOT_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_stop(%struct.regnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @REG_TOPO_ASSERT()
  store i32 0, i32* %7, align 4
  %9 = load %struct.regnode*, %struct.regnode** %4, align 8
  %10 = call i32 @REGNODE_XLOCK(%struct.regnode* %9)
  %11 = load %struct.regnode*, %struct.regnode** %4, align 8
  %12 = getelementptr inbounds %struct.regnode, %struct.regnode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.regnode*, %struct.regnode** %4, align 8
  %20 = call i32 @REGNODE_UNLOCK(%struct.regnode* %19)
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %15, %2
  %23 = load %struct.regnode*, %struct.regnode** %4, align 8
  %24 = getelementptr inbounds %struct.regnode, %struct.regnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.regnode*, %struct.regnode** %4, align 8
  %29 = getelementptr inbounds %struct.regnode, %struct.regnode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REGULATOR_FLAGS_NOT_DISABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.regnode*, %struct.regnode** %4, align 8
  %36 = call i32 @REGNODE_STOP(%struct.regnode* %35, i32* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.regnode*, %struct.regnode** %4, align 8
  %41 = call i32 @REGNODE_UNLOCK(%struct.regnode* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @regnode_delay(i32 %44)
  br label %46

46:                                               ; preds = %43, %27, %22
  %47 = load %struct.regnode*, %struct.regnode** %4, align 8
  %48 = call i32 @REGNODE_UNLOCK(%struct.regnode* %47)
  %49 = load %struct.regnode*, %struct.regnode** %4, align 8
  %50 = call i32 @regnode_resolve_parent(%struct.regnode* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %76

55:                                               ; preds = %46
  %56 = load %struct.regnode*, %struct.regnode** %4, align 8
  %57 = getelementptr inbounds %struct.regnode, %struct.regnode* %56, i32 0, i32 2
  %58 = load %struct.regnode*, %struct.regnode** %57, align 8
  %59 = icmp ne %struct.regnode* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.regnode*, %struct.regnode** %4, align 8
  %62 = getelementptr inbounds %struct.regnode, %struct.regnode* %61, i32 0, i32 2
  %63 = load %struct.regnode*, %struct.regnode** %62, align 8
  %64 = getelementptr inbounds %struct.regnode, %struct.regnode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.regnode*, %struct.regnode** %4, align 8
  %69 = getelementptr inbounds %struct.regnode, %struct.regnode* %68, i32 0, i32 2
  %70 = load %struct.regnode*, %struct.regnode** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @regnode_stop(%struct.regnode* %70, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %60, %55
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %53, %39, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @REG_TOPO_ASSERT(...) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

declare dso_local i32 @REGNODE_STOP(%struct.regnode*, i32*) #1

declare dso_local i32 @regnode_delay(i32) #1

declare dso_local i32 @regnode_resolve_parent(%struct.regnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
