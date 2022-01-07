; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_capability.c_cap_rights_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_capability.c_cap_rights_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@CAP_RIGHTS_VERSION_00 = common dso_local global i64 0, align 8
@CAPARSIZE_MIN = common dso_local global i32 0, align 4
@CAPARSIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @cap_rights_remove(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i64 @CAPVER(%struct.TYPE_8__* %7)
  %9 = load i64, i64* @CAP_RIGHTS_VERSION_00, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i64 @CAPVER(%struct.TYPE_8__* %13)
  %15 = load i64, i64* @CAP_RIGHTS_VERSION_00, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i64 @CAPVER(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i64 @CAPVER(%struct.TYPE_8__* %21)
  %23 = icmp eq i64 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @cap_rights_is_valid(%struct.TYPE_8__* %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @cap_rights_is_valid(%struct.TYPE_8__* %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = call i32 @CAPARSIZE(%struct.TYPE_8__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CAPARSIZE_MIN, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CAPARSIZE_MAX, align 4
  %40 = icmp ule i32 %38, %39
  br label %41

41:                                               ; preds = %37, %2
  %42 = phi i1 [ false, %2 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %70, %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, 144115188075855871
  %59 = xor i64 %58, -1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, %59
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = call i32 @cap_rights_is_valid(%struct.TYPE_8__* %74)
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = call i32 @cap_rights_is_valid(%struct.TYPE_8__* %77)
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CAPVER(%struct.TYPE_8__*) #1

declare dso_local i32 @cap_rights_is_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @CAPARSIZE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
