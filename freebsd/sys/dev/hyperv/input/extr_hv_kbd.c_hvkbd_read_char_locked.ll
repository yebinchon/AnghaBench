; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbd.c_hvkbd_read_char_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbd.c_hvkbd_read_char_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@NOKEY = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i64 0, align 8
@IS_E0 = common dso_local global i32 0, align 4
@IS_E1 = common dso_local global i32 0, align 4
@XTKBD_EMUL0 = common dso_local global i32 0, align 4
@XTKBD_EMUL1 = common dso_local global i32 0, align 4
@IS_UNICODE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unsupported unicode\0A\00", align 1
@IS_BREAK = common dso_local global i32 0, align 4
@XTKBD_RELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"read scan: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @hvkbd_read_char_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvkbd_read_char_locked(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @NOKEY, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %8, align 8
  %13 = call i32 (...) @HVKBD_LOCK_ASSERT()
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_14__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = call i32 @hv_kbd_prod_is_ready(%struct.TYPE_15__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @NOKEY, align 4
  store i32 %22, i32* %3, align 4
  br label %133

23:                                               ; preds = %17
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @K_RAW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = call i64 @hv_kbd_fetch_top(%struct.TYPE_15__* %30, %struct.TYPE_13__* %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @NOKEY, align 4
  store i32 %34, i32* %3, align 4
  br label %133

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IS_E0, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IS_E1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IS_E0, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @XTKBD_EMUL0, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @IS_E0, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %74

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IS_E1, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @XTKBD_EMUL1, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @IS_E1, align 4
  %69 = xor i32 %68, -1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = call i32 @hv_kbd_modify_top(%struct.TYPE_15__* %75, %struct.TYPE_13__* %7)
  br label %111

77:                                               ; preds = %41
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IS_UNICODE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i64, i64* @bootverbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = call i32 @hv_kbd_remove_top(%struct.TYPE_15__* %92)
  %94 = load i32, i32* @NOKEY, align 4
  store i32 %94, i32* %3, align 4
  br label %133

95:                                               ; preds = %77
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IS_BREAK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @XTKBD_RELEASE, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = call i32 @hv_kbd_remove_top(%struct.TYPE_15__* %108)
  br label %110

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %74
  br label %124

112:                                              ; preds = %23
  %113 = load i64, i64* @bootverbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %115, %112
  br label %124

124:                                              ; preds = %123, %111
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @DEBUG_HVKBD(%struct.TYPE_14__* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %124, %91, %33, %21
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @HVKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_14__*) #1

declare dso_local i32 @hv_kbd_prod_is_ready(%struct.TYPE_15__*) #1

declare dso_local i64 @hv_kbd_fetch_top(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @hv_kbd_modify_top(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hv_kbd_remove_top(%struct.TYPE_15__*) #1

declare dso_local i32 @DEBUG_HVKBD(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
