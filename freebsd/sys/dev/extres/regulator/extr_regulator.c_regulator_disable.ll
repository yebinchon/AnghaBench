; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.regnode* }
%struct.regnode = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Attempt to access unreferenced regulator: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Attempt to disable already disabled regulator: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_disable(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.regnode*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.regnode*, %struct.regnode** %6, align 8
  store %struct.regnode* %7, %struct.regnode** %4, align 8
  %8 = load %struct.regnode*, %struct.regnode** %4, align 8
  %9 = getelementptr inbounds %struct.regnode, %struct.regnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.regnode*, %struct.regnode** %4, align 8
  %14 = getelementptr inbounds %struct.regnode, %struct.regnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %12, i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.regnode*, %struct.regnode** %4, align 8
  %25 = getelementptr inbounds %struct.regnode, %struct.regnode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %23, i8* %28)
  %30 = call i32 (...) @REG_TOPO_SLOCK()
  %31 = load %struct.regnode*, %struct.regnode** %4, align 8
  %32 = call i32 @regnode_disable(%struct.regnode* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %1
  %41 = call i32 (...) @REG_TOPO_UNLOCK()
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @REG_TOPO_SLOCK(...) #1

declare dso_local i32 @regnode_disable(%struct.regnode*) #1

declare dso_local i32 @REG_TOPO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
