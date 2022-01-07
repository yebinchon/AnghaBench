; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_map_tbolt_cmd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_map_tbolt_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_tbolt_cmd_status(%struct.mfi_command* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mfi_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mfi_command* %0, %struct.mfi_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %77 [
    i32 130, label %8
    i32 128, label %22
    i32 132, label %22
    i32 129, label %49
    i32 131, label %63
    i32 133, label %63
  ]

8:                                                ; preds = %3
  %9 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %10 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 130, i32* %13, align 4
  %14 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %15 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 130, i32* %19, align 4
  %20 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %21 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %20, i32 0, i32 0
  store i32 130, i32* %21, align 8
  br label %91

22:                                               ; preds = %3, %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %31 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %35, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %44 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %42, i32* %48, align 4
  br label %91

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %52 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %58 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  br label %91

63:                                               ; preds = %3, %3
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %66 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %72 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 4
  br label %91

77:                                               ; preds = %3
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %80 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %86 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %77, %63, %49, %22, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
