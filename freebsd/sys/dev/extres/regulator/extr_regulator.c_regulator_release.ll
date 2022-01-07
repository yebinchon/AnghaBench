; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.regnode* }
%struct.regnode = type { i64, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Attempt to access unreferenced regulator: %s\0A\00", align 1
@link = common dso_local global i32 0, align 4
@M_REGULATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_release(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.regnode*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.regnode*, %struct.regnode** %5, align 8
  store %struct.regnode* %6, %struct.regnode** %3, align 8
  %7 = load %struct.regnode*, %struct.regnode** %3, align 8
  %8 = getelementptr inbounds %struct.regnode, %struct.regnode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load %struct.regnode*, %struct.regnode** %3, align 8
  %13 = getelementptr inbounds %struct.regnode, %struct.regnode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %11, i8* %16)
  %18 = call i32 (...) @REG_TOPO_SLOCK()
  br label %19

19:                                               ; preds = %24, %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.regnode*, %struct.regnode** %3, align 8
  %26 = call i32 @regnode_disable(%struct.regnode* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load %struct.regnode*, %struct.regnode** %3, align 8
  %33 = call i32 @REGNODE_XLOCK(%struct.regnode* %32)
  %34 = load %struct.regnode*, %struct.regnode** %3, align 8
  %35 = getelementptr inbounds %struct.regnode, %struct.regnode* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load i32, i32* @link, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* %35, %struct.TYPE_5__* %36, i32 %37)
  %39 = load %struct.regnode*, %struct.regnode** %3, align 8
  %40 = getelementptr inbounds %struct.regnode, %struct.regnode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.regnode*, %struct.regnode** %3, align 8
  %44 = call i32 @REGNODE_UNLOCK(%struct.regnode* %43)
  %45 = call i32 (...) @REG_TOPO_UNLOCK()
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = load i32, i32* @M_REGULATOR, align 4
  %48 = call i32 @free(%struct.TYPE_5__* %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @REG_TOPO_SLOCK(...) #1

declare dso_local i32 @regnode_disable(%struct.regnode*) #1

declare dso_local i32 @REGNODE_XLOCK(%struct.regnode*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @REGNODE_UNLOCK(%struct.regnode*) #1

declare dso_local i32 @REG_TOPO_UNLOCK(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
