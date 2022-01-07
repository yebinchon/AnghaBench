; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_susp_initialize_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_susp_initialize_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.ISO_SUSP_ATTRIBUTES = type { i32 }

@CD9660_TYPE_DOT = common dso_local global i32 0, align 4
@SUSP_TYPE_SUSP = common dso_local global i32 0, align 4
@SUSP_ENTRY_SUSP_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@SUSP_LOC_DOT = common dso_local global i32 0, align 4
@rr_ll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cd9660_susp_initialize_node(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CD9660_TYPE_DOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load i32, i32* @SUSP_TYPE_SUSP, align 4
  %22 = load i32, i32* @SUSP_ENTRY_SUSP_SP, align 4
  %23 = load i32, i32* @SUSP_LOC_DOT, align 4
  %24 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %21, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.ISO_SUSP_ATTRIBUTES* %24, %struct.ISO_SUSP_ATTRIBUTES** %5, align 8
  %25 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @cd9660_susp_sp(%struct.ISO_SUSP_ATTRIBUTES* %25, %struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %5, align 8
  %31 = load i32, i32* @rr_ll, align 4
  %32 = call i32 @TAILQ_INSERT_HEAD(i32* %29, %struct.ISO_SUSP_ATTRIBUTES* %30, i32 %31)
  br label %33

33:                                               ; preds = %20, %12
  br label %34

34:                                               ; preds = %33, %2
  ret i32 1
}

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32, i32, i8*, i32) #1

declare dso_local i32 @cd9660_susp_sp(%struct.ISO_SUSP_ATTRIBUTES*, %struct.TYPE_7__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ISO_SUSP_ATTRIBUTES*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
