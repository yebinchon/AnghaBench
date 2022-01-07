; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_release_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_release_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32, i32, i64, i64, %struct.TYPE_7__*, i32*, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.mfi_frame_header }
%struct.mfi_frame_header = type { i64 }
%struct.TYPE_8__ = type { i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_ON_MFIQ_BUSY = common dso_local global i32 0, align 4
@MFI_ON_MFIQ_READY = common dso_local global i32 0, align 4
@MFI_ON_MFIQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Command %p is still on another queue, flags = %#x\00", align 1
@MFI_CMD_TBOLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_release_command(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.mfi_frame_header*, align 8
  %4 = alloca i64*, align 8
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  %5 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %6 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %5, i32 0, i32 9
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %12 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %11, i32 0, i32 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.mfi_frame_header* %14, %struct.mfi_frame_header** %3, align 8
  %15 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %16 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %3, align 8
  %21 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %26 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %33 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %24, %19, %1
  %40 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %41 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MFI_ON_MFIQ_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %48 = call i32 @mfi_remove_busy(%struct.mfi_command* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %51 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MFI_ON_MFIQ_READY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %58 = call i32 @mfi_remove_ready(%struct.mfi_command* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %61 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MFI_ON_MFIQ_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %68 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %69 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.mfi_command* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %74 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MFI_CMD_TBOLT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %81 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %80, i32 0, i32 9
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %84 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %83, i32 0, i32 9
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %89 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %96 = call i32 @mfi_tbolt_return_cmd(%struct.TYPE_8__* %82, i32 %94, %struct.mfi_command* %95)
  br label %97

97:                                               ; preds = %79, %72
  %98 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %99 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %98, i32 0, i32 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = bitcast %struct.TYPE_6__* %100 to i64*
  store i64* %101, i64** %4, align 8
  %102 = load i64*, i64** %4, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 0, i64* %103, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 0, i64* %105, align 8
  %106 = load i64*, i64** %4, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 4
  store i64 0, i64* %107, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 5
  store i64 0, i64* %109, align 8
  %110 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %111 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %113 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %115 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %114, i32 0, i32 7
  store i32* null, i32** %115, align 8
  %116 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %117 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %119 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %118, i32 0, i32 5
  store i32* null, i32** %119, align 8
  %120 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %121 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %120, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %121, align 8
  %122 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %123 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %125 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %127 = call i32 @mfi_enqueue_free(%struct.mfi_command* %126)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mfi_remove_busy(%struct.mfi_command*) #1

declare dso_local i32 @mfi_remove_ready(%struct.mfi_command*) #1

declare dso_local i32 @panic(i8*, %struct.mfi_command*, i32) #1

declare dso_local i32 @mfi_tbolt_return_cmd(%struct.TYPE_8__*, i32, %struct.mfi_command*) #1

declare dso_local i32 @mfi_enqueue_free(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
