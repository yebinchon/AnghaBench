; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbrelvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbrelvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"pbrelvp: NULL\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pbrelvp: NULL bufobj\00", align 1
@BX_VNDIRTY = common dso_local global i32 0, align 4
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"pbrelvp: pager buf on vnode list.\00", align 1
@B_PAGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbrelvp(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load %struct.buf*, %struct.buf** %2, align 8
  %4 = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.buf*, %struct.buf** %2, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.buf*, %struct.buf** %2, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BX_VNDIRTY, align 4
  %19 = load i32, i32* @BX_VNCLEAN, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.buf*, %struct.buf** %2, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.buf*, %struct.buf** %2, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @B_PAGING, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
