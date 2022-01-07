; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_eq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_eq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_eq = type { i32, %struct.TYPE_6__, i32, i8* }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.oce_eq* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.oce_eq* (%struct.TYPE_8__*, i8*, i8*, i8*, i8*)* @oce_eq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oce_eq* @oce_eq_create(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.oce_eq*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.oce_eq*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.oce_eq* @malloc(i32 48, i32 %14, i32 %17)
  store %struct.oce_eq* %18, %struct.oce_eq** %12, align 8
  %19 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %20 = icmp eq %struct.oce_eq* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.oce_eq* null, %struct.oce_eq** %6, align 8
  br label %75

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = bitcast %struct.TYPE_8__* %23 to i8*
  %25 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %26 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %28 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %27, i32 0, i32 0
  store i32 65535, i32* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @oce_create_ring_buffer(%struct.TYPE_8__* %29, i8* %30, i8* %31)
  %33 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %34 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %36 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %22
  br label %72

40:                                               ; preds = %22
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %43 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %47 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %52 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %55 = call i32 @oce_mbox_create_eq(%struct.oce_eq* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %72

59:                                               ; preds = %40
  %60 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store %struct.oce_eq* %60, %struct.oce_eq** %70, align 8
  %71 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  store %struct.oce_eq* %71, %struct.oce_eq** %6, align 8
  br label %75

72:                                               ; preds = %58, %39
  %73 = load %struct.oce_eq*, %struct.oce_eq** %12, align 8
  %74 = call i32 @oce_eq_del(%struct.oce_eq* %73)
  store %struct.oce_eq* null, %struct.oce_eq** %6, align 8
  br label %75

75:                                               ; preds = %72, %59, %21
  %76 = load %struct.oce_eq*, %struct.oce_eq** %6, align 8
  ret %struct.oce_eq* %76
}

declare dso_local %struct.oce_eq* @malloc(i32, i32, i32) #1

declare dso_local i32 @oce_create_ring_buffer(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @oce_mbox_create_eq(%struct.oce_eq*) #1

declare dso_local i32 @oce_eq_del(%struct.oce_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
