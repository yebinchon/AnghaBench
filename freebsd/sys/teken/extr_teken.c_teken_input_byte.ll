; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_input_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_input_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8 }

@TS_8BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got UTF-8 char %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8)* @teken_input_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_input_byte(%struct.TYPE_4__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TS_8BIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9, %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = load i8, i8* %4, align 1
  %21 = call i32 @teken_input_char(%struct.TYPE_4__* %19, i8 zeroext %20)
  br label %112

22:                                               ; preds = %9
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 224
  %26 = icmp eq i32 %25, 192
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 31
  %33 = trunc i32 %32 to i8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i8 %33, i8* %35, align 4
  br label %111

36:                                               ; preds = %22
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = icmp eq i32 %39, 224
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 2, i32* %43, align 4
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 15
  %47 = trunc i32 %46 to i8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8 %47, i8* %49, align 4
  br label %110

50:                                               ; preds = %36
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 248
  %54 = icmp eq i32 %53, 240
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 3, i32* %57, align 4
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 7
  %61 = trunc i32 %60 to i8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8 %61, i8* %63, align 4
  br label %109

64:                                               ; preds = %50
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 192
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %108

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %112

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 4
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 6
  %85 = load i8, i8* %4, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 63
  %88 = or i32 %84, %87
  %89 = trunc i32 %88 to i8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8 %89, i8* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %75
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = call i32 @teken_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 4
  %106 = call i32 @teken_input_char(%struct.TYPE_4__* %102, i8 zeroext %105)
  br label %107

107:                                              ; preds = %96, %75
  br label %108

108:                                              ; preds = %107, %64
  br label %109

109:                                              ; preds = %108, %55
  br label %110

110:                                              ; preds = %109, %41
  br label %111

111:                                              ; preds = %110, %27
  br label %112

112:                                              ; preds = %74, %111, %16
  ret void
}

declare dso_local i32 @teken_input_char(%struct.TYPE_4__*, i8 zeroext) #1

declare dso_local i32 @teken_printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
