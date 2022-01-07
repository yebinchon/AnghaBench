; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_cq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_cq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_cq = type { %struct.TYPE_6__, %struct.oce_eq*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, %struct.oce_cq** }
%struct.oce_eq = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"CQ create failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.oce_cq* @oce_cq_create(%struct.TYPE_7__* %0, %struct.oce_eq* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.oce_cq*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.oce_eq*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.oce_cq*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store %struct.oce_eq* %1, %struct.oce_eq** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store %struct.oce_cq* null, %struct.oce_cq** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.oce_cq* @malloc(i32 48, i32 %20, i32 %23)
  store %struct.oce_cq* %24, %struct.oce_cq** %18, align 8
  %25 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %26 = icmp ne %struct.oce_cq* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  store %struct.oce_cq* null, %struct.oce_cq** %9, align 8
  br label %87

28:                                               ; preds = %8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @oce_create_ring_buffer(%struct.TYPE_7__* %29, i8* %30, i8* %31)
  %33 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %34 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %36 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %43 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %42, i32 0, i32 2
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  %44 = load %struct.oce_eq*, %struct.oce_eq** %11, align 8
  %45 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %46 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %45, i32 0, i32 1
  store %struct.oce_eq* %44, %struct.oce_eq** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %49 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %53 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %58 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @oce_mbox_cq_create(%struct.oce_cq* %60, i8* %61, i8* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %40
  br label %79

67:                                               ; preds = %40
  %68 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load %struct.oce_cq**, %struct.oce_cq*** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.oce_cq*, %struct.oce_cq** %71, i64 %76
  store %struct.oce_cq* %68, %struct.oce_cq** %77, align 8
  %78 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  store %struct.oce_cq* %78, %struct.oce_cq** %9, align 8
  br label %87

79:                                               ; preds = %66, %39
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = load %struct.oce_cq*, %struct.oce_cq** %18, align 8
  %86 = call i32 @oce_cq_del(%struct.TYPE_7__* %84, %struct.oce_cq* %85)
  store %struct.oce_cq* null, %struct.oce_cq** %9, align 8
  br label %87

87:                                               ; preds = %79, %67, %27
  %88 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  ret %struct.oce_cq* %88
}

declare dso_local %struct.oce_cq* @malloc(i32, i32, i32) #1

declare dso_local i32 @oce_create_ring_buffer(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @oce_mbox_cq_create(%struct.oce_cq*, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @oce_cq_del(%struct.TYPE_7__*, %struct.oce_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
