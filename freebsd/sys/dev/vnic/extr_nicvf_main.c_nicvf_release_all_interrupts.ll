; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_release_all_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_release_all_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.resource*, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ERROR: Unable to teardown interrupt %d\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_release_all_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_release_all_interrupts(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %92, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %9 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %95

12:                                               ; preds = %6
  %13 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %20, %struct.resource** %3, align 8
  %21 = load %struct.resource*, %struct.resource** %3, align 8
  %22 = icmp eq %struct.resource* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %92

24:                                               ; preds = %12
  %25 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %24
  %35 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %44, align 8
  %46 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %47 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_teardown_intr(i32 %37, %struct.resource* %45, i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @KASSERT(i32 %57, i8* %60)
  %62 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %63 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %34, %24
  %70 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %71 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SYS_RES_IRQ, align 4
  %74 = load %struct.resource*, %struct.resource** %3, align 8
  %75 = call i32 @rman_get_rid(%struct.resource* %74)
  %76 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %77 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  %84 = call i32 @bus_release_resource(i32 %72, i32 %73, i32 %75, %struct.resource* %83)
  %85 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %86 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store %struct.resource* null, %struct.resource** %91, align 8
  br label %92

92:                                               ; preds = %69, %23
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %6

95:                                               ; preds = %6
  %96 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %97 = call i32 @nicvf_disable_msix(%struct.nicvf* %96)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

declare dso_local i32 @nicvf_disable_msix(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
