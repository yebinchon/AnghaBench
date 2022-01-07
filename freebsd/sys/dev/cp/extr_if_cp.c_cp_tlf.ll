; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_tlf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_tlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sppp = type { i32, i32 (%struct.sppp*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [8 x i8] c"cp_tlf\0A\00", align 1
@PP_FR = common dso_local global i32 0, align 4
@PP_CISCO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sppp*)* @cp_tlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_tlf(%struct.sppp* %0) #0 {
  %2 = alloca %struct.sppp*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.sppp* %0, %struct.sppp** %2, align 8
  %4 = load %struct.sppp*, %struct.sppp** %2, align 8
  %5 = call %struct.TYPE_7__* @SP2IFP(%struct.sppp* %4)
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @CP_DEBUG2(%struct.TYPE_6__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.sppp*, %struct.sppp** %2, align 8
  %11 = getelementptr inbounds %struct.sppp, %struct.sppp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PP_FR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PP_CISCO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.sppp*, %struct.sppp** %2, align 8
  %27 = getelementptr inbounds %struct.sppp, %struct.sppp* %26, i32 0, i32 1
  %28 = load i32 (%struct.sppp*)*, i32 (%struct.sppp*)** %27, align 8
  %29 = load %struct.sppp*, %struct.sppp** %2, align 8
  %30 = call i32 %28(%struct.sppp* %29)
  br label %31

31:                                               ; preds = %25, %16, %1
  ret void
}

declare dso_local %struct.TYPE_7__* @SP2IFP(%struct.sppp*) #1

declare dso_local i32 @CP_DEBUG2(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
