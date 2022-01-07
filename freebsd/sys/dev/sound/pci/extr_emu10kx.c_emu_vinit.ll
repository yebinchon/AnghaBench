; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_vinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i32 }
%struct.emu_voice = type { i32, i32, i32, %struct.emu_voice*, i32*, i32, i64, i64, i64, i64, i64 }
%struct.snd_dbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"vinit\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"emu_memalloc returns NULL in enu_vinit\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EMUPAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"emu_memstart returns (-1) in enu_vinit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_vinit(%struct.emu_sc_info* %0, %struct.emu_voice* %1, %struct.emu_voice* %2, i32 %3, %struct.snd_dbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.emu_sc_info*, align 8
  %8 = alloca %struct.emu_voice*, align 8
  %9 = alloca %struct.emu_voice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_dbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %7, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %8, align 8
  store %struct.emu_voice* %2, %struct.emu_voice** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.snd_dbuf* %4, %struct.snd_dbuf** %11, align 8
  %14 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %15 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %14, i32 0, i32 1
  %16 = load i32, i32* %10, align 4
  %17 = call i8* @emu_memalloc(i32* %15, i32 %16, i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %22 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %27 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %138

32:                                               ; preds = %5
  %33 = load %struct.snd_dbuf*, %struct.snd_dbuf** %11, align 8
  %34 = icmp ne %struct.snd_dbuf* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.snd_dbuf*, %struct.snd_dbuf** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sndbuf_setup(%struct.snd_dbuf* %36, i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %42 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %41, i32 0, i32 1
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @emu_memstart(i32* %42, i8* %43)
  %45 = load i32, i32* @EMUPAGESIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %48 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %50 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %40
  %54 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %55 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %60 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.emu_sc_info*, %struct.emu_sc_info** %7, align 8
  %65 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %64, i32 0, i32 1
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @emu_memfree(i32* %65, i8* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %6, align 4
  br label %138

69:                                               ; preds = %40
  %70 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %71 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %77 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %76, i32 0, i32 10
  store i64 %75, i64* %77, align 8
  %78 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %79 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %81 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %83 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %85 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %87 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %89 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %88, i32 0, i32 2
  store i32 255, i32* %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %92 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %96 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  %97 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %98 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %99 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %98, i32 0, i32 3
  store %struct.emu_voice* %97, %struct.emu_voice** %99, align 8
  %100 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %101 = icmp ne %struct.emu_voice* %100, null
  br i1 %101, label %102, label %137

102:                                              ; preds = %69
  %103 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %104 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %107 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %109 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %112 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %111, i32 0, i32 10
  store i64 %110, i64* %112, align 8
  %113 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %114 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %113, i32 0, i32 9
  store i64 0, i64* %114, align 8
  %115 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %116 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %115, i32 0, i32 8
  store i64 0, i64* %116, align 8
  %117 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %118 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %117, i32 0, i32 7
  store i64 0, i64* %118, align 8
  %119 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %120 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %119, i32 0, i32 6
  store i64 0, i64* %120, align 8
  %121 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %122 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %124 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %127 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %129 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %132 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %134 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  %135 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %136 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %135, i32 0, i32 3
  store %struct.emu_voice* null, %struct.emu_voice** %136, align 8
  br label %137

137:                                              ; preds = %102, %69
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %63, %30
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i8* @emu_memalloc(i32*, i32, i32*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sndbuf_setup(%struct.snd_dbuf*, i8*, i32) #1

declare dso_local i32 @emu_memstart(i32*, i8*) #1

declare dso_local i32 @emu_memfree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
