; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_map_command_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_map_command_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.mly_command = type { i32, %struct.TYPE_8__*, %struct.mly_softc* }
%struct.TYPE_8__ = type { %struct.mly_command_generic }
%struct.mly_command_generic = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32*, i64* }
%struct.TYPE_9__ = type { %struct.mly_sg_entry* }
%struct.mly_sg_entry = type { i32, i32 }
%struct.mly_softc = type { i64, %struct.mly_sg_entry* }

@MLY_SLOT_START = common dso_local global i32 0, align 4
@MLY_MAX_SGENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_13__*, i32, i32)* @mly_map_command_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_map_command_sg(i8* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mly_command*, align 8
  %10 = alloca %struct.mly_softc*, align 8
  %11 = alloca %struct.mly_command_generic*, align 8
  %12 = alloca %struct.mly_sg_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mly_command*
  store %struct.mly_command* %16, %struct.mly_command** %9, align 8
  %17 = load %struct.mly_command*, %struct.mly_command** %9, align 8
  %18 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %17, i32 0, i32 2
  %19 = load %struct.mly_softc*, %struct.mly_softc** %18, align 8
  store %struct.mly_softc* %19, %struct.mly_softc** %10, align 8
  %20 = load %struct.mly_command*, %struct.mly_command** %9, align 8
  %21 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.mly_command_generic* %23, %struct.mly_command_generic** %11, align 8
  %24 = call i32 @debug_called(i32 2)
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.mly_command_generic*, %struct.mly_command_generic** %11, align 8
  %29 = getelementptr inbounds %struct.mly_command_generic, %struct.mly_command_generic* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.mly_sg_entry*, %struct.mly_sg_entry** %31, align 8
  %33 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %32, i64 0
  store %struct.mly_sg_entry* %33, %struct.mly_sg_entry** %12, align 8
  %34 = load %struct.mly_command_generic*, %struct.mly_command_generic** %11, align 8
  %35 = getelementptr inbounds %struct.mly_command_generic, %struct.mly_command_generic* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %74

37:                                               ; preds = %4
  %38 = load %struct.mly_command*, %struct.mly_command** %9, align 8
  %39 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLY_SLOT_START, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* @MLY_MAX_SGENTRIES, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load %struct.mly_softc*, %struct.mly_softc** %10, align 8
  %46 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %45, i32 0, i32 1
  %47 = load %struct.mly_sg_entry*, %struct.mly_sg_entry** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %47, i64 %49
  store %struct.mly_sg_entry* %50, %struct.mly_sg_entry** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mly_command_generic*, %struct.mly_command_generic** %11, align 8
  %53 = getelementptr inbounds %struct.mly_command_generic, %struct.mly_command_generic* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.mly_softc*, %struct.mly_softc** %10, align 8
  %59 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = add i64 %60, %63
  %65 = load %struct.mly_command_generic*, %struct.mly_command_generic** %11, align 8
  %66 = getelementptr inbounds %struct.mly_command_generic, %struct.mly_command_generic* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 %64, i64* %70, align 8
  %71 = load %struct.mly_command_generic*, %struct.mly_command_generic** %11, align 8
  %72 = getelementptr inbounds %struct.mly_command_generic, %struct.mly_command_generic* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %37, %27
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %102, %74
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mly_sg_entry*, %struct.mly_sg_entry** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %86, i64 %88
  %90 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mly_sg_entry*, %struct.mly_sg_entry** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %97, i64 %99
  %101 = getelementptr inbounds %struct.mly_sg_entry, %struct.mly_sg_entry* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %75

105:                                              ; preds = %75
  ret void
}

declare dso_local i32 @debug_called(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
