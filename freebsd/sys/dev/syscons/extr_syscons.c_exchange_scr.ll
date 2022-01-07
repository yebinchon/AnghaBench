; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_exchange_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_exchange_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_17__*, i32, %struct.TYPE_19__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@K_XLATE = common dso_local global i64 0, align 8
@VTB_FRAMEBUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@KDSKBMODE = common dso_local global i32 0, align 4
@LOCK_MASK = common dso_local global i32 0, align 4
@V_INFO_MM_DIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @exchange_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exchange_scr(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sc_move_cursor(%struct.TYPE_17__* %6, i32 %11, i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = call i64 @ISGRAPHSC(%struct.TYPE_17__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = call i32 @sc_remove_cursor_image(%struct.TYPE_17__* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @K_XLATE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = call i32 @save_kbd_state(%struct.TYPE_17__* %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 7
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %3, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %41
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = call i64 @ISUNKNOWNSC(%struct.TYPE_17__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %41
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @set_mode(%struct.TYPE_17__* %63)
  br label %83

65:                                               ; preds = %56
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 8
  %68 = load i32, i32* @VTB_FRAMEBUFFER, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @sc_vtb_init(i32* %67, i32 %68, i32 %71, i32 %74, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %65, %62
  %84 = load i32, i32* @MOUSE_HIDDEN, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sc_move_cursor(%struct.TYPE_17__* %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = call i64 @ISGRAPHSC(%struct.TYPE_17__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %83
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = call i32 @sc_set_cursor_image(%struct.TYPE_17__* %101)
  br label %103

103:                                              ; preds = %100, %83
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = call i64 @ISGRAPHSC(%struct.TYPE_17__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @vidd_load_palette(%struct.TYPE_19__* %112, i32 %115)
  br label %117

117:                                              ; preds = %109, %103
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sc_set_border(%struct.TYPE_17__* %118, i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %117
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %127
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @KDSKBMODE, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = ptrtoint i64* %143 to i32
  %145 = call i32 @kbdd_ioctl(i32 %140, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %137, %127, %117
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @LOCK_MASK, align 4
  %152 = call i32 @update_kbd_state(%struct.TYPE_17__* %147, i32 %150, i32 %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = call i32 @mark_all(%struct.TYPE_17__* %153)
  ret void
}

declare dso_local i32 @sc_move_cursor(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @ISGRAPHSC(%struct.TYPE_17__*) #1

declare dso_local i32 @sc_remove_cursor_image(%struct.TYPE_17__*) #1

declare dso_local i32 @save_kbd_state(%struct.TYPE_17__*) #1

declare dso_local i64 @ISUNKNOWNSC(%struct.TYPE_17__*) #1

declare dso_local i32 @set_mode(%struct.TYPE_17__*) #1

declare dso_local i32 @sc_vtb_init(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sc_set_cursor_image(%struct.TYPE_17__*) #1

declare dso_local i32 @vidd_load_palette(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sc_set_border(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @kbdd_ioctl(i32, i32, i32) #1

declare dso_local i32 @update_kbd_state(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mark_all(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
