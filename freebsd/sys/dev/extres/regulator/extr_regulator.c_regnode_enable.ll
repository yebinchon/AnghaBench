; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regnode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i64, %struct.regnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regnode_enable(%struct.regnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regnode* %0, %struct.regnode** %3, align 8
  %6 = call i32 (...) @REG_TOPO_ASSERT()
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = call i32 @regnode_resolve_parent(%struct.regnode* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.regnode*, %struct.regnode** %3, align 8
  %15 = getelementptr inbounds %struct.regnode, %struct.regnode* %14, i32 0, i32 1
  %16 = load %struct.regnode*, %struct.regnode** %15, align 8
  %17 = icmp ne %struct.regnode* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.regnode*, %struct.regnode** %3, align 8
  %20 = getelementptr inbounds %struct.regnode, %struct.regnode* %19, i32 0, i32 1
  %21 = load %struct.regnode*, %struct.regnode** %20, align 8
  %22 = call i32 @regnode_enable(%struct.regnode* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.regnode*, %struct.regnode** %3, align 8
  %30 = call i32 @REGNODE_XLOCK(%struct.regnode* %29)
  %31 = load %struct.regnode*, %struct.regnode** %3, align 8
  %32 = getelementptr inbounds %struct.regnode, %struct.regnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.regnode*, %struct.regnode** %3, align 8
  %37 = call i32 @REGNODE_ENABLE(%struct.regnode* %36, i32 1, i32* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.regnode*, %struct.regnode** %3, align 8
  %42 = call i32 @REGNODE_UNLOCK(%struct.regnode* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @regnode_delay(i32 %45)
  br label %47

47:                                               ; preds = %44, %28
  %48 = load %struct.regnode*, %struct.regnode** %3, align 8
  %49 = getelementptr inbounds %struct.regnode, %struct.regnode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.regnode*, %struct.regnode** %3, align 8
  %53 = call i32 @REGNODE_UNLOCK(%struct.regnode* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %40, %25, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @REG_TOPO_ASSERT(...) #1

declare dso_local i32 @regnode_resolve_parent(%struct.regnode*) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @REGNODE_ENABLE(%struct.regnode*, i32, i32*) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

declare dso_local i32 @regnode_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
