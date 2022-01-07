; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_atkbd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32 (%struct.TYPE_14__*, i32, i32)* }
%struct.TYPE_15__ = type { i64, i32, i32 }

@KDSETLED = common dso_local global i32 0, align 4
@KDSETREPEAT = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @atkbd_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_intr(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i32 @KBD_HAS_DEVICE(%struct.TYPE_14__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @init_keyboard(i32 %19, i32* %21, i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @KBD_FOUND_DEVICE(%struct.TYPE_14__* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = load i32, i32* @KDSETLED, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @atkbd_ioctl(%struct.TYPE_14__* %28, i32 %29, i32 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @set_typematic(%struct.TYPE_14__* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32, i32* @KDSETREPEAT, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 @atkbd_ioctl(%struct.TYPE_14__* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %16, %2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %86

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_14__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i64 @KBD_IS_BUSY(%struct.TYPE_14__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(%struct.TYPE_14__* %68, i32 %69, i32 %73)
  br label %85

75:                                               ; preds = %59, %55
  br label %76

76:                                               ; preds = %80, %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @atkbd_read_char(%struct.TYPE_14__* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @NOKEY, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %76, label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %63
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %54
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @KBD_HAS_DEVICE(%struct.TYPE_14__*) #1

declare dso_local i32 @init_keyboard(i32, i32*, i32) #1

declare dso_local i32 @KBD_FOUND_DEVICE(%struct.TYPE_14__*) #1

declare dso_local i32 @atkbd_ioctl(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @set_typematic(%struct.TYPE_14__*) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_14__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_14__*) #1

declare dso_local i32 @atkbd_read_char(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
