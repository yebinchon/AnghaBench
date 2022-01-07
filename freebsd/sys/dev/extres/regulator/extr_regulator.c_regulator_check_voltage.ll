; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_check_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/regulator/extr_regulator.c_regulator_check_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.regnode* }
%struct.regnode = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Attempt to access unreferenced regulator: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_check_voltage(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regnode*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.regnode*, %struct.regnode** %8, align 8
  store %struct.regnode* %9, %struct.regnode** %6, align 8
  %10 = load %struct.regnode*, %struct.regnode** %6, align 8
  %11 = getelementptr inbounds %struct.regnode, %struct.regnode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.regnode*, %struct.regnode** %6, align 8
  %16 = getelementptr inbounds %struct.regnode, %struct.regnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %14, i8* %19)
  %21 = call i32 (...) @REG_TOPO_SLOCK()
  %22 = load %struct.regnode*, %struct.regnode** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REGNODE_CHECK_VOLTAGE(%struct.regnode* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = call i32 (...) @REG_TOPO_UNLOCK()
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @REG_TOPO_SLOCK(...) #1

declare dso_local i32 @REGNODE_CHECK_VOLTAGE(%struct.regnode*, i32) #1

declare dso_local i32 @REG_TOPO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
